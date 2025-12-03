@interface VATKeywordSpotterResult
- (VATKeywordSpotterResult)initWithKeyword:(id)keyword cost:(float)cost threshold:(float)threshold start:(int)start end:(int)end duration:(int)duration;
- (id)toJSON;
@end

@implementation VATKeywordSpotterResult

- (id)toJSON
{
  v35[6] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB38];
  v35[0] = self->_keywordText;
  v34[0] = @"keyword";
  v34[1] = @"threshold";
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%5.3f", self->_threshold];
  v35[1] = v4;
  v34[2] = @"cost";
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%5.3f", self->_cost];
  v35[2] = v5;
  v34[3] = @"start";
  v6 = [MEMORY[0x277CCABB0] numberWithInt:self->_start];
  v35[3] = v6;
  v34[4] = @"end";
  v7 = [MEMORY[0x277CCABB0] numberWithInt:self->_end];
  v35[4] = v7;
  v34[5] = @"duration";
  v8 = [MEMORY[0x277CCABB0] numberWithInt:self->_duration];
  v35[5] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:6];
  v10 = [v3 dictionaryWithDictionary:v9];

  if (!self->__isNbestEntry)
  {
    if (self->_audioFileURL)
    {
      v32[0] = @"audioStart";
      v11 = [MEMORY[0x277CCABB0] numberWithInt:self->_audioStart];
      v33[0] = v11;
      v32[1] = @"audioEnd";
      v12 = [MEMORY[0x277CCABB0] numberWithInt:self->_audioEnd];
      v33[1] = v12;
      v32[2] = @"audioDuration";
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%5.3f", *&self->_audioDuration];
      v33[2] = v13;
      v32[3] = @"audioFileURL";
      audioFileURL = self->_audioFileURL;
      if (audioFileURL)
      {
        path = [(NSURL *)self->_audioFileURL path];
      }

      else
      {
        path = &stru_2881908A8;
      }

      v33[3] = path;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:4];
      if (audioFileURL)
      {
      }

      [v10 addEntriesFromDictionary:v16];
    }

    secondPassDuration = self->_secondPassDuration;
    if (secondPassDuration > 0.0)
    {
      if (self->_secondPassResult)
      {
        secondPassResult = self->_secondPassResult;
      }

      else
      {
        secondPassResult = @"<nil>";
      }

      v30[0] = @"secondPassResult";
      v30[1] = @"secondPassDuration";
      v31[0] = secondPassResult;
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%5.3f", *&secondPassDuration];
      v31[1] = v19;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];

      [v10 addEntriesFromDictionary:v20];
    }
  }

  v27 = 0;
  v21 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v10 options:11 error:&v27];
  v22 = v27;
  if (v21)
  {
    v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v21 encoding:4];
  }

  else
  {
    v24 = _VATLoggingFacility(kVATLogCategoryFramework);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v29 = v22;
      _os_log_error_impl(&dword_2721E4000, v24, OS_LOG_TYPE_ERROR, "Error serializing VATKeywordSpotterResult: %@", buf, 0xCu);
    }

    v23 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v23;
}

- (VATKeywordSpotterResult)initWithKeyword:(id)keyword cost:(float)cost threshold:(float)threshold start:(int)start end:(int)end duration:(int)duration
{
  keywordCopy = keyword;
  v19.receiver = self;
  v19.super_class = VATKeywordSpotterResult;
  v16 = [(VATKeywordSpotterResult *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_keywordText, keyword);
    v17->_threshold = threshold;
    v17->_cost = cost;
    v17->_start = start;
    v17->_end = end;
    v17->_duration = duration;
  }

  return v17;
}

@end