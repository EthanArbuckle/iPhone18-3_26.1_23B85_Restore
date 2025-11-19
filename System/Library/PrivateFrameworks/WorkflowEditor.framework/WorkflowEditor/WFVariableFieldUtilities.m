@interface WFVariableFieldUtilities
+ (BOOL)clipboardContainsVariableString;
+ (BOOL)pasteboardContainsVariableString:(id)a3;
+ (id)serializedVariableStringFromPasteboard:(id)a3;
+ (void)copyVariableString:(id)a3 toPasteboard:(id)a4;
@end

@implementation WFVariableFieldUtilities

+ (id)serializedVariableStringFromPasteboard:(id)a3
{
  v3 = [a3 valueForPasteboardType:@"is.workflow.my.variablestring"];
  v4 = [MEMORY[0x277CCAC58] propertyListWithData:v3 options:0 format:0 error:0];

  return v4;
}

+ (void)copyVariableString:(id)a3 toPasteboard:(id)a4
{
  v16[2] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCAC58];
  v6 = a4;
  v7 = a3;
  v8 = [v7 serializedRepresentation];
  v9 = [v5 dataWithPropertyList:v8 format:200 options:0 error:0];

  v10 = [*MEMORY[0x277CE1EB0] identifier];
  v15[0] = v10;
  v11 = [v7 stringByReplacingVariablesWithNames];

  v15[1] = @"is.workflow.my.variablestring";
  v16[0] = v11;
  v16[1] = v9;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v14 = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
  [v6 setItems:v13];
}

+ (BOOL)pasteboardContainsVariableString:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = @"is.workflow.my.variablestring";
  v3 = MEMORY[0x277CBEA60];
  v4 = a3;
  v5 = [v3 arrayWithObjects:&v7 count:1];
  LOBYTE(v3) = [v4 containsPasteboardTypes:{v5, v7, v8}];

  return v3;
}

+ (BOOL)clipboardContainsVariableString
{
  v3 = [MEMORY[0x277D75810] generalPasteboard];
  LOBYTE(a1) = [a1 pasteboardContainsVariableString:v3];

  return a1;
}

@end