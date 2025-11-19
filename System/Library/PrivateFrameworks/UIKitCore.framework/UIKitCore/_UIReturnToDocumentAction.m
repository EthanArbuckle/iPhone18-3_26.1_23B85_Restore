@interface _UIReturnToDocumentAction
+ (BOOL)_hasReturnToSenderFeature;
+ (id)actionWithFileURL:(id)a3;
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

+ (id)actionWithFileURL:(id)a3
{
  v4 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47___UIReturnToDocumentAction_actionWithFileURL___block_invoke;
  v9[3] = &unk_1E7122F70;
  v10 = v4;
  v11 = a1;
  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS____UIReturnToDocumentAction;
  v5 = v4;
  v6 = objc_msgSendSuper2(&v8, sel_elementWithProvider_, v9);

  return v6;
}

@end