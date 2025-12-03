@interface UIPressInfo
+ (id)_keyboardPressInfoForType:(int64_t)type isKeyDown:(BOOL)down timestamp:(double)timestamp contextID:(unsigned int)d modifierFlags:(int64_t)flags;
- (UIPressInfo)init;
- (id)_sourceDescription;
- (id)description;
@end

@implementation UIPressInfo

- (UIPressInfo)init
{
  v3.receiver = self;
  v3.super_class = UIPressInfo;
  result = [(UIPressInfo *)&v3 init];
  if (result)
  {
    result->_clickCount = 1;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  phase = [(UIPressInfo *)self phase];
  type = [(UIPressInfo *)self type];
  [(UIPressInfo *)self force];
  v8 = v7;
  _sourceDescription = [(UIPressInfo *)self _sourceDescription];
  v10 = [v3 stringWithFormat:@"<%@: %p phase=%ld type=%ld force=%f, source=%@, contextID=%u>", v4, self, phase, type, v8, _sourceDescription, -[UIPressInfo contextID](self, "contextID")];

  return v10;
}

- (id)_sourceDescription
{
  v2 = self->_source - 1;
  if (v2 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7115D50[v2];
  }
}

+ (id)_keyboardPressInfoForType:(int64_t)type isKeyDown:(BOOL)down timestamp:(double)timestamp contextID:(unsigned int)d modifierFlags:(int64_t)flags
{
  v8 = *&d;
  downCopy = down;
  v12 = objc_alloc_init(self);
  [v12 setType:type];
  v13 = 0.0;
  if (downCopy)
  {
    v13 = 1.0;
    v14 = 0;
  }

  else
  {
    v14 = 3;
  }

  [v12 setForce:v13];
  [v12 setPhase:v14];
  [v12 setTimestamp:timestamp];
  [v12 setSource:1];
  [v12 setContextID:v8];
  [v12 setModifierFlags:flags];

  return v12;
}

@end