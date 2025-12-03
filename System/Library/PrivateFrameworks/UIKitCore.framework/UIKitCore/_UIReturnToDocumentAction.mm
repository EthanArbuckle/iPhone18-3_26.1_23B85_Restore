@interface _UIReturnToDocumentAction
+ (BOOL)_hasReturnToSenderFeature;
+ (id)actionWithFileURL:(id)l;
@end

@implementation _UIReturnToDocumentAction

+ (BOOL)_hasReturnToSenderFeature
{
  if (qword_1ED4A0F50 != -1)
  {
    dispatch_once(&qword_1ED4A0F50, &__block_literal_global_557);
  }

  return _MergedGlobals_1299;
}

+ (id)actionWithFileURL:(id)l
{
  lCopy = l;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47___UIReturnToDocumentAction_actionWithFileURL___block_invoke;
  v9[3] = &unk_1E7122F70;
  v10 = lCopy;
  selfCopy = self;
  v8.receiver = self;
  v8.super_class = &OBJC_METACLASS____UIReturnToDocumentAction;
  v5 = lCopy;
  v6 = objc_msgSendSuper2(&v8, sel_elementWithProvider_, v9);

  return v6;
}

@end