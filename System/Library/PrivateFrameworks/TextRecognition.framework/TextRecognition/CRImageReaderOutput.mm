@interface CRImageReaderOutput
+ (unint64_t)confidenceLevelForConfidenceScore:(double)score confidenceThresholds:(id)thresholds;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToImageReaderOutput:(id)output;
- (CGPoint)_rotatePointIfNeccessary:(CGPoint)neccessary anchor:(CGPoint)anchor angle:(double)angle;
- (CGPoint)bottomLeft;
- (CGPoint)bottomRight;
- (CGPoint)topLeft;
- (CGPoint)topRight;
- (CGRect)boundingBox;
- (CGSize)imageSize;
- (CRImageReaderOutput)initWithCoder:(id)coder;
- (CRImageReaderOutput)initWithType:(id)type outputRegion:(id)region isTitle:(BOOL)title withCandidates:(BOOL)candidates;
- (id)boundingQuad;
- (id)copyWithZone:(_NSZone *)zone;
- (id)cornersForCharacterRange:(_NSRange)range error:(id *)error;
- (id)crCodableDataRepresentation;
- (id)decodeOutputsArrayFromData:(id)data offset:(unint64_t *)offset version:(int64_t)version;
- (id)initV1WithCoder:(id)coder;
- (id)initV2WithDataRepresentation:(id)representation;
- (id)quadForCharacterRange:(_NSRange)range error:(id *)error;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRImageReaderOutput

- (CRImageReaderOutput)initWithType:(id)type outputRegion:(id)region isTitle:(BOOL)title withCandidates:(BOOL)candidates
{
  candidatesCopy = candidates;
  titleCopy = title;
  v74 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  regionCopy = region;
  v71.receiver = self;
  v71.super_class = CRImageReaderOutput;
  v13 = [(CRImageReaderOutput *)&v71 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_type, type);
    if (regionCopy)
    {
      text = [regionCopy text];
      stringValue = v14->_stringValue;
      v14->_stringValue = text;

      v14->_confidence = [regionCopy confidence];
      boundingQuad = [regionCopy boundingQuad];
      [boundingQuad boundingBox];
      v14->_boundingBox.origin.x = v18;
      v14->_boundingBox.origin.y = v19;
      v14->_boundingBox.size.width = v20;
      v14->_boundingBox.size.height = v21;

      boundingQuad2 = [regionCopy boundingQuad];
      [boundingQuad2 topLeft];
      v14->_topLeft.x = v23;
      v14->_topLeft.y = v24;

      boundingQuad3 = [regionCopy boundingQuad];
      [boundingQuad3 topRight];
      v14->_topRight.x = v26;
      v14->_topRight.y = v27;

      boundingQuad4 = [regionCopy boundingQuad];
      [boundingQuad4 bottomRight];
      v14->_bottomRight.x = v29;
      v14->_bottomRight.y = v30;

      boundingQuad5 = [regionCopy boundingQuad];
      [boundingQuad5 bottomLeft];
      v14->_bottomLeft.x = v32;
      v14->_bottomLeft.y = v33;

      boundingQuad6 = [regionCopy boundingQuad];
      [boundingQuad6 baselineAngle];
      *&v35 = v35;
      v14->_baselineAngle = *&v35;

      boundingQuad7 = [regionCopy boundingQuad];
      [boundingQuad7 normalizationSize];
      v14->_imageSize.width = v37;
      v14->_imageSize.height = v38;

      v14->_isTitle = titleCopy;
      v39 = [regionCopy contentsWithTypes:48];
      v62 = regionCopy;
      if ([v39 count])
      {
        v61 = candidatesCopy;
        v40 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v39, "count")}];
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v41 = v39;
        v42 = [v41 countByEnumeratingWithState:&v67 objects:v73 count:16];
        if (v42)
        {
          v43 = v42;
          v44 = *v68;
          do
          {
            for (i = 0; i != v43; ++i)
            {
              if (*v68 != v44)
              {
                objc_enumerationMutation(v41);
              }

              v46 = [[CRImageReaderOutput alloc] initWithType:typeCopy outputRegion:*(*(&v67 + 1) + 8 * i) isTitle:0];
              [v40 addObject:v46];
            }

            v43 = [v41 countByEnumeratingWithState:&v67 objects:v73 count:16];
          }

          while (v43);
        }

        v47 = [MEMORY[0x1E695DEC8] arrayWithArray:v40];
        components = v14->_components;
        v14->_components = v47;

        regionCopy = v62;
        candidatesCopy = v61;
      }

      if (candidatesCopy)
      {
        v49 = MEMORY[0x1E695DF70];
        candidates = [regionCopy candidates];
        v51 = [v49 arrayWithCapacity:{objc_msgSend(candidates, "count")}];

        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        candidates2 = [regionCopy candidates];
        v53 = [candidates2 countByEnumeratingWithState:&v63 objects:v72 count:16];
        if (v53)
        {
          v54 = v53;
          v55 = *v64;
          do
          {
            for (j = 0; j != v54; ++j)
            {
              if (*v64 != v55)
              {
                objc_enumerationMutation(candidates2);
              }

              v57 = [[CRImageReaderOutput alloc] initWithType:typeCopy outputRegion:*(*(&v63 + 1) + 8 * j) isTitle:titleCopy withCandidates:0];
              [v51 addObject:v57];
            }

            v54 = [candidates2 countByEnumeratingWithState:&v63 objects:v72 count:16];
          }

          while (v54);
        }

        v58 = [MEMORY[0x1E695DEC8] arrayWithArray:v51];
        candidates = v14->_candidates;
        v14->_candidates = v58;

        regionCopy = v62;
      }
    }
  }

  return v14;
}

+ (unint64_t)confidenceLevelForConfidenceScore:(double)score confidenceThresholds:(id)thresholds
{
  thresholdsCopy = thresholds;
  [thresholdsCopy mediumConfidenceThreshold];
  v7 = v6;
  [thresholdsCopy highConfidenceThreshold];
  v9 = v8;

  v10 = 2;
  if (v9 > score)
  {
    v10 = 1;
  }

  if (v7 <= score)
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

- (id)boundingQuad
{
  v3 = [CRNormalizedQuad alloc];
  [(CRImageReaderOutput *)self topLeft];
  v5 = v4;
  v7 = v6;
  [(CRImageReaderOutput *)self topRight];
  v9 = v8;
  v11 = v10;
  [(CRImageReaderOutput *)self bottomRight];
  v13 = v12;
  v15 = v14;
  [(CRImageReaderOutput *)self bottomLeft];
  v17 = v16;
  v19 = v18;
  [(CRImageReaderOutput *)self imageSize];
  v22 = [(CRNormalizedQuad *)v3 initWithNormalizedTopLeft:v5 topRight:v7 bottomRight:v9 bottomLeft:v11 size:v13, v15, v17, v19, v20, v21];

  return v22;
}

- (id)cornersForCharacterRange:(_NSRange)range error:(id *)error
{
  v16[4] = *MEMORY[0x1E69E9840];
  error = [(CRImageReaderOutput *)self quadForCharacterRange:range.location error:range.length, error];
  v5 = error;
  if (error)
  {
    v6 = MEMORY[0x1E696B098];
    [error topLeft];
    v7 = [v6 valueWithPoint:?];
    v16[0] = v7;
    v8 = MEMORY[0x1E696B098];
    [v5 topRight];
    v9 = [v8 valueWithPoint:?];
    v16[1] = v9;
    v10 = MEMORY[0x1E696B098];
    [v5 bottomRight];
    v11 = [v10 valueWithPoint:?];
    v16[2] = v11;
    v12 = MEMORY[0x1E696B098];
    [v5 bottomLeft];
    v13 = [v12 valueWithPoint:?];
    v16[3] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:4];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)quadForCharacterRange:(_NSRange)range error:(id *)error
{
  v53[1] = *MEMORY[0x1E69E9840];
  if (range.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_25;
  }

  location = range.location;
  v7 = range.location + range.length;
  stringValue = [(CRImageReaderOutput *)self stringValue];
  if (v7 > [stringValue length])
  {

LABEL_25:
    if (error)
    {
      v36 = MEMORY[0x1E696ABC0];
      v52 = *MEMORY[0x1E696A578];
      v53[0] = @"Invalid input range.";
      v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:&v52 count:1];
      *error = [v36 errorWithDomain:@"CRImageReaderOutputErrorDomain" code:-1 userInfo:v37];
    }

    v38 = 0;
    goto LABEL_28;
  }

  components = [(CRImageReaderOutput *)self components];
  v10 = [components count];

  if (!v10)
  {
    goto LABEL_25;
  }

  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v12 = whitespaceAndNewlineCharacterSet;
  if (!v7)
  {
    v40 = 0;
    goto LABEL_37;
  }

  v13 = 0;
  v49 = 0;
  v50 = 0;
  v14 = 0;
  v45 = 0;
  v51 = 0;
  v47 = v7;
  v48 = whitespaceAndNewlineCharacterSet;
  v46 = location;
  while (1)
  {
    stringValue2 = [(CRImageReaderOutput *)self stringValue];
    v16 = [v12 characterIsMember:{objc_msgSend(stringValue2, "characterAtIndex:", v13)}];

    if ((v16 & 1) == 0)
    {
      break;
    }

LABEL_23:
    if (++v13 == v7)
    {
      goto LABEL_33;
    }
  }

  components2 = [(CRImageReaderOutput *)self components];
  v18 = [components2 count];

  if (v14 >= v18)
  {
    goto LABEL_33;
  }

  components3 = [(CRImageReaderOutput *)self components];
  v20 = [components3 objectAtIndexedSubscript:v14];

  stringValue3 = [v20 stringValue];
  v22 = [stringValue3 stringByReplacingOccurrencesOfString:@" " withString:&stru_1F2BB4348];

  if (v51 - v50 >= [v22 length])
  {
    v23 = v14 + 1;
    while (1)
    {
      v14 = v23;
      components4 = [(CRImageReaderOutput *)self components];
      v25 = [components4 count];

      if (v14 >= v25)
      {
        break;
      }

      components5 = [(CRImageReaderOutput *)self components];
      v27 = [components5 objectAtIndexedSubscript:v14];

      stringValue4 = [v27 stringValue];
      v29 = [stringValue4 stringByReplacingOccurrencesOfString:@" " withString:&stru_1F2BB4348];

      v30 = [v29 length];
      v23 = v14 + 1;
      v22 = v29;
      v20 = v27;
      if (v30)
      {
        v20 = v27;
        v22 = v29;
        break;
      }
    }

    v50 = v51;
  }

  components6 = [(CRImageReaderOutput *)self components];
  v32 = [components6 count];

  if (v14 < v32)
  {
    if (v13 >= location)
    {
      boundingQuad = [v20 boundingQuad];
      v34 = boundingQuad;
      if (v49)
      {
        [(CRImageReaderOutput *)self baselineAngle];
        v35 = [(CRNormalizedQuad *)v49 unionWithNormalizedQuad:v34 baselineAngle:?];

        v49 = v35;
      }

      else
      {
        v49 = boundingQuad;
        v45 = 1;
      }

      v12 = v48;
      location = v46;
    }

    else
    {
      v12 = v48;
    }

    v7 = v47;
    ++v51;

    goto LABEL_23;
  }

  v12 = v48;
LABEL_33:
  if (v45)
  {
    v40 = v49;
    if (v49)
    {
      v41 = v49;
      v40 = v41;
      goto LABEL_38;
    }
  }

  else
  {
    v40 = v49;
  }

LABEL_37:
  v42 = [CRNormalizedQuad alloc];
  [(CRImageReaderOutput *)self imageSize];
  v41 = [(CRNormalizedQuad *)v42 initWithNormalizedBoundingBox:*MEMORY[0x1E695F058] size:*(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), v43, v44];
LABEL_38:
  v38 = v41;

LABEL_28:

  return v38;
}

- (CGPoint)_rotatePointIfNeccessary:(CGPoint)neccessary anchor:(CGPoint)anchor angle:(double)angle
{
  y = neccessary.y;
  x = neccessary.x;
  if (fabs(angle) > 0.05)
  {
    v7 = anchor.y;
    v8 = anchor.x;
    v9 = __sincos_stret(angle);
    v10 = (x - v8) * v9.__cosval - (y - v7) * v9.__sinval;
    v11 = (y - v7) * v9.__cosval + (x - v8) * v9.__sinval;
    x = v8 + v10;
    y = v7 + v11;
  }

  v12 = x;
  v13 = y;
  result.y = v13;
  result.x = v12;
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v59 = *MEMORY[0x1E69E9840];
  v5 = [CRImageReaderOutput allocWithZone:?];
  type = [(CRImageReaderOutput *)self type];
  v7 = [(CRImageReaderOutput *)v5 initWithType:type outputRegion:0 isTitle:[(CRImageReaderOutput *)self isTitle]];

  stringValue = [(CRImageReaderOutput *)self stringValue];
  v9 = [stringValue copyWithZone:zone];
  v10 = *(v7 + 24);
  *(v7 + 24) = v9;

  *(v7 + 32) = [(CRImageReaderOutput *)self confidence];
  [(CRImageReaderOutput *)self boundingBox];
  *(v7 + 136) = v11;
  *(v7 + 144) = v12;
  *(v7 + 152) = v13;
  *(v7 + 160) = v14;
  [(CRImageReaderOutput *)self topLeft];
  *(v7 + 56) = v15;
  *(v7 + 64) = v16;
  [(CRImageReaderOutput *)self topRight];
  *(v7 + 72) = v17;
  *(v7 + 80) = v18;
  [(CRImageReaderOutput *)self bottomRight];
  *(v7 + 88) = v19;
  *(v7 + 96) = v20;
  [(CRImageReaderOutput *)self bottomLeft];
  *(v7 + 104) = v21;
  *(v7 + 112) = v22;
  [(CRImageReaderOutput *)self baselineAngle];
  *(v7 + 12) = v23;
  [(CRImageReaderOutput *)self imageSize];
  *(v7 + 120) = v24;
  *(v7 + 128) = v25;
  components = [(CRImageReaderOutput *)self components];

  if (components)
  {
    v27 = MEMORY[0x1E695DF70];
    components2 = [(CRImageReaderOutput *)self components];
    v29 = [v27 arrayWithCapacity:{objc_msgSend(components2, "count")}];

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    components3 = [(CRImageReaderOutput *)self components];
    v31 = [components3 countByEnumeratingWithState:&v53 objects:v58 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v54;
      do
      {
        v34 = 0;
        do
        {
          if (*v54 != v33)
          {
            objc_enumerationMutation(components3);
          }

          v35 = [*(*(&v53 + 1) + 8 * v34) copyWithZone:zone];
          [v29 addObject:v35];

          ++v34;
        }

        while (v32 != v34);
        v32 = [components3 countByEnumeratingWithState:&v53 objects:v58 count:16];
      }

      while (v32);
    }

    v36 = *(v7 + 48);
    *(v7 + 48) = v29;
  }

  candidates = [(CRImageReaderOutput *)self candidates];

  if (candidates)
  {
    v38 = MEMORY[0x1E695DF70];
    candidates2 = [(CRImageReaderOutput *)self candidates];
    v40 = [v38 arrayWithCapacity:{objc_msgSend(candidates2, "count")}];

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    candidates3 = [(CRImageReaderOutput *)self candidates];
    v42 = [candidates3 countByEnumeratingWithState:&v49 objects:v57 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v50;
      do
      {
        v45 = 0;
        do
        {
          if (*v50 != v44)
          {
            objc_enumerationMutation(candidates3);
          }

          v46 = [*(*(&v49 + 1) + 8 * v45) copyWithZone:zone];
          [v40 addObject:v46];

          ++v45;
        }

        while (v43 != v45);
        v43 = [candidates3 countByEnumeratingWithState:&v49 objects:v57 count:16];
      }

      while (v43);
    }

    v47 = *(v7 + 40);
    *(v7 + 40) = v40;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:2 forKey:@"CROutputEncodingVersion"];
  crCodableDataRepresentation = [(CRImageReaderOutput *)self crCodableDataRepresentation];
  v5 = compressData(crCodableDataRepresentation);
  [coderCopy encodeObject:v5 forKey:@"CROutputEncodingData"];
  [coderCopy encodeInteger:objc_msgSend(crCodableDataRepresentation forKey:{"length"), @"CROutputEncodingUncompressedDataSize"}];
}

- (id)crCodableDataRepresentation
{
  v3 = objc_opt_new();
  type = [(CRImageReaderOutput *)self type];
  [CRCodingUtilities appendCodable:type toData:v3];

  stringValue = [(CRImageReaderOutput *)self stringValue];
  [CRCodingUtilities appendCodable:stringValue toData:v3];

  [CRCodingUtilities appendInteger:[(CRImageReaderOutput *)self confidence] toData:v3];
  [(CRImageReaderOutput *)self boundingBox];
  [CRCodingUtilities appendRect:v3 toData:?];
  [(CRImageReaderOutput *)self topLeft];
  [CRCodingUtilities appendPoint:v3 toData:?];
  [(CRImageReaderOutput *)self topRight];
  [CRCodingUtilities appendPoint:v3 toData:?];
  [(CRImageReaderOutput *)self bottomRight];
  [CRCodingUtilities appendPoint:v3 toData:?];
  [(CRImageReaderOutput *)self bottomLeft];
  [CRCodingUtilities appendPoint:v3 toData:?];
  [(CRImageReaderOutput *)self imageSize];
  [CRCodingUtilities appendSize:v3 toData:?];
  [CRCodingUtilities appendBool:[(CRImageReaderOutput *)self isTitle] toData:v3];
  [(CRImageReaderOutput *)self baselineAngle];
  [CRCodingUtilities appendFloat:v3 toData:?];
  components = [(CRImageReaderOutput *)self components];
  [CRCodingUtilities appendCodable:components toData:v3];

  candidates = [(CRImageReaderOutput *)self candidates];
  [CRCodingUtilities appendCodable:candidates toData:v3];

  return v3;
}

- (CRImageReaderOutput)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy decodeIntegerForKey:@"CROutputEncodingVersion"] == 2)
  {
    v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CROutputEncodingData"];
    v6 = uncompressDataOfSize(v5, [coderCopy decodeIntegerForKey:@"CROutputEncodingUncompressedDataSize"]);
    v7 = [(CRImageReaderOutput *)self initV2WithDataRepresentation:v6];
  }

  else
  {
    v7 = [(CRImageReaderOutput *)self initV1WithCoder:coderCopy];
  }

  return v7;
}

- (id)initV1WithCoder:(id)coder
{
  coderCopy = coder;
  v36.receiver = self;
  v36.super_class = CRImageReaderOutput;
  v5 = [(CRImageReaderOutput *)&v36 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CROutputType"];
    type = v5->_type;
    v5->_type = v6;

    if ([coderCopy containsValueForKey:@"CROutputStringValue"])
    {
      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CROutputStringValue"];
      stringValue = v5->_stringValue;
      v5->_stringValue = v8;
    }

    v5->_confidence = [coderCopy decodeInt32ForKey:@"CROutputConfidence"];
    [coderCopy decodeRectForKey:@"CROutputBoundingBox"];
    v5->_boundingBox.origin.x = v10;
    v5->_boundingBox.origin.y = v11;
    v5->_boundingBox.size.width = v12;
    v5->_boundingBox.size.height = v13;
    [coderCopy decodePointForKey:@"CROutputTopLeft"];
    v5->_topLeft.x = v14;
    v5->_topLeft.y = v15;
    [coderCopy decodePointForKey:@"CROutputTopRight"];
    v5->_topRight.x = v16;
    v5->_topRight.y = v17;
    [coderCopy decodePointForKey:@"CROutputBottomRight"];
    v5->_bottomRight.x = v18;
    v5->_bottomRight.y = v19;
    [coderCopy decodePointForKey:@"CROutputBottomLeft"];
    v5->_bottomLeft.x = v20;
    v5->_bottomLeft.y = v21;
    [coderCopy decodeSizeForKey:@"CROutputImageSize"];
    v5->_imageSize.width = v22;
    v5->_imageSize.height = v23;
    v5->_isTitle = [coderCopy decodeBoolForKey:@"CROutputIsTitle"];
    [coderCopy decodeFloatForKey:@"CROutputBaselineAngle"];
    v5->_baselineAngle = v24;
    if ([coderCopy containsValueForKey:@"CROutputComponents"])
    {
      v25 = MEMORY[0x1E695DFD8];
      v26 = objc_opt_class();
      v27 = [v25 setWithObjects:{v26, objc_opt_class(), 0}];
      v28 = [coderCopy decodeObjectOfClasses:v27 forKey:@"CROutputComponents"];
      components = v5->_components;
      v5->_components = v28;
    }

    if ([coderCopy containsValueForKey:@"CROutputCandidatesKey"])
    {
      v30 = MEMORY[0x1E695DFD8];
      v31 = objc_opt_class();
      v32 = [v30 setWithObjects:{v31, objc_opt_class(), 0}];
      v33 = [coderCopy decodeObjectOfClasses:v32 forKey:@"CROutputCandidatesKey"];
      candidates = v5->_candidates;
      v5->_candidates = v33;
    }
  }

  return v5;
}

- (id)initV2WithDataRepresentation:(id)representation
{
  representationCopy = representation;
  v31.receiver = self;
  v31.super_class = CRImageReaderOutput;
  v5 = [(CRImageReaderOutput *)&v31 init];
  if (v5)
  {
    v30 = 0;
    v6 = [CRCodingUtilities stringFromEncodingData:representationCopy offset:&v30];
    type = v5->_type;
    v5->_type = v6;

    v8 = [CRCodingUtilities stringFromEncodingData:representationCopy offset:&v30];
    stringValue = v5->_stringValue;
    v5->_stringValue = v8;

    v5->_confidence = [CRCodingUtilities integerFromEncodingData:representationCopy offset:&v30];
    [CRCodingUtilities rectFromEncodingData:representationCopy offset:&v30];
    v5->_boundingBox.origin.x = v10;
    v5->_boundingBox.origin.y = v11;
    v5->_boundingBox.size.width = v12;
    v5->_boundingBox.size.height = v13;
    [CRCodingUtilities pointFromEncodingData:representationCopy offset:&v30];
    v5->_topLeft.x = v14;
    v5->_topLeft.y = v15;
    [CRCodingUtilities pointFromEncodingData:representationCopy offset:&v30];
    v5->_topRight.x = v16;
    v5->_topRight.y = v17;
    [CRCodingUtilities pointFromEncodingData:representationCopy offset:&v30];
    v5->_bottomRight.x = v18;
    v5->_bottomRight.y = v19;
    [CRCodingUtilities pointFromEncodingData:representationCopy offset:&v30];
    v5->_bottomLeft.x = v20;
    v5->_bottomLeft.y = v21;
    [CRCodingUtilities sizeFromEncodingData:representationCopy offset:&v30];
    v5->_imageSize.width = v22;
    v5->_imageSize.height = v23;
    v5->_isTitle = [CRCodingUtilities BOOLFromEncodingData:representationCopy offset:&v30];
    [CRCodingUtilities floatFromEncodingData:representationCopy offset:&v30];
    v5->_baselineAngle = v24;
    v25 = [(CRImageReaderOutput *)v5 decodeOutputsArrayFromData:representationCopy offset:&v30 version:2];
    components = v5->_components;
    v5->_components = v25;

    v27 = [(CRImageReaderOutput *)v5 decodeOutputsArrayFromData:representationCopy offset:&v30 version:2];
    candidates = v5->_candidates;
    v5->_candidates = v27;
  }

  return v5;
}

- (BOOL)isEqualToImageReaderOutput:(id)output
{
  outputCopy = output;
  confidence = [(CRImageReaderOutput *)self confidence];
  if (confidence != [outputCopy confidence])
  {
    goto LABEL_11;
  }

  [(CRImageReaderOutput *)self boundingBox];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [outputCopy boundingBox];
  v18 = vabdd_f64(v13, v17);
  if (vabdd_f64(v11, v16) > 4.4408921e-16 || v18 > 4.4408921e-16)
  {
    goto LABEL_11;
  }

  v20 = vabdd_f64(v9, v15);
  if (vabdd_f64(v7, v14) > 4.4408921e-16 || v20 > 4.4408921e-16)
  {
    goto LABEL_11;
  }

  [(CRImageReaderOutput *)self topLeft:4.4408921e-16];
  v25 = v24;
  v27 = v26;
  [outputCopy topLeft];
  v22 = 0;
  if (v25 == v28 && v27 == v29)
  {
    [(CRImageReaderOutput *)self topRight];
    v31 = v30;
    v33 = v32;
    [outputCopy topRight];
    v22 = 0;
    if (v31 == v35 && v33 == v34)
    {
      [(CRImageReaderOutput *)self bottomRight];
      v37 = v36;
      v39 = v38;
      [outputCopy bottomRight];
      v22 = 0;
      if (v37 == v41 && v39 == v40)
      {
        [(CRImageReaderOutput *)self bottomLeft];
        v43 = v42;
        v45 = v44;
        [outputCopy bottomLeft];
        v22 = 0;
        if (v43 == v47 && v45 == v46)
        {
          [(CRImageReaderOutput *)self baselineAngle];
          v49 = v48;
          [outputCopy baselineAngle];
          if (v49 != v50)
          {
            goto LABEL_11;
          }

          isTitle = [(CRImageReaderOutput *)self isTitle];
          if (isTitle != [outputCopy isTitle])
          {
            goto LABEL_11;
          }

          type = [(CRImageReaderOutput *)self type];
          type2 = [outputCopy type];
          v54 = [type isEqualToString:type2];

          if (!v54)
          {
            goto LABEL_11;
          }

          stringValue = [(CRImageReaderOutput *)self stringValue];
          if (stringValue || ([outputCopy stringValue], (type2 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            stringValue2 = [(CRImageReaderOutput *)self stringValue];
            stringValue3 = [outputCopy stringValue];
            v54 = [stringValue2 isEqualToString:stringValue3];

            if (stringValue)
            {

              if (!v54)
              {
                goto LABEL_11;
              }
            }

            else
            {

              if ((v54 & 1) == 0)
              {
                goto LABEL_11;
              }
            }
          }

          components = [(CRImageReaderOutput *)self components];
          if (!components)
          {
            type2 = [outputCopy components];
            if (!type2)
            {
              goto LABEL_36;
            }
          }

          components2 = [(CRImageReaderOutput *)self components];
          components3 = [outputCopy components];
          v54 = [components2 isEqualToArray:components3];

          if (components)
          {

            if (v54)
            {
              goto LABEL_36;
            }

            goto LABEL_11;
          }

          if (v54)
          {
LABEL_36:
            candidates = [(CRImageReaderOutput *)self candidates];
            if (candidates || ([outputCopy candidates], (v54 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              candidates2 = [(CRImageReaderOutput *)self candidates];
              candidates3 = [outputCopy candidates];
              v22 = [candidates2 isEqualToArray:candidates3];

              if (candidates)
              {
LABEL_42:

                goto LABEL_12;
              }
            }

            else
            {
              v22 = 1;
            }

            goto LABEL_42;
          }

LABEL_11:
          v22 = 0;
        }
      }
    }
  }

LABEL_12:

  return v22;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CRImageReaderOutput *)self isEqualToImageReaderOutput:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  stringValue = [(CRImageReaderOutput *)self stringValue];
  v4 = [stringValue hash];
  components = [(CRImageReaderOutput *)self components];
  v6 = [components hash] ^ v4;
  candidates = [(CRImageReaderOutput *)self candidates];
  v8 = [candidates hash];

  return v6 ^ v8;
}

- (id)decodeOutputsArrayFromData:(id)data offset:(unint64_t *)offset version:(int64_t)version
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__CRImageReaderOutput_decodeOutputsArrayFromData_offset_version___block_invoke;
  v7[3] = &__block_descriptor_40_e37___NSObject_CRCodable__16__0__NSData_8l;
  v7[4] = version;
  v5 = [CRCodingUtilities arrayFromEncodingData:data offset:offset objectProviderBlock:v7];

  return v5;
}

id __65__CRImageReaderOutput_decodeOutputsArrayFromData_offset_version___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32) == 2)
  {
    v2 = a2;
    v3 = [[CRImageReaderOutput alloc] initV2WithDataRepresentation:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CGRect)boundingBox
{
  objc_copyStruct(v6, &self->_boundingBox, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGPoint)topLeft
{
  objc_copyStruct(v4, &self->_topLeft, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)topRight
{
  objc_copyStruct(v4, &self->_topRight, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)bottomRight
{
  objc_copyStruct(v4, &self->_bottomRight, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)bottomLeft
{
  objc_copyStruct(v4, &self->_bottomLeft, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGSize)imageSize
{
  objc_copyStruct(v4, &self->_imageSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end