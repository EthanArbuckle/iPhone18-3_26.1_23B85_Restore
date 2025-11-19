@interface TSCH3DShaderStatement
+ (id)statementWithFormat:(id)a3 dependees:(id)a4 program:(id)a5;
- (id)string;
@end

@implementation TSCH3DShaderStatement

+ (id)statementWithFormat:(id)a3 dependees:(id)a4 program:(id)a5
{
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___TSCH3DShaderStatement;
  v5 = objc_msgSendSuper2(&v7, sel_assignmentWithAssignee_statement_dependees_program_, 0, a3, a4, a5);

  return v5;
}

- (id)string
{
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_msgSend_expressionStringForType_(self, a2, v2, v3, v4, self->super._linkageType._value);
  v11 = objc_msgSend_stringWithFormat_(v5, v7, v8, v9, v10, @"%@", v6);;

  return v11;
}

@end