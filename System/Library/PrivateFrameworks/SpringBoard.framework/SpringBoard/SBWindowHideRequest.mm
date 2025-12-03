@interface SBWindowHideRequest
+ (id)hideRequestWithWindowLevelRange:(SBWindowLevelRange_struct)range reason:(id)reason;
- (SBWindowLevelRange_struct)windowLevelRange;
- (id)description;
@end

@implementation SBWindowHideRequest

+ (id)hideRequestWithWindowLevelRange:(SBWindowLevelRange_struct)range reason:(id)reason
{
  end = range.end;
  start = range.start;
  reasonCopy = reason;
  v7 = objc_alloc_init(SBWindowHideRequest);
  [(SBWindowHideRequest *)v7 setWindowLevelRange:start, end];
  [(SBWindowHideRequest *)v7 setReason:reasonCopy];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  [(SBWindowHideRequest *)self windowLevelRange];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%.f, %.f)", v4, v5];
  reason = [(SBWindowHideRequest *)self reason];
  v8 = [v3 stringWithFormat:@"<SBWindowHideRequest: range = %@ reason = %@>", v6, reason];;

  return v8;
}

- (SBWindowLevelRange_struct)windowLevelRange
{
  objc_copyStruct(v4, &self->_windowLevelRange, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.end = v3;
  result.start = v2;
  return result;
}

@end