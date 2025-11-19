@interface _WBSParsecDictionarySchema
- (BOOL)_validateChild:(id)a3 ofParent:(id)a4 withParentAssociatedError:(id)a5 errorHandler:(id)a6;
- (_WBSParsecDictionarySchema)initWithSchemaDictionary:(id)a3 associatedError:(id)a4 isOptional:(BOOL)a5;
@end

@implementation _WBSParsecDictionarySchema

- (_WBSParsecDictionarySchema)initWithSchemaDictionary:(id)a3 associatedError:(id)a4 isOptional:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = objc_opt_class();
  v16.receiver = self;
  v16.super_class = _WBSParsecDictionarySchema;
  v11 = [(WBSParsecSchema *)&v16 _initWithExpectedClass:v10 associatedError:v9 isOptional:v5];

  if (v11)
  {
    v12 = [v8 copy];
    keysToSchemata = v11->_keysToSchemata;
    v11->_keysToSchemata = v12;

    v14 = v11;
  }

  return v11;
}

- (BOOL)_validateChild:(id)a3 ofParent:(id)a4 withParentAssociatedError:(id)a5 errorHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v31.receiver = self;
  v31.super_class = _WBSParsecDictionarySchema;
  if ([(WBSParsecSchema *)&v31 _validateChild:v10 ofParent:v11 withParentAssociatedError:v12 errorHandler:v13])
  {
    if (v10 || ![(WBSParsecSchema *)self isOptional])
    {
      v15 = [(WBSParsecSchema *)self associatedError];
      v16 = v15;
      if (v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = v12;
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
      v23 = v10;
      v20 = v18;
      v24 = v20;
      v25 = v13;
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