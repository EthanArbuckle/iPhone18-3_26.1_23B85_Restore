@interface CLSFaceInformation
+ (id)_traitsFromTraitsPropertyListRepresentation:(id)a3;
- (CLSFaceInformation)initWithDictionaryRepresentation:(id)a3;
- (id)_initWithFaceSize:(double)a3 faceQuality:(double)a4 isKnownPerson:(BOOL)a5 isHiddenPerson:(BOOL)a6 faceSizeIsGood:(BOOL)a7 faceIsGood:(BOOL)a8 faceIsOk:(BOOL)a9 traits:(id)a10;
- (id)_propertyListRepresentationOfTraits;
- (id)dictionaryRepresentation;
@end

@implementation CLSFaceInformation

- (id)_propertyListRepresentationOfTraits
{
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_traits, "count")}];
  traits = self->_traits;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__CLSFaceInformation__propertyListRepresentationOfTraits__block_invoke;
  v7[3] = &unk_1E82A28B8;
  v5 = v3;
  v8 = v5;
  [(NSArray *)traits enumerateObjectsUsingBlock:v7];

  return v5;
}

void __57__CLSFaceInformation__propertyListRepresentationOfTraits__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 propertyListRepresentation];
  [*(a1 + 32) addObject:v3];
}

- (id)dictionaryRepresentation
{
  v14[8] = *MEMORY[0x1E69E9840];
  v13[0] = @"faceSize";
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_faceSize];
  v14[0] = v3;
  v13[1] = @"faceQuality";
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_faceQuality];
  v14[1] = v4;
  v13[2] = @"isKnownPerson";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_isKnownPerson];
  v14[2] = v5;
  v13[3] = @"isHiddenPerson";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_isHiddenPerson];
  v14[3] = v6;
  v13[4] = @"faceSizeIsGood";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:*(self + 8) & 1];
  v14[4] = v7;
  v13[5] = @"faceIsGood";
  v8 = [MEMORY[0x1E696AD98] numberWithBool:(*(self + 8) >> 1) & 1];
  v14[5] = v8;
  v13[6] = @"faceIsOk";
  v9 = [MEMORY[0x1E696AD98] numberWithBool:(*(self + 8) >> 2) & 1];
  v14[6] = v9;
  v13[7] = @"traits";
  v10 = [(CLSFaceInformation *)self _propertyListRepresentationOfTraits];
  v14[7] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:8];

  return v11;
}

- (id)_initWithFaceSize:(double)a3 faceQuality:(double)a4 isKnownPerson:(BOOL)a5 isHiddenPerson:(BOOL)a6 faceSizeIsGood:(BOOL)a7 faceIsGood:(BOOL)a8 faceIsOk:(BOOL)a9 traits:(id)a10
{
  v11 = a9;
  v12 = a8;
  v19 = a10;
  v25.receiver = self;
  v25.super_class = CLSFaceInformation;
  v20 = [(CLSFaceInformation *)&v25 init];
  v21 = v20;
  if (v20)
  {
    v20->_faceSize = a3;
    v20->_faceQuality = a4;
    v20->_isKnownPerson = a5;
    v20->_isHiddenPerson = a6;
    if (v12)
    {
      v22 = 2;
    }

    else
    {
      v22 = 0;
    }

    if (v11)
    {
      v23 = 4;
    }

    else
    {
      v23 = 0;
    }

    *(v20 + 8) = v22 | a7 | v23 | *(v20 + 8) & 0xF8;
    objc_storeStrong(&v20->_traits, a10);
  }

  return v21;
}

- (CLSFaceInformation)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"faceSize"];
  [v5 doubleValue];
  v7 = v6;

  v8 = [v4 objectForKeyedSubscript:@"faceQuality"];
  [v8 doubleValue];
  v10 = v9;

  v11 = [v4 objectForKeyedSubscript:@"isKnownPerson"];
  v12 = [v11 BOOLValue];

  v13 = [v4 objectForKeyedSubscript:@"isHiddenPerson"];
  v14 = [v13 BOOLValue];

  v15 = [v4 objectForKeyedSubscript:@"faceSizeIsGood"];
  v16 = [v15 BOOLValue];

  v17 = [v4 objectForKeyedSubscript:@"faceIsGood"];
  v18 = [v17 BOOLValue];

  v19 = [v4 objectForKeyedSubscript:@"faceIsOk"];
  v20 = [v19 BOOLValue];

  v21 = objc_opt_class();
  v22 = [v4 objectForKeyedSubscript:@"traits"];

  v23 = [v21 _traitsFromTraitsPropertyListRepresentation:v22];

  v24 = [(CLSFaceInformation *)self _initWithFaceSize:v12 faceQuality:v14 isKnownPerson:v16 isHiddenPerson:v18 faceSizeIsGood:v20 faceIsGood:v23 faceIsOk:v7 traits:v10];
  return v24;
}

+ (id)_traitsFromTraitsPropertyListRepresentation:(id)a3
{
  v3 = MEMORY[0x1E695DF70];
  v4 = a3;
  v5 = [[v3 alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__CLSFaceInformation__traitsFromTraitsPropertyListRepresentation___block_invoke;
  v8[3] = &unk_1E82A2890;
  v6 = v5;
  v9 = v6;
  [v4 enumerateObjectsUsingBlock:v8];

  return v6;
}

void __66__CLSFaceInformation__traitsFromTraitsPropertyListRepresentation___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69787B8];
  v4 = a2;
  v6 = [[v3 alloc] initWithPropertyListRepresentation:v4];

  v5 = v6;
  if (v6)
  {
    [*(a1 + 32) addObject:v6];
    v5 = v6;
  }
}

@end