@interface _UIKeyboardInputModeIconConfiguration
+ (id)defaultConfiguration;
- (BOOL)isEqual:(id)a3;
- (CGSize)size;
- (id)description;
- (unint64_t)hash;
@end

@implementation _UIKeyboardInputModeIconConfiguration

+ (id)defaultConfiguration
{
  objc_opt_class();
  v2 = objc_opt_new();
  [v2 setSize:{23.0, 18.0}];
  [v2 setWeight:4];
  [v2 setBackground:1];
  [v2 setScaleFactor:1.0];

  return v2;
}

- (unint64_t)hash
{
  v10.receiver = self;
  v10.super_class = _UIKeyboardInputModeIconConfiguration;
  v3 = (3 * [(_UIKeyboardInputModeIconConfiguration *)&v10 hash]);
  [(_UIKeyboardInputModeIconConfiguration *)self size];
  v5 = (3 * (v4 + v3));
  [(_UIKeyboardInputModeIconConfiguration *)self size];
  v7 = (3 * (v6 + v5));
  [(_UIKeyboardInputModeIconConfiguration *)self scaleFactor];
  return (v8 + v7);
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendSize:@"size" withName:{self->_size.width, self->_size.height}];
  v5 = [v3 appendInteger:self->_weight withName:@"fontWeight"];
  v6 = [v3 appendBool:self->_background withName:@"background"];
  v7 = [v3 appendFloat:@"scale" withName:self->_scaleFactor];
  v8 = [v3 build];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      [(_UIKeyboardInputModeIconConfiguration *)v5 size];
      v7 = v6;
      v9 = v8;
      [(_UIKeyboardInputModeIconConfiguration *)self size];
      v12 = v7 == v11 && v9 == v10;
      if (v12 && (v13 = [(_UIKeyboardInputModeIconConfiguration *)v5 weight], v13 == [(_UIKeyboardInputModeIconConfiguration *)self weight]) && (v14 = [(_UIKeyboardInputModeIconConfiguration *)v5 background], v14 == [(_UIKeyboardInputModeIconConfiguration *)self background]))
      {
        [(_UIKeyboardInputModeIconConfiguration *)v5 scaleFactor];
        v18 = v17;
        [(_UIKeyboardInputModeIconConfiguration *)self scaleFactor];
        v15 = v18 == v19;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end