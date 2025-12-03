@interface _UIFeedbackPatternParameters
- (void)_updateParameterWithKey:(id)key;
@end

@implementation _UIFeedbackPatternParameters

- (void)_updateParameterWithKey:(id)key
{
  v17 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  pattern = [(_UIFeedbackPatternParameters *)self pattern];
  feedbacks = [pattern feedbacks];

  v7 = [feedbacks countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(feedbacks);
        }

        audioParameters = [*(*(&v12 + 1) + 8 * v10) audioParameters];
        [audioParameters _updateParameterWithKey:keyCopy];

        ++v10;
      }

      while (v8 != v10);
      v8 = [feedbacks countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

@end