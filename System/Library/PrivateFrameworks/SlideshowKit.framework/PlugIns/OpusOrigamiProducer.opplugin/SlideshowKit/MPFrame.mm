@interface MPFrame
+ (MPFrame)frameWithFrameID:(id)d;
- (MPFrame)init;
- (MPFrame)initWithFrameID:(id)d;
- (NSString)presetID;
- (id)copyWithZone:(_NSZone *)zone;
- (id)frameAttributeForKey:(id)key;
- (id)frameAttributes;
- (id)parentDocument;
- (void)copyStruct:(id)struct;
- (void)dealloc;
- (void)setFrameAttribute:(id)attribute forKey:(id)key;
- (void)setFrameID:(id)d;
- (void)setParentSlide:(id)slide;
- (void)setPresetID:(id)d;
@end

@implementation MPFrame

+ (MPFrame)frameWithFrameID:(id)d
{
  v3 = [[self alloc] initWithFrameID:d];

  return v3;
}

- (MPFrame)initWithFrameID:(id)d
{
  v4 = [(MPFrame *)self init];
  v5 = v4;
  if (v4)
  {
    [(MPFrameInternal *)v4->_internal setFrameID:d];
    [(MPFrameInternal *)v5->_internal setPresetID:@"Default"];
  }

  return v5;
}

- (MPFrame)init
{
  v5.receiver = self;
  v5.super_class = MPFrame;
  v2 = [(MPFrame *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(MPFrameInternal);
    v2->_internal = v3;
    [(MPFrameInternal *)v3 setFrameID:0];
    [(MPFrameInternal *)v2->_internal setPresetID:0];
    v2->_attributes = 0;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 copyStruct:self->_internal];
  return v4;
}

- (void)dealloc
{
  self->_internal = 0;

  v3.receiver = self;
  v3.super_class = MPFrame;
  [(MPFrame *)&v3 dealloc];
}

- (void)setFrameID:(id)d
{
  [(MPFrameInternal *)self->_internal setFrameID:?];
  [(MPFrame *)self setPresetID:@"Default"];
  parentSlide = self->_parentSlide;
  if (parentSlide && [(MPSlide *)parentSlide slide])
  {
    slide = [(MPSlide *)self->_parentSlide slide];

    [slide setFrameID:d];
  }
}

- (NSString)presetID
{
  result = [(MPFrameInternal *)self->_internal presetID];
  if (!result)
  {
    return @"Default";
  }

  return result;
}

- (void)setPresetID:(id)d
{
  [(MPFrameInternal *)self->_internal setPresetID:?];
  [(NSMutableDictionary *)self->_attributes removeObjectForKey:@"frameAttributes"];
  parentSlide = self->_parentSlide;
  if (parentSlide && [(MPSlide *)parentSlide slide])
  {
    [-[MPSlide slide](self->_parentSlide "slide")];
    slide = [(MPSlide *)self->_parentSlide slide];
    v7 = +[NSDictionary dictionary];

    [slide setFrameAttribute:v7 forKey:@"specificAttributes"];
  }
}

- (id)frameAttributes
{
  result = self->_attributes;
  if (!result)
  {
    v4 = +[MPFrameManager sharedManager];
    frameID = [(MPFrame *)self frameID];
    presetID = [(MPFrame *)self presetID];

    return [v4 attributesForFrameID:frameID andPresetID:presetID];
  }

  return result;
}

- (id)frameAttributeForKey:(id)key
{
  frameAttributes = [(MPFrame *)self frameAttributes];

  return [frameAttributes objectForKey:key];
}

- (void)setFrameAttribute:(id)attribute forKey:(id)key
{
  attributes = self->_attributes;
  if (!attributes)
  {
    attributes = [objc_msgSend(+[MPFrameManager sharedManager](MPFrameManager "sharedManager")];
    self->_attributes = attributes;
    if (attribute)
    {
      goto LABEL_3;
    }

LABEL_5:
    [(NSMutableDictionary *)attributes removeObjectForKey:key];
    goto LABEL_6;
  }

  if (!attribute)
  {
    goto LABEL_5;
  }

LABEL_3:
  [(NSMutableDictionary *)attributes setObject:attribute forKey:key];
LABEL_6:
  parentSlide = self->_parentSlide;
  if (parentSlide && [(MPSlide *)parentSlide slide])
  {
    slide = [(MPSlide *)self->_parentSlide slide];
    v10 = self->_attributes;

    [slide setFrameAttribute:v10 forKey:@"specificAttributes"];
  }
}

- (id)parentDocument
{
  parentSlide = [(MPFrame *)self parentSlide];

  return [parentSlide parentDocument];
}

- (void)copyStruct:(id)struct
{
  -[MPFrameInternal setFrameID:](self->_internal, "setFrameID:", [objc_msgSend(struct "frameID")]);
  v5 = [objc_msgSend(struct "presetID")];
  internal = self->_internal;

  [(MPFrameInternal *)internal setPresetID:v5];
}

- (void)setParentSlide:(id)slide
{
  parentSlide = self->_parentSlide;
  if (parentSlide)
  {
    self->_parentSlide = 0;
    [(MPSlide *)parentSlide setFrame:0];
  }

  self->_parentSlide = slide;
  if (slide && [slide slide])
  {
    [-[MPSlide slide](self->_parentSlide "slide")];
    [-[MPSlide slide](self->_parentSlide "slide")];
    if (self->_attributes)
    {
      [-[MPSlide slide](self->_parentSlide "slide")];
    }

    sizingMode = [slide sizingMode];

    [(MPFrame *)self setFrameAttribute:sizingMode forKey:@"sizingMode"];
  }
}

@end