@interface CRFormFieldLabelAssociationStep
- (CRFormFieldLabelAssociationStep)init;
- (id)process:(id)process externalFields:(id)fields document:(id)document options:(id)options;
@end

@implementation CRFormFieldLabelAssociationStep

- (CRFormFieldLabelAssociationStep)init
{
  v6.receiver = self;
  v6.super_class = CRFormFieldLabelAssociationStep;
  v2 = [(CRFormFieldLabelAssociationStep *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(CRFormParser);
    parser = v2->_parser;
    v2->_parser = v3;
  }

  return v2;
}

- (id)process:(id)process externalFields:(id)fields document:(id)document options:(id)options
{
  v25 = *MEMORY[0x1E69E9840];
  processCopy = process;
  fieldsCopy = fields;
  documentCopy = document;
  optionsCopy = options;
  v14 = CROSLogForCategory(6);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v23 = 134217984;
    v24 = [processCopy count];
    _os_log_impl(&dword_1B40D2000, v14, OS_LOG_TYPE_DEBUG, "CRFormPostProcessor: CRFormFieldLabelAssociationStep is running (#input:%lu).", &v23, 0xCu);
  }

  v15 = [optionsCopy objectForKeyedSubscript:@"ShouldUpdateExternalFieldsOption"];
  bOOLValue = [v15 BOOLValue];

  _flattenedFields = [processCopy _flattenedFields];
  v18 = [_flattenedFields arrayByAddingObjectsFromArray:fieldsCopy];

  v19 = [(CRFormParser *)self->_parser parseFieldsInDocument:documentCopy allFields:v18 shouldUpdateExternalFields:bOOLValue];
  v20 = CROSLogForCategory(6);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v21 = [v19 count];
    v23 = 134217984;
    v24 = v21;
    _os_log_impl(&dword_1B40D2000, v20, OS_LOG_TYPE_DEBUG, "CRFormPostProcessor: CRFormFieldLabelAssociationStep is completed (#output:%lu).", &v23, 0xCu);
  }

  return v19;
}

@end