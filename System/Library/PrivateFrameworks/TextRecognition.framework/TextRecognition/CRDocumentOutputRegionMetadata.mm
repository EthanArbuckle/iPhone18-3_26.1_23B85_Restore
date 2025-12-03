@interface CRDocumentOutputRegionMetadata
- (BOOL)isEqual:(id)equal;
- (CRDocumentOutputRegionMetadata)initWithCRCodableDataRepresentation:(id)representation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)crCodableDataRepresentation;
@end

@implementation CRDocumentOutputRegionMetadata

- (CRDocumentOutputRegionMetadata)initWithCRCodableDataRepresentation:(id)representation
{
  representationCopy = representation;
  v9.receiver = self;
  v9.super_class = CRDocumentOutputRegionMetadata;
  v5 = [(CRDocumentOutputRegionMetadata *)&v9 init];
  if (v5)
  {
    v8 = 0;
    if ([CRCodingUtilities integerFromEncodingData:representationCopy offset:&v8]!= 1)
    {
      v6 = 0;
      goto LABEL_6;
    }

    v5->_numFilteredRegions = [CRCodingUtilities unsignedIntegerFromEncodingData:representationCopy offset:&v8];
  }

  v6 = v5;
LABEL_6:

  return v6;
}

- (id)crCodableDataRepresentation
{
  v3 = objc_opt_new();
  [CRCodingUtilities appendInteger:1 toData:v3];
  [CRCodingUtilities appendUInteger:[(CRDocumentOutputRegionMetadata *)self numFilteredRegions] toData:v3];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      numFilteredRegions = [(CRDocumentOutputRegionMetadata *)self numFilteredRegions];
      numFilteredRegions2 = [(CRDocumentOutputRegionMetadata *)v5 numFilteredRegions];

      v8 = numFilteredRegions == numFilteredRegions2;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  [v4 setNumFilteredRegions:{-[CRDocumentOutputRegionMetadata numFilteredRegions](self, "numFilteredRegions")}];
  return v4;
}

@end