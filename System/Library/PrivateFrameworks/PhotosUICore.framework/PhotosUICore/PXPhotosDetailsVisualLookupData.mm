@interface PXPhotosDetailsVisualLookupData
- (BOOL)_isEqualToVisualLookupData:(id)data;
- (BOOL)isEqual:(id)equal;
- (PXPhotosDetailsVisualLookupData)initWithGlyphName:(id)name visualDomain:(id)domain displayMessage:(id)message;
- (id)description;
- (unint64_t)hash;
@end

@implementation PXPhotosDetailsVisualLookupData

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  glyphImageName = [(PXPhotosDetailsVisualLookupData *)self glyphImageName];
  visualDomain = [(PXPhotosDetailsVisualLookupData *)self visualDomain];
  displayMessage = [(PXPhotosDetailsVisualLookupData *)self displayMessage];
  v8 = [v3 initWithFormat:@"<%@: %p; glyph name = %@, domain name = %@, display message = %@>", v4, self, glyphImageName, visualDomain, displayMessage];

  return v8;
}

- (unint64_t)hash
{
  glyphImageName = [(PXPhotosDetailsVisualLookupData *)self glyphImageName];
  v4 = [glyphImageName hash];
  visualDomain = [(PXPhotosDetailsVisualLookupData *)self visualDomain];
  v6 = [visualDomain hash] ^ v4;
  displayMessage = [(PXPhotosDetailsVisualLookupData *)self displayMessage];
  v8 = [displayMessage hash];

  return v6 ^ v8;
}

- (BOOL)_isEqualToVisualLookupData:(id)data
{
  dataCopy = data;
  glyphImageName = [(PXPhotosDetailsVisualLookupData *)self glyphImageName];
  glyphImageName2 = [dataCopy glyphImageName];
  if (glyphImageName == glyphImageName2 || [glyphImageName isEqualToString:glyphImageName2])
  {
    visualDomain = [(PXPhotosDetailsVisualLookupData *)self visualDomain];
    visualDomain2 = [dataCopy visualDomain];
    if (visualDomain == visualDomain2 || [visualDomain isEqualToString:visualDomain2])
    {
      displayMessage = [(PXPhotosDetailsVisualLookupData *)self displayMessage];
      displayMessage2 = [dataCopy displayMessage];
      if (displayMessage == displayMessage2)
      {
        v11 = 1;
      }

      else
      {
        v11 = [displayMessage isEqualToString:displayMessage2];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && (v7.receiver = self, v7.super_class = PXPhotosDetailsVisualLookupData, [(PXPhotosDetailsVisualLookupData *)&v7 isEqual:equalCopy]) && [(PXPhotosDetailsVisualLookupData *)self _isEqualToVisualLookupData:equalCopy];
  }

  return v5;
}

- (PXPhotosDetailsVisualLookupData)initWithGlyphName:(id)name visualDomain:(id)domain displayMessage:(id)message
{
  nameCopy = name;
  domainCopy = domain;
  messageCopy = message;
  v15.receiver = self;
  v15.super_class = PXPhotosDetailsVisualLookupData;
  v12 = [(PXPhotosDetailsVisualLookupData *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_glyphImageName, name);
    objc_storeStrong(&v13->_visualDomain, domain);
    objc_storeStrong(&v13->_displayMessage, message);
  }

  return v13;
}

@end