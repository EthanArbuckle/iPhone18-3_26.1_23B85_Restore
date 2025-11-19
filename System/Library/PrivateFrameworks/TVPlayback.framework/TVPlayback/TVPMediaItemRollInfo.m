@interface TVPMediaItemRollInfo
- (TVPMediaItemRollInfo)initWithType:(unint64_t)a3 start:(double)a4 duration:(double)a5;
- (id)_typeDescription;
- (id)description;
@end

@implementation TVPMediaItemRollInfo

- (TVPMediaItemRollInfo)initWithType:(unint64_t)a3 start:(double)a4 duration:(double)a5
{
  v9.receiver = self;
  v9.super_class = TVPMediaItemRollInfo;
  result = [(TVPMediaItemRollInfo *)&v9 init];
  if (result)
  {
    result->_type = a3;
    result->_start = a4;
    result->_duration = a5;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(TVPMediaItemRollInfo *)self _typeDescription];
  v5 = v4;
  adamID = self->_adamID;
  if (self->_skippable)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [v3 stringWithFormat:@"type - %@, start - %f, duration - %f, adamID - %@, skippable - %@", v4, *&self->_start, *&self->_duration, self->_adamID, v7];

  return v8;
}

- (id)_typeDescription
{
  v2 = [(TVPMediaItemRollInfo *)self type];
  if (v2 - 1 > 2)
  {
    return 0;
  }

  else
  {
    return off_279D7D3C0[v2 - 1];
  }
}

@end