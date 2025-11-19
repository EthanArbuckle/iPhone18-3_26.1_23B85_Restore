@interface TVPMediaItemSkipInfo
- (TVPMediaItemSkipInfo)initWithType:(unint64_t)a3 start:(double)a4 duration:(double)a5 target:(double)a6 localizedTitle:(id)a7 skipIntroReportingType:(id)a8;
- (id)_typeDescription;
- (id)description;
@end

@implementation TVPMediaItemSkipInfo

- (TVPMediaItemSkipInfo)initWithType:(unint64_t)a3 start:(double)a4 duration:(double)a5 target:(double)a6 localizedTitle:(id)a7 skipIntroReportingType:(id)a8
{
  v14 = a7;
  v15 = a8;
  v23.receiver = self;
  v23.super_class = TVPMediaItemSkipInfo;
  v16 = [(TVPMediaItemSkipInfo *)&v23 init];
  v17 = v16;
  if (v16)
  {
    v16->_type = a3;
    v16->_start = a4;
    v16->_duration = a5;
    v16->_target = a6;
    v18 = [v14 copy];
    localizedTitle = v17->_localizedTitle;
    v17->_localizedTitle = v18;

    v20 = [v15 copy];
    skipIntroReportingType = v17->_skipIntroReportingType;
    v17->_skipIntroReportingType = v20;
  }

  return v17;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(TVPMediaItemSkipInfo *)self _typeDescription];
  v5 = [v3 stringWithFormat:@"type - %@, start - %f, duration - %f target - %f", v4, *&self->_start, *&self->_duration, *&self->_target];

  return v5;
}

- (id)_typeDescription
{
  v2 = [(TVPMediaItemSkipInfo *)self type];
  v3 = @"TVPMediaItemSkipTypeRecap";
  if (v2 != 2)
  {
    v3 = 0;
  }

  if (v2 == 1)
  {
    return @"TVPMediaItemSkipTypeIntro";
  }

  else
  {
    return v3;
  }
}

@end