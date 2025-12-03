@interface WBSHistoryTombstone
- (BOOL)matchesVisitTime:(double)time urlString:(id)string;
- (NSDictionary)dictionaryRepresentation;
- (WBSHistoryTombstone)initWithCoder:(id)coder;
- (WBSHistoryTombstone)initWithDictionary:(id)dictionary;
- (WBSHistoryTombstone)initWithSQLiteRow:(id)row crypto:(id)crypto;
- (WBSHistoryTombstone)initWithURLString:(id)string urlHash:(id)hash urlSalt:(id)salt startTime:(double)time endTime:(double)endTime generation:(int64_t)generation;
- (id)description;
- (id)secureTombstoneWithSalt:(id)salt;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WBSHistoryTombstone

- (WBSHistoryTombstone)initWithURLString:(id)string urlHash:(id)hash urlSalt:(id)salt startTime:(double)time endTime:(double)endTime generation:(int64_t)generation
{
  stringCopy = string;
  hashCopy = hash;
  saltCopy = salt;
  v26.receiver = self;
  v26.super_class = WBSHistoryTombstone;
  v17 = [(WBSHistoryTombstone *)&v26 init];
  if (v17)
  {
    v18 = [stringCopy copy];
    urlString = v17->_urlString;
    v17->_urlString = v18;

    v20 = [hashCopy copy];
    urlHash = v17->_urlHash;
    v17->_urlHash = v20;

    v22 = [saltCopy copy];
    urlSalt = v17->_urlSalt;
    v17->_urlSalt = v22;

    v17->_startTime = time;
    v17->_endTime = endTime;
    v17->_generation = generation;
    v24 = v17;
  }

  return v17;
}

- (WBSHistoryTombstone)initWithSQLiteRow:(id)row crypto:(id)crypto
{
  rowCopy = row;
  cryptoCopy = crypto;
  v8 = [rowCopy dataAtIndex:3];
  if (v8)
  {
    v9 = [cryptoCopy decryptDictionary:v8];
    v10 = [v9 safari_stringForKey:@"url"];
    v11 = [v9 safari_dataForKey:@"url_hash"];
    v12 = [v9 safari_dataForKey:@"url_salt"];
  }

  else
  {
    v12 = 0;
    v11 = 0;
    v10 = 0;
  }

  [rowCopy doubleAtIndex:1];
  v14 = v13;
  [rowCopy doubleAtIndex:2];
  v16 = -[WBSHistoryTombstone initWithURLString:urlHash:urlSalt:startTime:endTime:generation:](self, "initWithURLString:urlHash:urlSalt:startTime:endTime:generation:", v10, v11, v12, [rowCopy int64AtIndex:4], v14, v15);

  return v16;
}

- (WBSHistoryTombstone)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy safari_stringForKey:@"URL"];
  v6 = [dictionaryCopy safari_dataForKey:@"URLHash"];
  v7 = [dictionaryCopy safari_dataForKey:@"URLSalt"];
  v8 = [dictionaryCopy safari_numberForKey:@"StartTime"];
  [v8 doubleValue];
  v10 = v9;

  v11 = [dictionaryCopy safari_numberForKey:@"EndTime"];
  [v11 doubleValue];
  v13 = v12;

  v14 = [(WBSHistoryTombstone *)self initWithURLString:v5 urlHash:v6 urlSalt:v7 startTime:0 endTime:v10 generation:v13];
  return v14;
}

- (NSDictionary)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSString *)self->_urlString length])
  {
    [dictionary setObject:self->_urlString forKeyedSubscript:@"URL"];
  }

  if ([(NSData *)self->_urlHash length])
  {
    [dictionary setObject:self->_urlHash forKeyedSubscript:@"URLHash"];
  }

  if ([(NSData *)self->_urlSalt length])
  {
    [dictionary setObject:self->_urlSalt forKeyedSubscript:@"URLSalt"];
  }

  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_startTime];
  [dictionary setObject:v4 forKeyedSubscript:@"StartTime"];

  v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_endTime];
  [dictionary setObject:v5 forKeyedSubscript:@"EndTime"];

  return dictionary;
}

- (BOOL)matchesVisitTime:(double)time urlString:(id)string
{
  v9 = (![(NSString *)self->_urlString length]|| [(NSString *)self->_urlString isEqualToString:v6]) && (![(NSData *)self->_urlHash length]|| (urlHash = self->_urlHash, WBSHistorySHA512(self->_urlSalt, v6), v8 = v6 = string;

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p urlString = %@; startTime = %lf; endTime = %lf>", v5, self, self->_urlString, *&self->_startTime, *&self->_endTime];;

  return v6;
}

- (id)secureTombstoneWithSalt:(id)salt
{
  saltCopy = salt;
  if (![(NSString *)self->_urlString length])
  {
    selfCopy = self;
    goto LABEL_5;
  }

  if ([(NSData *)self->_urlHash length])
  {
    selfCopy = [[WBSHistoryTombstone alloc] initWithURLString:0 urlHash:self->_urlHash urlSalt:self->_urlSalt startTime:self->_generation endTime:self->_startTime generation:self->_endTime];
LABEL_5:
    v6 = selfCopy;
    goto LABEL_7;
  }

  v7 = [WBSHistoryTombstone alloc];
  v8 = WBSHistorySHA512(saltCopy, self->_urlString);
  v6 = [(WBSHistoryTombstone *)v7 initWithURLString:0 urlHash:v8 urlSalt:saltCopy startTime:self->_generation endTime:self->_startTime generation:self->_endTime];

LABEL_7:

  return v6;
}

- (WBSHistoryTombstone)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"URLHash"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"URLSalt"];
  [coderCopy decodeDoubleForKey:@"StartTime"];
  v9 = v8;
  [coderCopy decodeDoubleForKey:@"EndTime"];
  v11 = -[WBSHistoryTombstone initWithURLString:urlHash:urlSalt:startTime:endTime:generation:](self, "initWithURLString:urlHash:urlSalt:startTime:endTime:generation:", v5, v6, v7, [coderCopy decodeInt64ForKey:@"Generation"], v9, v10);

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_urlString forKey:@"URL"];
  [coderCopy encodeObject:self->_urlHash forKey:@"URLHash"];
  [coderCopy encodeObject:self->_urlSalt forKey:@"URLSalt"];
  [coderCopy encodeDouble:@"StartTime" forKey:self->_startTime];
  [coderCopy encodeDouble:@"EndTime" forKey:self->_endTime];
  [coderCopy encodeInt64:self->_generation forKey:@"Generation"];
}

@end