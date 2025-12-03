@interface _UINullFeedback
+ (id)nullFeedback;
- (BOOL)isEqual:(id)equal;
- (_UINullFeedback)init;
- (_UINullFeedback)initWithDictionaryRepresentation:(id)representation;
- (id)dictionaryRepresentation;
@end

@implementation _UINullFeedback

+ (id)nullFeedback
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (_UINullFeedback)init
{
  v7.receiver = self;
  v7.super_class = _UINullFeedback;
  v2 = [(_UIFeedback *)&v7 init];
  if (v2)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uuid = v2->_uuid;
    v2->_uuid = uUID;

    v5 = v2;
  }

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = _UINullFeedback;
  if ([(_UIFeedback *)&v7 isEqual:equalCopy])
  {
    v5 = [(NSUUID *)self->_uuid isEqual:equalCopy[16]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (_UINullFeedback)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v12.receiver = self;
  v12.super_class = _UINullFeedback;
  v5 = [(_UIFeedback *)&v12 initWithDictionaryRepresentation:representationCopy];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E696AFB0]);
    v7 = [representationCopy objectForKeyedSubscript:@"UUID"];
    v8 = [v6 initWithUUIDString:v7];
    uuid = v5->_uuid;
    v5->_uuid = v8;

    v10 = v5;
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v7.receiver = self;
  v7.super_class = _UINullFeedback;
  dictionaryRepresentation = [(_UIFeedback *)&v7 dictionaryRepresentation];
  v4 = [dictionaryRepresentation mutableCopy];

  uUIDString = [(NSUUID *)self->_uuid UUIDString];
  [v4 setObject:uUIDString forKeyedSubscript:@"UUID"];

  return v4;
}

@end