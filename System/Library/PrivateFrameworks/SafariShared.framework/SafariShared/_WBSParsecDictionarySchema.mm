@interface _WBSParsecDictionarySchema
- (BOOL)_validateChild:(id)child ofParent:(id)parent withParentAssociatedError:(id)error errorHandler:(id)handler;
- (_WBSParsecDictionarySchema)initWithSchemaDictionary:(id)dictionary associatedError:(id)error isOptional:(BOOL)optional;
@end

@implementation _WBSParsecDictionarySchema

- (_WBSParsecDictionarySchema)initWithSchemaDictionary:(id)dictionary associatedError:(id)error isOptional:(BOOL)optional
{
  optionalCopy = optional;
  dictionaryCopy = dictionary;
  errorCopy = error;
  v10 = objc_opt_class();
  v16.receiver = self;
  v16.super_class = _WBSParsecDictionarySchema;
  v11 = [(WBSParsecSchema *)&v16 _initWithExpectedClass:v10 associatedError:errorCopy isOptional:optionalCopy];

  if (v11)
  {
    v12 = [dictionaryCopy copy];
    keysToSchemata = v11->_keysToSchemata;
    v11->_keysToSchemata = v12;

    v14 = v11;
  }

  return v11;
}

- (BOOL)_validateChild:(id)child ofParent:(id)parent withParentAssociatedError:(id)error errorHandler:(id)handler
{
  childCopy = child;
  parentCopy = parent;
  errorCopy = error;
  handlerCopy = handler;
  v31.receiver = self;
  v31.super_class = _WBSParsecDictionarySchema;
  if ([(WBSParsecSchema *)&v31 _validateChild:childCopy ofParent:parentCopy withParentAssociatedError:errorCopy errorHandler:handlerCopy])
  {
    if (childCopy || ![(WBSParsecSchema *)self isOptional])
    {
      associatedError = [(WBSParsecSchema *)self associatedError];
      v16 = associatedError;
      if (associatedError)
      {
        v17 = associatedError;
      }

      else
      {
        v17 = errorCopy;
      }

      v18 = v17;
      v27 = 0;
      v28 = &v27;
      v29 = 0x2020000000;
      v30 = 1;
      keysToSchemata = self->_keysToSchemata;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __93___WBSParsecDictionarySchema__validateChild_ofParent_withParentAssociatedError_errorHandler___block_invoke;
      v22[3] = &unk_1E7FC9050;
      v23 = childCopy;
      v20 = v18;
      v24 = v20;
      v25 = handlerCopy;
      v26 = &v27;
      [(NSDictionary *)keysToSchemata enumerateKeysAndObjectsUsingBlock:v22];
      v14 = *(v28 + 24);

      _Block_object_dispose(&v27, 8);
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

@end