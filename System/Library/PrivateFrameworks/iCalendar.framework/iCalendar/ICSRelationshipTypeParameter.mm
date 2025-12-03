@interface ICSRelationshipTypeParameter
+ (id)relationshipParameterFromCode:(unint64_t)code;
+ (id)relationshipTypeParameterFromICSString:(id)string;
- (void)_ICSStringWithOptions:(unint64_t)options appendingToString:(id)string;
@end

@implementation ICSRelationshipTypeParameter

+ (id)relationshipTypeParameterFromICSString:(id)string
{
  v3 = [ICSComponent relationshipTypeFromString:string];

  return [ICSRelationshipTypeParameter relationshipParameterFromCode:v3];
}

+ (id)relationshipParameterFromCode:(unint64_t)code
{
  v3 = [(ICSPredefinedValue *)[ICSRelationshipTypeParameter alloc] initWithLong:code];

  return v3;
}

- (void)_ICSStringWithOptions:(unint64_t)options appendingToString:(id)string
{
  optionsCopy = options;
  stringCopy = string;
  v7 = [ICSComponent stringFromRelationshipType:[(ICSPredefinedValue *)self longValue]];
  iCalendarAppendStringToStringWithOptions(v7, stringCopy, optionsCopy);
}

@end