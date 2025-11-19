@interface SBWindowHideRequest
+ (id)hideRequestWithWindowLevelRange:(SBWindowLevelRange_struct)a3 reason:(id)a4;
- (SBWindowLevelRange_struct)windowLevelRange;
- (id)description;
@end

@implementation SBWindowHideRequest

+ (id)hideRequestWithWindowLevelRange:(SBWindowLevelRange_struct)a3 reason:(id)a4
{
  end = a3.end;
  start = a3.start;
  v6 = a4;
  v7 = objc_alloc_init(SBWindowHideRequest);
  [(SBWindowHideRequest *)v7 setWindowLevelRange:start, end];
  [(SBWindowHideRequest *)v7 setReason:v6];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  [(SBWindowHideRequest *)self windowLevelRange];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%.f, %.f)", v4, v5];
  v7 = [(SBWindowHideRequest *)self reason];
  v8 = [v3 stringWithFormat:@"<SBWindowHideRequest: range = %@ reason = %@>", v6, v7];;

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