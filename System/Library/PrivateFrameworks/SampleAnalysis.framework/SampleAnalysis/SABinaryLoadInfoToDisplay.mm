@interface SABinaryLoadInfoToDisplay
- (id)debugDescription;
@end

@implementation SABinaryLoadInfoToDisplay

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v7.receiver = self;
  v7.super_class = SABinaryLoadInfoToDisplay;
  v4 = [(SABinaryLoadInfo *)&v7 debugDescription];
  v5 = [v3 initWithFormat:@"%@, ho:0x%llx, z:%d", v4, self->_highestOffset, self->_isZerothAndOnlySegment];

  return v5;
}

@end