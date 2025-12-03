@interface VGFrameRejectionState
+ (unint64_t)parseInternalRejection:(int)rejection;
- (BOOL)isEqual:(id)equal;
- (FrameRejectionState)internal;
- (VGFrameRejectionState)initWithCoder:(id)coder;
- (id).cxx_construct;
- (id)initFromInternalRejectionState:(FrameRejectionState *)state;
- (void)encodeWithCoder:(id)coder;
- (void)setInternal:(FrameRejectionState *)internal;
@end

@implementation VGFrameRejectionState

+ (unint64_t)parseInternalRejection:(int)rejection
{
  if (rejection > 0x2A)
  {
    return 1;
  }

  else
  {
    return qword_270FA6B80[rejection];
  }
}

- (id)initFromInternalRejectionState:(FrameRejectionState *)state
{
  v8.receiver = self;
  v8.super_class = VGFrameRejectionState;
  v4 = [(VGFrameRejectionState *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_internal.reason = state->reason;
    objc_storeStrong(&v4->_internal.description, state->description);
    *&v5->_internal.outOfFovOffset = *&state->outOfFovOffset;
    objc_storeStrong(&v5->_internal.debugDictionary, state->debugDictionary);
    v6 = v5;
  }

  return v5;
}

- (VGFrameRejectionState)initWithCoder:(id)coder
{
  v25[4] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v25[0] = objc_opt_class();
  v25[1] = objc_opt_class();
  v25[2] = objc_opt_class();
  v25[3] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:4];
  v6 = [coderCopy decodeIntForKey:@"reason"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"description"];
  [coderCopy decodeFloatForKey:@"outOfFovOffset"];
  v9 = v8;
  [coderCopy decodeFloatForKey:@"outOfDistanceRangeOffset"];
  v11 = v10;
  v12 = [MEMORY[0x277CBEB98] setWithArray:v5];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"debugDictionary"];

  v20 = v6;
  v14 = v7;
  v21 = v14;
  v22 = v9;
  v23 = v11;
  v15 = v13;
  v16 = v15;
  v24 = v15;
  if (self)
  {
    v17 = [(VGFrameRejectionState *)self initFromInternalRejectionState:&v20];
  }

  else
  {

    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt:self->_internal.reason forKey:@"reason"];
  [coderCopy encodeObject:self->_internal.description forKey:@"description"];
  *&v4 = self->_internal.outOfFovOffset;
  [coderCopy encodeFloat:@"outOfFovOffset" forKey:v4];
  *&v5 = self->_internal.outOfDistanceRangeOffset;
  [coderCopy encodeFloat:@"outOfDistanceRangeOffset" forKey:v5];
  [coderCopy encodeObject:self->_internal.debugDictionary forKey:@"debugDictionary"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (self->_internal.reason == *(v5 + 2) && ((description = self->_internal.description, !(description | v5[2])) || [(NSString *)description isEqual:?]) && self->_internal.outOfFovOffset == *(v5 + 6) && self->_internal.outOfDistanceRangeOffset == *(v5 + 7))
    {
      debugDictionary = self->_internal.debugDictionary;
      if (debugDictionary | v5[4])
      {
        v8 = [(NSDictionary *)debugDictionary isEqualToDictionary:?];
      }

      else
      {
        v8 = 1;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (FrameRejectionState)internal
{
  retstr->reason = self->_internal.reason;
  v5 = self->_internal.description;
  v6 = *&self->_internal.outOfFovOffset;
  debugDictionary = self->_internal.debugDictionary;
  retstr->description = v5;
  *&retstr->outOfFovOffset = v6;
  result = debugDictionary;
  retstr->debugDictionary = result;
  return result;
}

- (void)setInternal:(FrameRejectionState *)internal
{
  self->_internal.reason = internal->reason;
  objc_storeStrong(&self->_internal.description, internal->description);
  *&self->_internal.outOfFovOffset = *&internal->outOfFovOffset;
  objc_storeStrong(&self->_internal.debugDictionary, internal->debugDictionary);

  description = internal->description;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 4) = 0;
  *(self + 2) = 0;
  return self;
}

@end