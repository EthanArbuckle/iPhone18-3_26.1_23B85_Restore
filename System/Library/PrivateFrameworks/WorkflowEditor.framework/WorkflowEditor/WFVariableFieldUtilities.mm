@interface WFVariableFieldUtilities
+ (BOOL)clipboardContainsVariableString;
+ (BOOL)pasteboardContainsVariableString:(id)string;
+ (id)serializedVariableStringFromPasteboard:(id)pasteboard;
+ (void)copyVariableString:(id)string toPasteboard:(id)pasteboard;
@end

@implementation WFVariableFieldUtilities

+ (id)serializedVariableStringFromPasteboard:(id)pasteboard
{
  v3 = [pasteboard valueForPasteboardType:@"is.workflow.my.variablestring"];
  v4 = [MEMORY[0x277CCAC58] propertyListWithData:v3 options:0 format:0 error:0];

  return v4;
}

+ (void)copyVariableString:(id)string toPasteboard:(id)pasteboard
{
  v16[2] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCAC58];
  pasteboardCopy = pasteboard;
  stringCopy = string;
  serializedRepresentation = [stringCopy serializedRepresentation];
  v9 = [v5 dataWithPropertyList:serializedRepresentation format:200 options:0 error:0];

  identifier = [*MEMORY[0x277CE1EB0] identifier];
  v15[0] = identifier;
  stringByReplacingVariablesWithNames = [stringCopy stringByReplacingVariablesWithNames];

  v15[1] = @"is.workflow.my.variablestring";
  v16[0] = stringByReplacingVariablesWithNames;
  v16[1] = v9;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v14 = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
  [pasteboardCopy setItems:v13];
}

+ (BOOL)pasteboardContainsVariableString:(id)string
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = @"is.workflow.my.variablestring";
  v3 = MEMORY[0x277CBEA60];
  stringCopy = string;
  v5 = [v3 arrayWithObjects:&v7 count:1];
  LOBYTE(v3) = [stringCopy containsPasteboardTypes:{v5, v7, v8}];

  return v3;
}

+ (BOOL)clipboardContainsVariableString
{
  generalPasteboard = [MEMORY[0x277D75810] generalPasteboard];
  LOBYTE(self) = [self pasteboardContainsVariableString:generalPasteboard];

  return self;
}

@end