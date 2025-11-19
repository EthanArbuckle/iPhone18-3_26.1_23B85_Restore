@interface _UINullFeedback
+ (id)nullFeedback;
- (BOOL)isEqual:(id)a3;
- (_UINullFeedback)init;
- (_UINullFeedback)initWithDictionaryRepresentation:(id)a3;
- (id)dictionaryRepresentation;
@end

@implementation _UINullFeedback

+ (id)nullFeedback
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (_UINullFeedback)init
{
  v7.receiver = self;
  v7.super_class = _UINullFeedback;
  v2 = [(_UIFeedback *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AFB0] UUID];
    uuid = v2->_uuid;
    v2->_uuid = v3;

    v5 = v2;
  }

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _UINullFeedback;
  if ([(_UIFeedback *)&v7 isEqual:v4])
  {
    v5 = [(NSUUID *)self->_uuid isEqual:v4[16]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (_UINullFeedback)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _UINullFeedback;
  v5 = [(_UIFeedback *)&v12 initWithDictionaryRepresentation:v4];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E696AFB0]);
    v7 = [v4 objectForKeyedSubscript:@"UUID"];
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
  v3 = [(_UIFeedback *)&v7 dictionaryRepresentation];
  v4 = [v3 mutableCopy];

  v5 = [(NSUUID *)self->_uuid UUIDString];
  [v4 setObject:v5 forKeyedSubscript:@"UUID"];

  return v4;
}

@end