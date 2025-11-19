@interface VGFrameRejectionState
+ (unint64_t)parseInternalRejection:(int)a3;
- (BOOL)isEqual:(id)a3;
- (FrameRejectionState)internal;
- (VGFrameRejectionState)initWithCoder:(id)a3;
- (id).cxx_construct;
- (id)initFromInternalRejectionState:(FrameRejectionState *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setInternal:(FrameRejectionState *)a3;
@end

@implementation VGFrameRejectionState

+ (unint64_t)parseInternalRejection:(int)a3
{
  if (a3 > 0x2A)
  {
    return 1;
  }

  else
  {
    return qword_270FA6B80[a3];
  }
}

- (id)initFromInternalRejectionState:(FrameRejectionState *)a3
{
  v8.receiver = self;
  v8.super_class = VGFrameRejectionState;
  v4 = [(VGFrameRejectionState *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_internal.reason = a3->reason;
    objc_storeStrong(&v4->_internal.description, a3->description);
    *&v5->_internal.outOfFovOffset = *&a3->outOfFovOffset;
    objc_storeStrong(&v5->_internal.debugDictionary, a3->debugDictionary);
    v6 = v5;
  }

  return v5;
}

- (VGFrameRejectionState)initWithCoder:(id)a3
{
  v25[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v25[0] = objc_opt_class();
  v25[1] = objc_opt_class();
  v25[2] = objc_opt_class();
  v25[3] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:4];
  v6 = [v4 decodeIntForKey:@"reason"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"description"];
  [v4 decodeFloatForKey:@"outOfFovOffset"];
  v9 = v8;
  [v4 decodeFloatForKey:@"outOfDistanceRangeOffset"];
  v11 = v10;
  v12 = [MEMORY[0x277CBEB98] setWithArray:v5];
  v13 = [v4 decodeObjectOfClasses:v12 forKey:@"debugDictionary"];

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

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeInt:self->_internal.reason forKey:@"reason"];
  [v6 encodeObject:self->_internal.description forKey:@"description"];
  *&v4 = self->_internal.outOfFovOffset;
  [v6 encodeFloat:@"outOfFovOffset" forKey:v4];
  *&v5 = self->_internal.outOfDistanceRangeOffset;
  [v6 encodeFloat:@"outOfDistanceRangeOffset" forKey:v5];
  [v6 encodeObject:self->_internal.debugDictionary forKey:@"debugDictionary"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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

- (void)setInternal:(FrameRejectionState *)a3
{
  self->_internal.reason = a3->reason;
  objc_storeStrong(&self->_internal.description, a3->description);
  *&self->_internal.outOfFovOffset = *&a3->outOfFovOffset;
  objc_storeStrong(&self->_internal.debugDictionary, a3->debugDictionary);

  description = a3->description;
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