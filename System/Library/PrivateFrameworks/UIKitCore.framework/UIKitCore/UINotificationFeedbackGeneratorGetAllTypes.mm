@interface UINotificationFeedbackGeneratorGetAllTypes
@end

@implementation UINotificationFeedbackGeneratorGetAllTypes

void ___UINotificationFeedbackGeneratorGetAllTypes_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:2];
  v1 = qword_1ED49A068;
  qword_1ED49A068 = v0;

  for (i = 0; i != 3; ++i)
  {
    v3 = qword_1ED49A068;
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:i];
    [v3 addObject:v4];
  }

  v5 = [qword_1ED49A068 mutableCopy];
  v6 = qword_1ED49A070;
  qword_1ED49A070 = v5;

  for (j = 1000; j != 1027; ++j)
  {
    v8 = qword_1ED49A070;
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:j];
    [v8 addObject:v9];
  }
}

@end