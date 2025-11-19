@interface _UIInputViewKeyboardOutput
+ (id)outputWithKeyboardOutput:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation _UIInputViewKeyboardOutput

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_UIInputViewKeyboardOutput outputWithKeyboardOutput:self];
  [v4 setPositionOffset:{-[_UIInputViewKeyboardOutput positionOffset](self, "positionOffset")}];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(_UIInputViewKeyboardOutput *)self deletionCount];
    if (v6 == [v5 deletionCount])
    {
      v7 = [(_UIInputViewKeyboardOutput *)self insertionText];
      v8 = [v5 insertionText];
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        v10 = [(_UIInputViewKeyboardOutput *)self insertionText];
        v11 = [v5 insertionText];
        v12 = [v10 isEqualToString:v11];

        if (!v12)
        {
          goto LABEL_5;
        }
      }

      v14 = [(_UIInputViewKeyboardOutput *)self positionOffset];
      v13 = v14 == [v5 positionOffset];
      goto LABEL_9;
    }

LABEL_5:
    v13 = 0;
LABEL_9:

    goto LABEL_10;
  }

  v13 = 0;
LABEL_10:

  return v13;
}

+ (id)outputWithKeyboardOutput:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_UIInputViewKeyboardOutput);
  -[_UIInputViewKeyboardOutput setDeletionCount:](v4, "setDeletionCount:", [v3 deletionCount]);
  v5 = [v3 insertionText];

  v6 = [v5 copy];
  [(_UIInputViewKeyboardOutput *)v4 setInsertionText:v6];

  return v4;
}

@end