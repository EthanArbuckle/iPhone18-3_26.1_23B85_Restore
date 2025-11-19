@interface MPFrame
+ (MPFrame)frameWithFrameID:(id)a3;
- (MPFrame)init;
- (MPFrame)initWithFrameID:(id)a3;
- (NSString)presetID;
- (id)copyWithZone:(_NSZone *)a3;
- (id)frameAttributeForKey:(id)a3;
- (id)frameAttributes;
- (id)parentDocument;
- (void)copyStruct:(id)a3;
- (void)dealloc;
- (void)setFrameAttribute:(id)a3 forKey:(id)a4;
- (void)setFrameID:(id)a3;
- (void)setParentSlide:(id)a3;
- (void)setPresetID:(id)a3;
@end

@implementation MPFrame

+ (MPFrame)frameWithFrameID:(id)a3
{
  v3 = [[a1 alloc] initWithFrameID:a3];

  return v3;
}

- (MPFrame)initWithFrameID:(id)a3
{
  v4 = [(MPFrame *)self init];
  v5 = v4;
  if (v4)
  {
    [(MPFrameInternal *)v4->_internal setFrameID:a3];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (void)setFrameID:(id)a3
{
  [(MPFrameInternal *)self->_internal setFrameID:?];
  [(MPFrame *)self setPresetID:@"Default"];
  parentSlide = self->_parentSlide;
  if (parentSlide && [(MPSlide *)parentSlide slide])
  {
    v6 = [(MPSlide *)self->_parentSlide slide];

    [v6 setFrameID:a3];
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

- (void)setPresetID:(id)a3
{
  [(MPFrameInternal *)self->_internal setPresetID:?];
  [(NSMutableDictionary *)self->_attributes removeObjectForKey:@"frameAttributes"];
  parentSlide = self->_parentSlide;
  if (parentSlide && [(MPSlide *)parentSlide slide])
  {
    [-[MPSlide slide](self->_parentSlide "slide")];
    v6 = [(MPSlide *)self->_parentSlide slide];
    v7 = +[NSDictionary dictionary];

    [v6 setFrameAttribute:v7 forKey:@"specificAttributes"];
  }
}

- (id)frameAttributes
{
  result = self->_attributes;
  if (!result)
  {
    v4 = +[MPFrameManager sharedManager];
    v5 = [(MPFrame *)self frameID];
    v6 = [(MPFrame *)self presetID];

    return [v4 attributesForFrameID:v5 andPresetID:v6];
  }

  return result;
}

- (id)frameAttributeForKey:(id)a3
{
  v4 = [(MPFrame *)self frameAttributes];

  return [v4 objectForKey:a3];
}

- (void)setFrameAttribute:(id)a3 forKey:(id)a4
{
  attributes = self->_attributes;
  if (!attributes)
  {
    attributes = [objc_msgSend(+[MPFrameManager sharedManager](MPFrameManager "sharedManager")];
    self->_attributes = attributes;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    [(NSMutableDictionary *)attributes removeObjectForKey:a4];
    goto LABEL_6;
  }

  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  [(NSMutableDictionary *)attributes setObject:a3 forKey:a4];
LABEL_6:
  parentSlide = self->_parentSlide;
  if (parentSlide && [(MPSlide *)parentSlide slide])
  {
    v9 = [(MPSlide *)self->_parentSlide slide];
    v10 = self->_attributes;

    [v9 setFrameAttribute:v10 forKey:@"specificAttributes"];
  }
}

- (id)parentDocument
{
  v2 = [(MPFrame *)self parentSlide];

  return [v2 parentDocument];
}

- (void)copyStruct:(id)a3
{
  -[MPFrameInternal setFrameID:](self->_internal, "setFrameID:", [objc_msgSend(a3 "frameID")]);
  v5 = [objc_msgSend(a3 "presetID")];
  internal = self->_internal;

  [(MPFrameInternal *)internal setPresetID:v5];
}

- (void)setParentSlide:(id)a3
{
  parentSlide = self->_parentSlide;
  if (parentSlide)
  {
    self->_parentSlide = 0;
    [(MPSlide *)parentSlide setFrame:0];
  }

  self->_parentSlide = a3;
  if (a3 && [a3 slide])
  {
    [-[MPSlide slide](self->_parentSlide "slide")];
    [-[MPSlide slide](self->_parentSlide "slide")];
    if (self->_attributes)
    {
      [-[MPSlide slide](self->_parentSlide "slide")];
    }

    v6 = [a3 sizingMode];

    [(MPFrame *)self setFrameAttribute:v6 forKey:@"sizingMode"];
  }
}

@end