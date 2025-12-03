@interface ICDateContentMapping
- (ICDateContentMapping)initWithDefinition:(id)definition;
- (void)getStringRepresentation:(id)representation withInput:(id)input parameters:(id)parameters;
@end

@implementation ICDateContentMapping

- (void)getStringRepresentation:(id)representation withInput:(id)input parameters:(id)parameters
{
  representationCopy = representation;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__ICDateContentMapping_getStringRepresentation_withInput_parameters___block_invoke;
  v10[3] = &unk_1E8378930;
  v10[4] = self;
  v11 = representationCopy;
  v9 = representationCopy;
  [(WFInterchangeContentMapping *)self getContentCollection:v10 withInput:input parameters:parameters];
}

void __69__ICDateContentMapping_getStringRepresentation_withInput_parameters___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 numberOfItems])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __69__ICDateContentMapping_getStringRepresentation_withInput_parameters___block_invoke_2;
    v5[3] = &unk_1E83783D8;
    v4 = *(a1 + 40);
    v5[4] = *(a1 + 32);
    v6 = v4;
    [v3 getObjectRepresentation:v5 forClass:objc_opt_class()];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __69__ICDateContentMapping_getStringRepresentation_withInput_parameters___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = a4;
  v8 = a2;
  v10 = [v6 dateFormatter];
  v9 = [v10 stringFromDate:v8];

  (*(v5 + 16))(v5, v9, v7);
}

- (ICDateContentMapping)initWithDefinition:(id)definition
{
  definitionCopy = definition;
  v11.receiver = self;
  v11.super_class = ICDateContentMapping;
  v5 = [(WFInterchangeContentMapping *)&v11 initWithDefinition:definitionCopy];
  if (v5)
  {
    v6 = objc_opt_new();
    dateFormatter = v5->_dateFormatter;
    v5->_dateFormatter = v6;

    v8 = [definitionCopy objectForKey:@"DateFormat"];
    [(NSDateFormatter *)v5->_dateFormatter setDateFormat:v8];

    v9 = v5;
  }

  return v5;
}

@end