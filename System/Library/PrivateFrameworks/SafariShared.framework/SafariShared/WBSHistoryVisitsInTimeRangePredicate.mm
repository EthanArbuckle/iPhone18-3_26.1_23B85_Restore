@interface WBSHistoryVisitsInTimeRangePredicate
- (BOOL)evaluateVisit:(id)visit;
- (NSString)description;
- (WBSHistoryVisitsInTimeRangePredicate)initWithCoder:(id)coder;
- (WBSHistoryVisitsInTimeRangePredicate)initWithStartDate:(id)date endDate:(id)endDate urlString:(id)string urlHash:(id)hash urlSalt:(id)salt;
- (id)statementForDatabase:(id)database cache:(id)cache fetchOptions:(unint64_t)options error:(id *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WBSHistoryVisitsInTimeRangePredicate

- (WBSHistoryVisitsInTimeRangePredicate)initWithStartDate:(id)date endDate:(id)endDate urlString:(id)string urlHash:(id)hash urlSalt:(id)salt
{
  dateCopy = date;
  endDateCopy = endDate;
  stringCopy = string;
  hashCopy = hash;
  saltCopy = salt;
  v28.receiver = self;
  v28.super_class = WBSHistoryVisitsInTimeRangePredicate;
  v17 = [(WBSHistoryVisitsInTimeRangePredicate *)&v28 init];
  if (v17)
  {
    [dateCopy timeIntervalSinceReferenceDate];
    v17->_startTime = v18;
    [endDateCopy timeIntervalSinceReferenceDate];
    v17->_endTime = v19;
    v20 = [stringCopy copy];
    urlString = v17->_urlString;
    v17->_urlString = v20;

    v22 = [hashCopy copy];
    urlHash = v17->_urlHash;
    v17->_urlHash = v22;

    v24 = [saltCopy copy];
    urlSalt = v17->_urlSalt;
    v17->_urlSalt = v24;

    v26 = v17;
  }

  return v17;
}

- (WBSHistoryVisitsInTimeRangePredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = WBSHistoryVisitsInTimeRangePredicate;
  v5 = [(WBSHistoryVisitsInTimeRangePredicate *)&v16 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"startTime"];
    v5->_startTime = v6;
    [coderCopy decodeDoubleForKey:@"endTime"];
    v5->_endTime = v7;
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    urlString = v5->_urlString;
    v5->_urlString = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"urlHash"];
    urlHash = v5->_urlHash;
    v5->_urlHash = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"urlSalt"];
    urlSalt = v5->_urlSalt;
    v5->_urlSalt = v12;

    v14 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeDouble:@"startTime" forKey:self->_startTime];
  [coderCopy encodeDouble:@"endTime" forKey:self->_endTime];
  [coderCopy encodeObject:self->_urlString forKey:@"url"];
  [coderCopy encodeObject:self->_urlHash forKey:@"urlHash"];
  [coderCopy encodeObject:self->_urlSalt forKey:@"urlSalt"];
}

- (id)statementForDatabase:(id)database cache:(id)cache fetchOptions:(unint64_t)options error:(id *)error
{
  cacheCopy = cache;
  v9 = cacheCopy;
  if (self->_urlString)
  {
    v10 = @"SELECT history_visits.* FROM history_visits INNER JOIN history_items ON history_items.id = history_visits.history_item WHERE visit_time > ? AND visit_time < ? AND history_items.url = ?";
  }

  else if (self->_urlHash)
  {
    v10 = @"SELECT history_visits.* FROM history_visits WHERE visit_time > ? AND visit_time < ? AND history_item IN (SELECT id from history_items WHERE safari_sha512(url, ?) = ?)";
  }

  else
  {
    v10 = @"SELECT history_visits.* FROM history_visits where visit_time > ? AND visit_time < ?";
  }

  v11 = [cacheCopy statementForQuery:v10 error:error];
  v12 = v11;
  if (v11)
  {
    if (self->_urlString)
    {
      SafariShared::_WBSSQLiteStatementBindAllParameters<1,double &,double &,NSString * {__strong}&>(v11, &self->_startTime, &self->_endTime, &self->_urlString);
    }

    else
    {
      p_startTime = &self->_startTime;
      p_endTime = &self->_endTime;
      if (self->_urlHash)
      {
        SafariShared::_WBSSQLiteStatementBindAllParameters<1,double &,double &,NSData * {__strong}&,NSData * {__strong}&>(v11, p_startTime, p_endTime, &self->_urlSalt, &self->_urlHash);
      }

      else
      {
        SafariShared::_WBSSQLiteStatementBindAllParameters<1,double &,double &>(v11, p_startTime, p_endTime);
      }
    }
  }

  return v12;
}

- (BOOL)evaluateVisit:(id)visit
{
  visitCopy = visit;
  [visitCopy visitTime];
  if (self->_startTime >= v5 || v5 >= self->_endTime)
  {
    v8 = 0;
  }

  else
  {
    if (self->_urlString)
    {
      item = [visitCopy item];
      urlString = [item urlString];
      v8 = [urlString isEqualToString:self->_urlString];
    }

    else
    {
      if (!self->_urlHash)
      {
        v8 = 1;
        goto LABEL_9;
      }

      urlSalt = self->_urlSalt;
      item = [visitCopy item];
      urlString = [item urlString];
      v10 = WBSHistorySHA512(urlSalt, urlString);
      v8 = [v10 isEqualToData:self->_urlHash];
    }
  }

LABEL_9:

  return v8;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  if (self->_urlString)
  {
    v5 = @"url";
  }

  else if (self->_urlHash)
  {
    v5 = @"hash";
  }

  else
  {
    v5 = @"range";
  }

  return [v3 stringWithFormat:@"<%@: %p; startTime = %f; endTime = %f; mode = %@>", v4, self, *&self->_startTime, *&self->_endTime, v5];
}

@end