@interface UIPressInfo
+ (id)_keyboardPressInfoForType:(int64_t)a3 isKeyDown:(BOOL)a4 timestamp:(double)a5 contextID:(unsigned int)a6 modifierFlags:(int64_t)a7;
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
  v5 = [(UIPressInfo *)self phase];
  v6 = [(UIPressInfo *)self type];
  [(UIPressInfo *)self force];
  v8 = v7;
  v9 = [(UIPressInfo *)self _sourceDescription];
  v10 = [v3 stringWithFormat:@"<%@: %p phase=%ld type=%ld force=%f, source=%@, contextID=%u>", v4, self, v5, v6, v8, v9, -[UIPressInfo contextID](self, "contextID")];

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

+ (id)_keyboardPressInfoForType:(int64_t)a3 isKeyDown:(BOOL)a4 timestamp:(double)a5 contextID:(unsigned int)a6 modifierFlags:(int64_t)a7
{
  v8 = *&a6;
  v10 = a4;
  v12 = objc_alloc_init(a1);
  [v12 setType:a3];
  v13 = 0.0;
  if (v10)
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
  [v12 setTimestamp:a5];
  [v12 setSource:1];
  [v12 setContextID:v8];
  [v12 setModifierFlags:a7];

  return v12;
}

@end