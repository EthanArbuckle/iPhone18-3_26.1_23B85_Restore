@interface TVPMediaItemSkipInfo
- (TVPMediaItemSkipInfo)initWithType:(unint64_t)type start:(double)start duration:(double)duration target:(double)target localizedTitle:(id)title skipIntroReportingType:(id)reportingType;
- (id)_typeDescription;
- (id)description;
@end

@implementation TVPMediaItemSkipInfo

- (TVPMediaItemSkipInfo)initWithType:(unint64_t)type start:(double)start duration:(double)duration target:(double)target localizedTitle:(id)title skipIntroReportingType:(id)reportingType
{
  titleCopy = title;
  reportingTypeCopy = reportingType;
  v23.receiver = self;
  v23.super_class = TVPMediaItemSkipInfo;
  v16 = [(TVPMediaItemSkipInfo *)&v23 init];
  v17 = v16;
  if (v16)
  {
    v16->_type = type;
    v16->_start = start;
    v16->_duration = duration;
    v16->_target = target;
    v18 = [titleCopy copy];
    localizedTitle = v17->_localizedTitle;
    v17->_localizedTitle = v18;

    v20 = [reportingTypeCopy copy];
    skipIntroReportingType = v17->_skipIntroReportingType;
    v17->_skipIntroReportingType = v20;
  }

  return v17;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  _typeDescription = [(TVPMediaItemSkipInfo *)self _typeDescription];
  v5 = [v3 stringWithFormat:@"type - %@, start - %f, duration - %f target - %f", _typeDescription, *&self->_start, *&self->_duration, *&self->_target];

  return v5;
}

- (id)_typeDescription
{
  type = [(TVPMediaItemSkipInfo *)self type];
  v3 = @"TVPMediaItemSkipTypeRecap";
  if (type != 2)
  {
    v3 = 0;
  }

  if (type == 1)
  {
    return @"TVPMediaItemSkipTypeIntro";
  }

  else
  {
    return v3;
  }
}

@end