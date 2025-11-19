@interface PXPhotosDetailsVisualLookupData
- (BOOL)_isEqualToVisualLookupData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (PXPhotosDetailsVisualLookupData)initWithGlyphName:(id)a3 visualDomain:(id)a4 displayMessage:(id)a5;
- (id)description;
- (unint64_t)hash;
@end

@implementation PXPhotosDetailsVisualLookupData

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = [(PXPhotosDetailsVisualLookupData *)self glyphImageName];
  v6 = [(PXPhotosDetailsVisualLookupData *)self visualDomain];
  v7 = [(PXPhotosDetailsVisualLookupData *)self displayMessage];
  v8 = [v3 initWithFormat:@"<%@: %p; glyph name = %@, domain name = %@, display message = %@>", v4, self, v5, v6, v7];

  return v8;
}

- (unint64_t)hash
{
  v3 = [(PXPhotosDetailsVisualLookupData *)self glyphImageName];
  v4 = [v3 hash];
  v5 = [(PXPhotosDetailsVisualLookupData *)self visualDomain];
  v6 = [v5 hash] ^ v4;
  v7 = [(PXPhotosDetailsVisualLookupData *)self displayMessage];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BOOL)_isEqualToVisualLookupData:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotosDetailsVisualLookupData *)self glyphImageName];
  v6 = [v4 glyphImageName];
  if (v5 == v6 || [v5 isEqualToString:v6])
  {
    v7 = [(PXPhotosDetailsVisualLookupData *)self visualDomain];
    v8 = [v4 visualDomain];
    if (v7 == v8 || [v7 isEqualToString:v8])
    {
      v9 = [(PXPhotosDetailsVisualLookupData *)self displayMessage];
      v10 = [v4 displayMessage];
      if (v9 == v10)
      {
        v11 = 1;
      }

      else
      {
        v11 = [v9 isEqualToString:v10];
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && (v7.receiver = self, v7.super_class = PXPhotosDetailsVisualLookupData, [(PXPhotosDetailsVisualLookupData *)&v7 isEqual:v4]) && [(PXPhotosDetailsVisualLookupData *)self _isEqualToVisualLookupData:v4];
  }

  return v5;
}

- (PXPhotosDetailsVisualLookupData)initWithGlyphName:(id)a3 visualDomain:(id)a4 displayMessage:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PXPhotosDetailsVisualLookupData;
  v12 = [(PXPhotosDetailsVisualLookupData *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_glyphImageName, a3);
    objc_storeStrong(&v13->_visualDomain, a4);
    objc_storeStrong(&v13->_displayMessage, a5);
  }

  return v13;
}

@end