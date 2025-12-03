@interface ICCommaSeparatedStringsContentMapping
- (id)allowedCharacterSet;
- (id)contentItemClasses;
- (id)escapedCharacters;
- (void)getStringRepresentation:(id)representation withInput:(id)input parameters:(id)parameters;
@end

@implementation ICCommaSeparatedStringsContentMapping

- (void)getStringRepresentation:(id)representation withInput:(id)input parameters:(id)parameters
{
  representationCopy = representation;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __86__ICCommaSeparatedStringsContentMapping_getStringRepresentation_withInput_parameters___block_invoke;
  v9[3] = &unk_1E837F020;
  v9[4] = self;
  v10 = representationCopy;
  v8 = representationCopy;
  [input getStringRepresentations:v9];
}

void __86__ICCommaSeparatedStringsContentMapping_getStringRepresentation_withInput_parameters___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __86__ICCommaSeparatedStringsContentMapping_getStringRepresentation_withInput_parameters___block_invoke_2;
  v8[3] = &unk_1E8376E20;
  v4 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v5 = a3;
  v6 = [a2 if_map:v8];
  v7 = [v6 componentsJoinedByString:{@", "}];
  (*(v4 + 16))(v4, v7, v5);
}

id __86__ICCommaSeparatedStringsContentMapping_getStringRepresentation_withInput_parameters___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 allowedCharacterSet];
  v5 = [v3 stringByAddingPercentEncodingWithAllowedCharacters:v4];

  return v5;
}

- (id)allowedCharacterSet
{
  uRLQueryAllowedCharacterSet = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
  v4 = [uRLQueryAllowedCharacterSet mutableCopy];

  [v4 removeCharactersInString:@"?&="];
  escapedCharacters = [(ICCommaSeparatedStringsContentMapping *)self escapedCharacters];
  [v4 removeCharactersInString:escapedCharacters];

  return v4;
}

- (id)escapedCharacters
{
  definition = [(WFInterchangeContentMapping *)self definition];
  v3 = [definition objectForKey:@"EscapedCharacters"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @",";
  }

  v6 = v5;

  return v5;
}

- (id)contentItemClasses
{
  v2 = MEMORY[0x1E695DFB8];
  v3 = objc_opt_class();

  return [v2 orderedSetWithObject:v3];
}

@end