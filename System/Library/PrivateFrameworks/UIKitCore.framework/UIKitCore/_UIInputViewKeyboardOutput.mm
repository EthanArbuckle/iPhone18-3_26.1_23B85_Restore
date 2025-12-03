@interface _UIInputViewKeyboardOutput
+ (id)outputWithKeyboardOutput:(id)output;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _UIInputViewKeyboardOutput

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_UIInputViewKeyboardOutput outputWithKeyboardOutput:self];
  [v4 setPositionOffset:{-[_UIInputViewKeyboardOutput positionOffset](self, "positionOffset")}];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    deletionCount = [(_UIInputViewKeyboardOutput *)self deletionCount];
    if (deletionCount == [v5 deletionCount])
    {
      insertionText = [(_UIInputViewKeyboardOutput *)self insertionText];
      insertionText2 = [v5 insertionText];
      v9 = insertionText2;
      if (insertionText == insertionText2)
      {
      }

      else
      {
        insertionText3 = [(_UIInputViewKeyboardOutput *)self insertionText];
        insertionText4 = [v5 insertionText];
        v12 = [insertionText3 isEqualToString:insertionText4];

        if (!v12)
        {
          goto LABEL_5;
        }
      }

      positionOffset = [(_UIInputViewKeyboardOutput *)self positionOffset];
      v13 = positionOffset == [v5 positionOffset];
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

+ (id)outputWithKeyboardOutput:(id)output
{
  outputCopy = output;
  v4 = objc_alloc_init(_UIInputViewKeyboardOutput);
  -[_UIInputViewKeyboardOutput setDeletionCount:](v4, "setDeletionCount:", [outputCopy deletionCount]);
  insertionText = [outputCopy insertionText];

  v6 = [insertionText copy];
  [(_UIInputViewKeyboardOutput *)v4 setInsertionText:v6];

  return v4;
}

@end