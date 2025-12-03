@interface VisionCoreValueConfidenceCurve
+ (VisionCoreValueConfidenceCurve)curveWithValues:(const float *)values confidences:(const float *)confidences count:(unint64_t)count error:(id *)error;
+ (VisionCoreValueConfidenceCurve)curveWithValuesArray:(id)array confidencesArray:(id)confidencesArray error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (VisionCoreValueConfidenceCurve)initWithCoder:(id)coder;
- (float)confidenceForValue:(float)value;
- (float)maximumConfidence;
- (float)maximumValue;
- (float)minimumConfidence;
- (float)valueForConfidence:(float)confidence;
- (id).cxx_construct;
- (id)description;
- (uint64_t)_addValue:(float)value confidence:atIndex:error:;
- (uint64_t)_finalizeInitialization;
- (uint64_t)_prepareForCount:(void *)count error:;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VisionCoreValueConfidenceCurve

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

- (VisionCoreValueConfidenceCurve)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (!self)
  {
    goto LABEL_47;
  }

  v39.receiver = self;
  v39.super_class = VisionCoreValueConfidenceCurve;
  self = [(VisionCoreValueConfidenceCurve *)&v39 init];
  if (!self)
  {
    goto LABEL_47;
  }

  if ([coderCopy containsValueForKey:@"v.v"])
  {
    v5 = coderCopy;
    v6 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"v.v"];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 length];
      v9 = v8;
      if (v8 <= 3 || (v8 & 0xFFFFFFFFFFFFFFFELL) == 4)
      {
        goto LABEL_16;
      }

      v18 = v8 - 5;
      if (((v8 - 5) & 3) != 0)
      {
LABEL_30:
        v16 = [MEMORY[0x1E696ABC0] VisionCoreErrorForCorruptedResourceWithLocalizedDescription:@"unbalanced value/confidence data"];
        [v5 failWithError:v16];
        goto LABEL_45;
      }

      bytes = [v7 bytes];
      v28 = adler32(0, 0, 0);
      v29 = adler32(v28, bytes, v9 - 4);
      v30 = &bytes[v18];
      v31 = bytes[v18];
      v32 = v18 >> 2;
      std::vector<VisionCoreValueConfidencePoint>::reserve(&self->_increasingValuePoints.__begin_, v18 >> 2);
      if (v18)
      {
        if (v32 <= 1)
        {
          v32 = 1;
        }

        do
        {
          *&v39.receiver = v31 / 10.0;
          HIDWORD(v39.receiver) = bswap32(*bytes);
          std::vector<VisionCoreValueConfidencePoint>::push_back[abi:ne200100](&self->_increasingValuePoints, &v39);
          bytes += 4;
          ++v31;
          --v32;
        }

        while (v32);
      }

      if (bswap32(*(v30 + 1)) == v29)
      {
        v26 = 3;
        goto LABEL_43;
      }

LABEL_44:
      v16 = [MEMORY[0x1E696ABC0] VisionCoreErrorForCorruptedResourceWithLocalizedDescription:@"corrupted value/confidence data"];
      [v5 failWithError:v16];
      goto LABEL_45;
    }

LABEL_46:

    goto LABEL_47;
  }

  if (![coderCopy containsValueForKey:@"0.1"])
  {
    if (![coderCopy containsValueForKey:@"pts"])
    {
      v17 = [MEMORY[0x1E696ABC0] VisionCoreErrorForCorruptedResourceWithLocalizedDescription:@"missing curve data"];
      [coderCopy failWithError:v17];

LABEL_47:
      selfCopy = 0;
      goto LABEL_48;
    }

    v5 = coderCopy;
    v13 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"pts"];
    v7 = v13;
    if (!v13)
    {
      goto LABEL_46;
    }

    v14 = [v13 length];
    v15 = v14 - 4;
    if (v14 > 4)
    {
      if ((v15 & 7) != 0)
      {
        goto LABEL_30;
      }

      bytes2 = [v7 bytes];
      v34 = adler32(0, 0, 0);
      v35 = adler32(v34, bytes2, v15);
      v36 = v15 >> 3;
      std::vector<VisionCoreValueConfidencePoint>::reserve(&self->_increasingValuePoints.__begin_, v36);
      if (v36 <= 1)
      {
        v36 = 1;
      }

      do
      {
        v39.receiver = vrev32_s8(*bytes2);
        std::vector<VisionCoreValueConfidencePoint>::push_back[abi:ne200100](&self->_increasingValuePoints, &v39);
        ++bytes2;
        --v36;
      }

      while (v36);
      if (bswap32(bytes2->i32[0]) == v35)
      {
        v26 = 1;
        goto LABEL_43;
      }

      goto LABEL_44;
    }

LABEL_16:
    v16 = [MEMORY[0x1E696ABC0] VisionCoreErrorForCorruptedResourceWithLocalizedDescription:@"missing value/confidence data"];
    [v5 failWithError:v16];
LABEL_45:

    goto LABEL_46;
  }

  v5 = coderCopy;
  v10 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"0.1"];
  v7 = v10;
  if (!v10)
  {
    goto LABEL_46;
  }

  v11 = [v10 length];
  v12 = v11 - 4;
  if (v11 <= 4)
  {
    goto LABEL_16;
  }

  v19 = v12 / 5;
  if (-5 * (v12 / 5) != 4 - v11)
  {
    goto LABEL_30;
  }

  bytes3 = [v7 bytes];
  v21 = adler32(0, 0, 0);
  v22 = adler32(v21, bytes3, v12);
  std::vector<VisionCoreValueConfidencePoint>::reserve(&self->_increasingValuePoints.__begin_, v12 / 5);
  v24 = &bytes3[4 * v19];
  if (v12 >= 5)
  {
    if (v19 <= 1)
    {
      v25 = 1;
    }

    else
    {
      v25 = v12 / 5;
    }

    do
    {
      HIDWORD(v39.receiver) = bswap32(*bytes3);
      LOBYTE(v23) = *v24;
      *&v39.receiver = v23 / 10.0;
      std::vector<VisionCoreValueConfidencePoint>::push_back[abi:ne200100](&self->_increasingValuePoints, &v39);
      v24 = (v24 + 1);
      bytes3 += 4;
      --v25;
    }

    while (v25);
  }

  if (bswap32(*v24) != v22)
  {
    goto LABEL_44;
  }

  v26 = 2;
LABEL_43:
  self->_resolvedPointsDistribution_DO_NOT_DIRECTLY_ACCESS = v26;

  self->_confidencesAreIncreasing = *(self->_increasingValuePoints.__begin_ + 1) < *(self->_increasingValuePoints.__end_ - 1);
  self = self;
  selfCopy = self;
LABEL_48:

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (self)
  {
    resolvedPointsDistribution_DO_NOT_DIRECTLY_ACCESS = self->_resolvedPointsDistribution_DO_NOT_DIRECTLY_ACCESS;
    if (!resolvedPointsDistribution_DO_NOT_DIRECTLY_ACCESS)
    {
      begin = self->_increasingValuePoints.__begin_;
      end = self->_increasingValuePoints.__end_;
      if (begin == end)
      {
        resolvedPointsDistribution_DO_NOT_DIRECTLY_ACCESS = 3;
      }

      else
      {
        v7 = 0;
        v8 = 1;
        do
        {
          v9 = _tenthsForValue(*begin);
          if (v9 != 0 && v8)
          {
            if (v7 + 1 == v9)
            {
              v10 = v9;
            }

            else
            {
              v10 = v7;
            }

            if (v7)
            {
              v8 = v7 + 1 == v9;
            }

            else
            {
              v8 = 1;
            }

            if (v7)
            {
              v7 = v10;
            }

            else
            {
              v7 = v9;
            }
          }

          else if (!v9)
          {
            resolvedPointsDistribution_DO_NOT_DIRECTLY_ACCESS = 1;
            goto LABEL_22;
          }

          begin += 2;
        }

        while (begin != end);
        if (v8)
        {
          resolvedPointsDistribution_DO_NOT_DIRECTLY_ACCESS = 3;
        }

        else
        {
          resolvedPointsDistribution_DO_NOT_DIRECTLY_ACCESS = 2;
        }
      }

LABEL_22:
      self->_resolvedPointsDistribution_DO_NOT_DIRECTLY_ACCESS = resolvedPointsDistribution_DO_NOT_DIRECTLY_ACCESS;
    }

    v11 = coderCopy;
    v13 = self->_increasingValuePoints.__begin_;
    v12 = self->_increasingValuePoints.__end_;
    v14 = v12 - v13;
    if (resolvedPointsDistribution_DO_NOT_DIRECTLY_ACCESS == 2)
    {
      v23 = (v14 >> 1) + (v14 >> 3);
      v15 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:v23 + 4];
      mutableBytes = [v15 mutableBytes];
      v25 = mutableBytes;
      v26 = (mutableBytes + (v14 >> 1));
      v28 = self->_increasingValuePoints.__begin_;
      v27 = self->_increasingValuePoints.__end_;
      if (v28 != v27)
      {
        v29 = mutableBytes;
        do
        {
          *v29++ = bswap32(*(v28 + 1));
          *v26 = _tenthsForValue(*v28);
          v26 = (v26 + 1);
          v28 = (v28 + 8);
        }

        while (v28 != v27);
      }

      v30 = adler32(0, 0, 0);
      *v26 = bswap32(adler32(v30, v25, v23));
      [v11 VisionCoreEncodeNSData:v15 forKey:@"0.1"];
    }

    else if (resolvedPointsDistribution_DO_NOT_DIRECTLY_ACCESS == 3)
    {
      v15 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:(v14 >> 1) + 5];
      mutableBytes2 = [v15 mutableBytes];
      v17 = mutableBytes2;
      v18 = self->_increasingValuePoints.__begin_;
      v19 = self->_increasingValuePoints.__end_;
      v20 = mutableBytes2;
      if (v18 != v19)
      {
        v20 = mutableBytes2;
        do
        {
          *v20++ = bswap32(*(v18 + 1));
          v18 = (v18 + 8);
        }

        while (v18 != v19);
      }

      [(VisionCoreValueConfidenceCurve *)self minimumValue];
      *v20 = _tenthsForValue(v21);
      v22 = adler32(0, 0, 0);
      *(v20 + 1) = bswap32(adler32(v22, v17, (v14 >> 1) | 1));
      [v11 VisionCoreEncodeNSData:v15 forKey:@"v.v"];
    }

    else
    {
      v15 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:v14 | 4];
      mutableBytes3 = [v15 mutableBytes];
      v32 = mutableBytes3;
      v33 = mutableBytes3;
      if (v12 != v13)
      {
        v34 = v14 >> 3;
        v35 = self->_increasingValuePoints.__begin_;
        if ((v14 >> 3) <= 1)
        {
          v34 = 1;
        }

        v33 = mutableBytes3;
        do
        {
          v36 = *v35;
          v35 = (v35 + 8);
          *v33++ = vrev32_s8(v36);
          --v34;
        }

        while (v34);
      }

      v37 = adler32(0, 0, 0);
      v33->i32[0] = bswap32(adler32(v37, v32, v12 - v13));
      [v11 VisionCoreEncodeNSData:v15 forKey:@"pts"];
    }
  }

  else
  {
    v38 = coderCopy;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      if (self->_confidencesAreIncreasing == v5->_confidencesAreIncreasing && (begin = self->_increasingValuePoints.__begin_, end = self->_increasingValuePoints.__end_, v8 = v5->_increasingValuePoints.__begin_, end - begin == v5->_increasingValuePoints.__end_ - v8))
      {
        if (begin == end)
        {
          LOBYTE(v13) = 1;
        }

        else
        {
          do
          {
            v9 = *begin;
            v10 = *(begin + 1);
            begin = (begin + 8);
            v11 = *v8;
            v12 = v8[1];
            v8 += 2;
            v13 = v10 == v12 && v9 == v11;
          }

          while (v13 && begin != end);
        }
      }

      else
      {
        LOBYTE(v13) = 0;
      }
    }

    else
    {
      LOBYTE(v13) = 0;
    }
  }

  return v13;
}

- (id)description
{
  v3 = self->_increasingValuePoints.__end_ - self->_increasingValuePoints.__begin_;
  v4 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:4 * ((v3 >> 1) + (v3 >> 3))];
  begin = self->_increasingValuePoints.__begin_;
  end = self->_increasingValuePoints.__end_;
  if (begin != end)
  {
    v7 = 0;
    do
    {
      if (v7)
      {
        [v4 appendString:@" "];
      }

      [v4 appendFormat:@"(%g, %g)", *begin, *(begin + 1)];
      begin = (begin + 8);
      v7 = 1;
    }

    while (begin != end);
  }

  return v4;
}

- (float)confidenceForValue:(float)value
{
  begin = self->_increasingValuePoints.__begin_;
  if (*begin >= value)
  {
    return *(begin + 1);
  }

  v4 = (self->_increasingValuePoints.__end_ - begin) >> 3;
  if (v4 < 2)
  {
    return *(self->_increasingValuePoints.__end_ - 1);
  }

  v5 = (begin + 8);
  v6 = 1;
  while (*v5 <= value)
  {
    if (*v5 == value)
    {
      return *(begin + 2 * v6 + 1);
    }

    ++v6;
    v5 += 2;
    if (v4 == v6)
    {
      return *(self->_increasingValuePoints.__end_ - 1);
    }
  }

  v8 = (begin + 8 * v6);
  v9 = *(v8 - 2);
  v10 = *v5 - v9;
  if (v10 == 0.0)
  {
    v11 = 0.5;
  }

  else
  {
    v11 = (value - v9) / v10;
  }

  if (self->_confidencesAreIncreasing)
  {
    v12 = (v8 - 2);
  }

  else
  {
    v11 = 1.0 - v11;
    v12 = v8;
  }

  v13 = *(v12 + 1);
  if (self->_confidencesAreIncreasing)
  {
    v14 = v8;
  }

  else
  {
    v14 = (v8 - 2);
  }

  return v13 + (v11 * (*(v14 + 1) - v13));
}

- (float)valueForConfidence:(float)confidence
{
  begin = self->_increasingValuePoints.__begin_;
  v4 = (self->_increasingValuePoints.__end_ - begin) >> 3;
  v5 = *(begin + 1);
  if (!self->_confidencesAreIncreasing)
  {
    if (v5 > confidence)
    {
      if (v4 >= 2)
      {
        v6 = (begin + 8);
        v9 = v4 - 1;
        while (1)
        {
          v10 = v6[1];
          if (v10 < confidence)
          {
            break;
          }

          if (v10 == confidence)
          {
            return *v6;
          }

          v6 += 2;
          if (!--v9)
          {
            return *(self->_increasingValuePoints.__end_ - 2);
          }
        }

        v15 = *(v6 - 1) - v10;
        if (v15 == 0.0)
        {
          v16 = 0.5;
        }

        else
        {
          v16 = (confidence - v10) / v15;
        }

        v14 = 1.0 - v16;
        return *(v6 - 2) + (v14 * (*v6 - *(v6 - 2)));
      }

      return *(self->_increasingValuePoints.__end_ - 2);
    }

    return *begin;
  }

  if (v5 >= confidence)
  {
    return *begin;
  }

  if (v4 < 2)
  {
    return *(self->_increasingValuePoints.__end_ - 2);
  }

  v6 = (begin + 8);
  v7 = v4 - 1;
  while (1)
  {
    v8 = v6[1];
    if (v8 > confidence)
    {
      break;
    }

    if (v8 == confidence)
    {
      return *v6;
    }

    v6 += 2;
    if (!--v7)
    {
      return *(self->_increasingValuePoints.__end_ - 2);
    }
  }

  v12 = *(v6 - 1);
  v13 = v8 - v12;
  if (v13 == 0.0)
  {
    v14 = 0.5;
  }

  else
  {
    v14 = (confidence - v12) / v13;
  }

  return *(v6 - 2) + (v14 * (*v6 - *(v6 - 2)));
}

- (float)maximumConfidence
{
  if (self && self->_confidencesAreIncreasing)
  {
    v2 = ((self->_increasingValuePoints.__end_ - self->_increasingValuePoints.__begin_) >> 3) - 1;
  }

  else
  {
    v2 = 0;
  }

  return *(self->_increasingValuePoints.__begin_ + 2 * v2 + 1);
}

- (float)minimumConfidence
{
  if (self && !self->_confidencesAreIncreasing)
  {
    v2 = ((self->_increasingValuePoints.__end_ - self->_increasingValuePoints.__begin_) >> 3) - 1;
  }

  else
  {
    v2 = 0;
  }

  return *(self->_increasingValuePoints.__begin_ + 2 * v2 + 1);
}

- (float)maximumValue
{
  if (self)
  {
    begin = self->_increasingValuePoints.__begin_;
    v3 = ((self->_increasingValuePoints.__end_ - begin) >> 3) - 1;
  }

  else
  {
    v3 = 0;
    begin = MEMORY[8];
  }

  return *(begin + 2 * v3);
}

+ (VisionCoreValueConfidenceCurve)curveWithValuesArray:(id)array confidencesArray:(id)confidencesArray error:(id *)error
{
  arrayCopy = array;
  confidencesArrayCopy = confidencesArray;
  v10 = [arrayCopy count];
  v11 = [confidencesArrayCopy count];
  if (v10 == v11)
  {
    v12 = [self alloc];
    if (v12)
    {
      v23.receiver = v12;
      v23.super_class = VisionCoreValueConfidenceCurve;
      v13 = objc_msgSendSuper2(&v23, sel_init);
    }

    else
    {
      v13 = 0;
    }

    if ([(VisionCoreValueConfidenceCurve *)v13 _prepareForCount:v10 error:error])
    {
      if (!v10)
      {
LABEL_9:
        [(VisionCoreValueConfidenceCurve *)v13 _finalizeInitialization];
        error = v13;
LABEL_13:

        goto LABEL_14;
      }

      v14 = 0;
      while (1)
      {
        v15 = [arrayCopy objectAtIndexedSubscript:v14];
        [v15 floatValue];
        v17 = v16;
        v18 = [confidencesArrayCopy objectAtIndexedSubscript:v14];
        [v18 floatValue];
        v20 = [VisionCoreValueConfidenceCurve _addValue:v13 confidence:v17 atIndex:v19 error:?];

        if ((v20 & 1) == 0)
        {
          break;
        }

        if (v10 == ++v14)
        {
          goto LABEL_9;
        }
      }
    }

    error = 0;
    goto LABEL_13;
  }

  if (error)
  {
    v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Cannot create a curve from %lu values and %lu confidences", v10, v11];
    *error = [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidArgumentWithLocalizedDescription:v21];

    error = 0;
  }

LABEL_14:

  return error;
}

- (uint64_t)_prepareForCount:(void *)count error:
{
  if (result)
  {
    if (a2)
    {
      std::vector<VisionCoreValueConfidencePoint>::reserve((result + 8), a2);
      return 1;
    }

    else if (count)
    {
      v4 = [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidOperationWithLocalizedDescription:@"value/confidence curve must have at least one data point"];
      v5 = v4;
      result = 0;
      *count = v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (uint64_t)_addValue:(float)value confidence:atIndex:error:
{
  if (result)
  {
    v3 = __PAIR64__(LODWORD(value), LODWORD(a2));
    std::vector<VisionCoreValueConfidencePoint>::push_back[abi:ne200100](result + 8, &v3);
    return 1;
  }

  return result;
}

- (uint64_t)_finalizeInitialization
{
  v7 = result;
LABEL_2:
  v8 = a2 - 2;
  v9 = v7;
  while (1)
  {
    v7 = v9;
    v10 = (a2 - v9) >> 3;
    if (v10 <= 2)
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        if (*v8 >= *v9)
        {
          return result;
        }

        v63 = *v9;
LABEL_109:
        *v9 = *v8;
LABEL_110:
        *v8 = v63;
        return result;
      }

      goto LABEL_10;
    }

    if (v10 == 3)
    {
      break;
    }

    if (v10 == 4)
    {
      v66 = *(v9 + 8);
      v67 = *v9;
      v68 = *(v9 + 16);
      if (v66 >= *v9)
      {
        if (v68 < v66)
        {
          v112 = *(v9 + 8);
          v111 = *(v9 + 16);
          *(v9 + 8) = v111;
          *(v9 + 16) = v112;
          v68 = *&v112;
          if (v67 > *&v111)
          {
            v113 = *v9;
            *v9 = v111;
            *(v9 + 8) = v113;
          }
        }
      }

      else
      {
        v69 = *v9;
        LODWORD(v70) = *v9;
        if (v68 < v66)
        {
          *v9 = *(v9 + 16);
          goto LABEL_180;
        }

        *v9 = *(v9 + 8);
        *(v9 + 8) = v69;
        if (v68 < v70)
        {
          *(v9 + 8) = *(v9 + 16);
LABEL_180:
          *(v9 + 16) = v69;
          v68 = v70;
        }
      }

      if (*v8 < v68)
      {
        v119 = *(v9 + 16);
        *(v9 + 16) = *v8;
        *v8 = v119;
        if (*(v9 + 16) < *(v9 + 8))
        {
          v121 = *(v9 + 8);
          v120 = *(v9 + 16);
          *(v9 + 8) = v120;
          *(v9 + 16) = v121;
          if (*v9 > *&v120)
          {
            v122 = *v9;
            *v9 = v120;
            *(v9 + 8) = v122;
          }
        }
      }

      return result;
    }

    if (v10 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,-[VisionCoreValueConfidenceCurve _finalizeInitialization]::$_0 &,VisionCoreValueConfidencePoint *,0>(v9, (v9 + 8), (v9 + 16), (v9 + 24), a2 - 1);
    }

LABEL_10:
    if (v10 <= 23)
    {
      v71 = (v9 + 8);
      v73 = v9 == a2 || v71 == a2;
      if (a4)
      {
        if (!v73)
        {
          v74 = 0;
          v75 = v9;
          do
          {
            v76 = v71;
            v77 = *(v75 + 8);
            if (v77 < *v75)
            {
              v78 = *(v75 + 12);
              v79 = v74;
              while (1)
              {
                *(v9 + v79 + 8) = *(v9 + v79);
                if (!v79)
                {
                  break;
                }

                v80 = *(v9 + v79 - 8);
                v79 -= 8;
                if (v80 <= v77)
                {
                  v81 = v9 + v79 + 8;
                  goto LABEL_129;
                }
              }

              v81 = v9;
LABEL_129:
              *v81 = v77;
              *(v81 + 4) = v78;
            }

            v71 = v76 + 2;
            v74 += 8;
            v75 = v76;
          }

          while (v76 + 2 != a2);
        }
      }

      else if (!v73)
      {
        do
        {
          v114 = v71;
          v115 = *(v7 + 8);
          if (v115 < *v7)
          {
            v116 = *(v7 + 12);
            do
            {
              v117 = v71;
              v118 = *(v71 - 1);
              v71 -= 2;
              *v117 = v118;
            }

            while (*(v117 - 4) > v115);
            *v71 = v115;
            *(v71 + 1) = v116;
          }

          v71 = (v114 + 8);
          v7 = v114;
        }

        while ((v114 + 8) != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v9 != a2)
      {
        v82 = (v10 - 2) >> 1;
        v83 = v82;
        do
        {
          v84 = v83;
          if (v82 >= v83)
          {
            v85 = (2 * v83) | 1;
            v86 = (v9 + 8 * v85);
            if (2 * v84 + 2 < v10 && *v86 < v86[2])
            {
              v86 += 2;
              v85 = 2 * v84 + 2;
            }

            v87 = (v9 + 8 * v84);
            v88 = *v87;
            if (*v86 >= *v87)
            {
              v89 = *(v87 + 1);
              do
              {
                v90 = v87;
                v87 = v86;
                *v90 = *v86;
                if (v82 < v85)
                {
                  break;
                }

                v91 = 2 * v85;
                v85 = (2 * v85) | 1;
                v86 = (v9 + 8 * v85);
                v92 = v91 + 2;
                if (v92 < v10 && *v86 < v86[2])
                {
                  v86 += 2;
                  v85 = v92;
                }
              }

              while (*v86 >= v88);
              *v87 = v88;
              *(v87 + 1) = v89;
            }
          }

          v83 = v84 - 1;
        }

        while (v84);
        do
        {
          v93 = 0;
          v94 = *v9;
          v95 = v9;
          do
          {
            v96 = v95;
            v97 = &v95[2 * v93];
            v95 = v97 + 2;
            v98 = 2 * v93;
            v93 = (2 * v93) | 1;
            v99 = v98 + 2;
            if (v99 < v10)
            {
              v101 = v97[4];
              v100 = v97 + 4;
              if (*(v100 - 2) < v101)
              {
                v95 = v100;
                v93 = v99;
              }
            }

            *v96 = *v95;
          }

          while (v93 <= ((v10 - 2) >> 1));
          a2 -= 2;
          if (v95 == a2)
          {
            *v95 = v94;
          }

          else
          {
            *v95 = *a2;
            *a2 = v94;
            v102 = (v95 - v9 + 8) >> 3;
            v103 = v102 < 2;
            v104 = v102 - 2;
            if (!v103)
            {
              v105 = v104 >> 1;
              v106 = (v9 + 8 * v105);
              v107 = *v95;
              if (*v106 < *v95)
              {
                v108 = *(v95 + 1);
                do
                {
                  v109 = v95;
                  v95 = v106;
                  *v109 = *v106;
                  if (!v105)
                  {
                    break;
                  }

                  v105 = (v105 - 1) >> 1;
                  v106 = (v9 + 8 * v105);
                }

                while (*v106 < v107);
                *v95 = v107;
                *(v95 + 1) = v108;
              }
            }
          }

          v103 = v10-- <= 2;
        }

        while (!v103);
      }

      return result;
    }

    v11 = (v9 + 8 * (v10 >> 1));
    v12 = v11;
    v13 = *v8;
    if (v10 >= 0x81)
    {
      v14 = *v11;
      if (*v11 >= *v9)
      {
        if (v13 < v14)
        {
          v18 = *v11;
          *v11 = *v8;
          *v8 = v18;
          if (*v11 < *v9)
          {
            v19 = *v9;
            *v9 = *v11;
            *v11 = v19;
          }
        }
      }

      else
      {
        v15 = *v9;
        if (v13 < v14)
        {
          *v9 = *v8;
          goto LABEL_27;
        }

        *v9 = *v11;
        *v11 = v15;
        if (*v8 < *&v15)
        {
          *v11 = *v8;
LABEL_27:
          *v8 = v15;
        }
      }

      v22 = v11 - 2;
      v23 = *(v11 - 2);
      v24 = *(a2 - 4);
      if (v23 >= *(v9 + 8))
      {
        if (v24 < v23)
        {
          v26 = *v22;
          *v22 = *(a2 - 2);
          *(a2 - 2) = v26;
          if (*v22 < *(v9 + 8))
          {
            v27 = *(v9 + 8);
            *(v9 + 8) = *v22;
            *v22 = v27;
          }
        }
      }

      else
      {
        v25 = *(v9 + 8);
        if (v24 < v23)
        {
          *(v9 + 8) = *(a2 - 2);
          goto LABEL_39;
        }

        *(v9 + 8) = *v22;
        *v22 = v25;
        if (*(a2 - 4) < *&v25)
        {
          *v22 = *(a2 - 2);
LABEL_39:
          *(a2 - 2) = v25;
        }
      }

      v29 = v11[2];
      v28 = (v11 + 2);
      v30 = v29;
      v31 = *(a2 - 6);
      if (v29 >= *(v9 + 16))
      {
        if (v31 < v30)
        {
          v33 = *v28;
          *v28 = *(a2 - 3);
          *(a2 - 3) = v33;
          if (*v28 < *(v9 + 16))
          {
            v34 = *(v9 + 16);
            *(v9 + 16) = *v28;
            *v28 = v34;
          }
        }
      }

      else
      {
        v32 = *(v9 + 16);
        if (v31 < v30)
        {
          *(v9 + 16) = *(a2 - 3);
          goto LABEL_48;
        }

        *(v9 + 16) = *v28;
        *v28 = v32;
        if (*(a2 - 6) < *&v32)
        {
          *v28 = *(a2 - 3);
LABEL_48:
          *(a2 - 3) = v32;
        }
      }

      v35 = *v12;
      v36 = *v22;
      v37 = *v28;
      if (*v12 >= *v22)
      {
        v38 = *v12;
        if (v37 < v35)
        {
          v39 = *v28;
          *v12 = *v28;
          *v28 = v38;
          if (v36 <= *&v39)
          {
            v38 = v39;
          }

          else
          {
            v38 = *v22;
            *v22 = v39;
            *v12 = v38;
          }
        }
      }

      else
      {
        v38 = *v22;
        if (v37 >= v35)
        {
          *v22 = *v12;
          *v12 = v38;
          if (v37 < *&v38)
          {
            v40 = *v28;
            *v12 = *v28;
            *v28 = v38;
            v38 = v40;
          }
        }

        else
        {
          *v22 = *v28;
          *v28 = v38;
          v38 = *v12;
        }
      }

      v41 = *v9;
      *v9 = v38;
      *v12 = v41;
      goto LABEL_59;
    }

    v16 = *v9;
    if (*v9 >= *v11)
    {
      if (v13 < v16)
      {
        v20 = *v9;
        *v9 = *v8;
        *v8 = v20;
        if (*v9 < *v11)
        {
          v21 = *v11;
          *v11 = *v9;
          *v9 = v21;
        }
      }

      goto LABEL_59;
    }

    v17 = *v11;
    if (v13 < v16)
    {
      *v11 = *v8;
LABEL_36:
      *v8 = v17;
      goto LABEL_59;
    }

    *v11 = *v9;
    *v9 = v17;
    if (*v8 < *&v17)
    {
      *v9 = *v8;
      goto LABEL_36;
    }

LABEL_59:
    --a3;
    if (a4)
    {
      v42 = *v9;
LABEL_62:
      v43 = *(v9 + 4);
      v44 = v9;
      do
      {
        v45 = v44;
        v46 = *(v44 + 8);
        v44 += 8;
      }

      while (v46 < v42);
      v47 = a2;
      if (v45 == v9)
      {
        v47 = a2;
        do
        {
          if (v44 >= v47)
          {
            break;
          }

          v49 = *(v47 - 2);
          v47 -= 2;
        }

        while (v49 >= v42);
      }

      else
      {
        do
        {
          v48 = *(v47 - 2);
          v47 -= 2;
        }

        while (v48 >= v42);
      }

      v9 = v44;
      if (v44 < v47)
      {
        v50 = v47;
        do
        {
          v51 = *v9;
          *v9 = *v50;
          *v50 = v51;
          do
          {
            v52 = *(v9 + 8);
            v9 += 8;
          }

          while (v52 < v42);
          do
          {
            v53 = *(v50 - 2);
            v50 -= 2;
          }

          while (v53 >= v42);
        }

        while (v9 < v50);
      }

      if (v9 - 8 != v7)
      {
        *v7 = *(v9 - 8);
      }

      *(v9 - 8) = v42;
      *(v9 - 4) = v43;
      if (v44 < v47)
      {
        goto LABEL_81;
      }

      v54 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[VisionCoreValueConfidenceCurve _finalizeInitialization]::$_0 &,VisionCoreValueConfidencePoint *>(v7, v9 - 8);
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[VisionCoreValueConfidenceCurve _finalizeInitialization]::$_0 &,VisionCoreValueConfidencePoint *>(v9, a2);
      if (result)
      {
        a2 = (v9 - 8);
        if (!v54)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v54)
      {
LABEL_81:
        result = std::__introsort<std::_ClassicAlgPolicy,[VisionCoreValueConfidenceCurve _finalizeInitialization]::$_0 &,VisionCoreValueConfidencePoint *,false>(v7, v9 - 8, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v42 = *v9;
      if (*(v9 - 8) < *v9)
      {
        goto LABEL_62;
      }

      if (*v8 <= v42)
      {
        v56 = v9 + 8;
        do
        {
          v9 = v56;
          if (v56 >= a2)
          {
            break;
          }

          v56 += 8;
        }

        while (*v9 <= v42);
      }

      else
      {
        do
        {
          v55 = *(v9 + 8);
          v9 += 8;
        }

        while (v55 <= v42);
      }

      v57 = a2;
      if (v9 < a2)
      {
        v57 = a2;
        do
        {
          v58 = *(v57 - 2);
          v57 -= 2;
        }

        while (v58 > v42);
      }

      v59 = *(v7 + 4);
      while (v9 < v57)
      {
        v60 = *v9;
        *v9 = *v57;
        *v57 = v60;
        do
        {
          v61 = *(v9 + 8);
          v9 += 8;
        }

        while (v61 <= v42);
        do
        {
          v62 = *(v57 - 2);
          v57 -= 2;
        }

        while (v62 > v42);
      }

      if (v9 - 8 != v7)
      {
        *v7 = *(v9 - 8);
      }

      a4 = 0;
      *(v9 - 8) = v42;
      *(v9 - 4) = v59;
    }
  }

  v64 = *(v9 + 8);
  v65 = *v8;
  if (v64 >= *v9)
  {
    if (v65 < v64)
    {
      v110 = *(v9 + 8);
      *(v9 + 8) = *v8;
      *v8 = v110;
      if (*(v9 + 8) < *v9)
      {
        *v9 = vextq_s8(*v9, *v9, 8uLL);
      }
    }
  }

  else
  {
    v63 = *v9;
    if (v65 < v64)
    {
      goto LABEL_109;
    }

    *v9 = *(v9 + 8);
    *(v9 + 8) = v63;
    if (*v8 < *&v63)
    {
      *(v9 + 8) = *v8;
      goto LABEL_110;
    }
  }

  return result;
}

+ (VisionCoreValueConfidenceCurve)curveWithValues:(const float *)values confidences:(const float *)confidences count:(unint64_t)count error:(id *)error
{
  v10 = [self alloc];
  if (v10)
  {
    v15.receiver = v10;
    v15.super_class = VisionCoreValueConfidenceCurve;
    v11 = objc_msgSendSuper2(&v15, sel_init);
  }

  else
  {
    v11 = 0;
  }

  if ([(VisionCoreValueConfidenceCurve *)v11 _prepareForCount:count error:error])
  {
    if (!count)
    {
LABEL_8:
      [(VisionCoreValueConfidenceCurve *)v11 _finalizeInitialization];
      v13 = v11;
      goto LABEL_10;
    }

    v12 = 0;
    while (([VisionCoreValueConfidenceCurve _addValue:v11 confidence:values[v12] atIndex:confidences[v12] error:?]& 1) != 0)
    {
      if (count == ++v12)
      {
        goto LABEL_8;
      }
    }
  }

  v13 = 0;
LABEL_10:

  return v13;
}

@end