@interface ChartUpdater
+ (id)_rangeStringForInterval:(int64_t)a3;
- (BOOL)updateChartForStock:(id)a3 interval:(int64_t)a4 withCompletion:(id)a5;
- (ChartUpdaterDelegate)delegate;
- (id)dataSeries;
- (void)cancel;
- (void)didParseData;
- (void)failWithError:(id)a3;
- (void)parseData:(id)a3;
- (void)parseDataSeriesDictionary:(id)a3;
@end

@implementation ChartUpdater

+ (id)_rangeStringForInterval:(int64_t)a3
{
  if ((a3 - 1) > 7)
  {
    return @"1d";
  }

  else
  {
    return off_279D15E50[a3 - 1];
  }
}

- (void)cancel
{
  currentChartData = self->_currentChartData;
  self->_currentChartData = 0;

  v4.receiver = self;
  v4.super_class = ChartUpdater;
  [(YQLRequest *)&v4 cancel];
}

- (BOOL)updateChartForStock:(id)a3 interval:(int64_t)a4 withCompletion:(id)a5
{
  v39[6] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v11 = StocksLogForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [ChartUpdater updateChartForStock:v9 interval:a4 withCompletion:v11];
  }

  v12 = +[NetPreferences sharedPreferences];
  v13 = [v12 isNetworkReachable];

  if (v13)
  {
    v14 = [v9 symbol];
    if ([v14 length])
    {
      [(ChartUpdater *)self cancel];
      v15 = [v10 copy];
      updateCompletionHandler = self->_updateCompletionHandler;
      self->_updateCompletionHandler = v15;

      objc_storeStrong(&self->_stock, a3);
      self->_interval = a4;
      v17 = [v9 chartDataForInterval:a4];
      if (v17)
      {
        v18 = StocksLogForCategory(0);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          [ChartUpdater updateChartForStock:interval:withCompletion:];
        }

        objc_storeStrong(&self->_currentChartData, v17);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __60__ChartUpdater_updateChartForStock_interval_withCompletion___block_invoke;
        block[3] = &unk_279D15BF0;
        block[4] = self;
        dispatch_async(MEMORY[0x277D85CD0], block);
        v19 = 1;
      }

      else
      {
        v21 = +[NetPreferences sharedPreferences];
        v22 = [(YQLRequest *)self YQLLanguageCode];
        v23 = [(YQLRequest *)self YQLCountryCode];
        v39[0] = @"json";
        v38[0] = @"format";
        v38[1] = @"ticker";
        v24 = [v9 symbol];
        v39[1] = v24;
        v38[2] = @"range";
        v25 = [ChartUpdater _rangeStringForInterval:a4];
        v39[2] = v25;
        v39[3] = v22;
        v35 = v23;
        v36 = v22;
        v38[3] = @"lang";
        v38[4] = @"region";
        v38[5] = @"type";
        v39[4] = v23;
        v39[5] = @"quote";
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:6];

        v27 = [v21 stocksYQLBaseURL];
        v28 = [v27 URLByAppendingPathComponent:@"/applewf/chart"];

        v29 = [v21 signedRequestForURL:v28 parameters:v26];
        v30 = v21;
        if ([v21 serviceDebugging])
        {
          v31 = [v29 URL];
          v32 = [v31 absoluteString];
          [YQLRequest appendDebugString:v32];

          v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v26];
          v30 = v21;
          [YQLRequest appendDebugString:v33];
        }

        [(YQLRequest *)self loadRequest:v29];

        v19 = 0;
        v17 = 0;
      }

      goto LABEL_16;
    }

    v20 = self->_updateCompletionHandler;
    if (v20)
    {
      v19 = 1;
      v20[2](v20, 1, 0);
      v17 = self->_updateCompletionHandler;
      self->_updateCompletionHandler = 0;
LABEL_16:

      goto LABEL_17;
    }
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.stocks" code:3 userInfo:0];
    [(ChartUpdater *)self failWithError:v14];
  }

  v19 = 1;
LABEL_17:

  return v19;
}

- (void)parseData:(id)a3
{
  v4 = a3;
  v9 = 0;
  v5 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v4 options:0 error:&v9];
  v6 = v9;
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5 == 0;
  }

  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [(YQLRequest *)self failToParseWithData:v4];
  }

  else
  {
    v8 = [YahooResponseParser dictionaryWithDictionaryKeyPath:&unk_287C817B0 inJSONObject:v5];
    if (v8)
    {
      [(ChartUpdater *)self parseDataSeriesDictionary:v8];
    }

    else
    {
      [(YQLRequest *)self failToParseWithData:v4];
    }
  }
}

- (void)parseDataSeriesDictionary:(id)a3
{
  v101 = *MEMORY[0x277D85DE8];
  v66 = a3;
  v3 = [YahooResponseParser objectOfClass:objc_opt_class() withDictionaryKeyPath:&unk_287C817C8 inJSONObject:v66];
  v67 = v3;
  if (v3)
  {
    v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = __42__ChartUpdater_parseDataSeriesDictionary___block_invoke;
    v82[3] = &unk_279D15E08;
    v72 = v4;
    v83 = v72;
    [v67 enumerateObjectsUsingBlock:v82];
    v5 = [v72 count];
    if (v5 != [v67 count])
    {
      [(YQLRequest *)self failToParseWithDataSeriesDictionary:v66];
LABEL_80:

      goto LABEL_81;
    }

    v6 = objc_opt_class();
    v96[0] = @"reference-meta";
    v96[1] = @"type";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v96 count:2];
    v64 = [YahooResponseParser objectOfClass:v6 withDictionaryKeyPath:v7 inJSONObject:v66];

    if (!v64 || (v68 = [v64 caseInsensitiveCompare:@"timestamp"]) != 0 && objc_msgSend(v64, "caseInsensitiveCompare:", @"date"))
    {
      [(YQLRequest *)self failToParseWithDataSeriesDictionary:v66];
LABEL_79:

      goto LABEL_80;
    }

    v8 = [YahooResponseParser objectOfClass:objc_opt_class() withDictionaryKeyPath:&unk_287C817E0 inJSONObject:v66];
    v63 = v8;
    if (v8 && (v9 = [v8 count]) != 0)
    {
      if (!self->_currentChartData)
      {
        v10 = [[StockChartData alloc] initWithStock:self->_stock interval:self->_interval];
        currentChartData = self->_currentChartData;
        self->_currentChartData = v10;
      }

      v12 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:v66];
      [(StockChartData *)self->_currentChartData setDataSeriesDict:v12];

      [(StockChartData *)self->_currentChartData allocateStockValuesWithCount:v9];
      v13 = self->_currentChartData;
      v14 = [MEMORY[0x277CBEB18] array];
      [(StockChartData *)v13 setInterestingIndexes:v14];

      v15 = objc_opt_class();
      v95[0] = @"reference-meta";
      v95[1] = @"open";
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v95 count:2];
      v62 = [YahooResponseParser objectOfClass:v15 withDictionaryKeyPath:v16 inJSONObject:v66];

      if (v62)
      {
        v17 = self->_currentChartData;
        v18 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{objc_msgSend(v62, "integerValue")}];
        [(StockChartData *)v17 setMarketOpenDate:v18];

        v19 = StocksLogForCategory(0);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          [ChartUpdater parseDataSeriesDictionary:];
        }
      }

      v20 = objc_opt_class();
      v94[0] = @"reference-meta";
      v94[1] = @"close";
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:2];
      v61 = [YahooResponseParser objectOfClass:v20 withDictionaryKeyPath:v21 inJSONObject:v66];

      if (v61)
      {
        v22 = self->_currentChartData;
        v23 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{objc_msgSend(v61, "integerValue")}];
        [(StockChartData *)v22 setMarketCloseDate:v23];

        v24 = StocksLogForCategory(0);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          [ChartUpdater parseDataSeriesDictionary:];
        }
      }

      [YahooResponseParser objectOfClass:objc_opt_class() withDictionaryKeyPath:&unk_287C817F8 inJSONObject:v66];
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      obj = v79 = 0u;
      v25 = [obj countByEnumeratingWithState:&v78 objects:v93 count:16];
      if (v25)
      {
        v26 = *v79;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v79 != v26)
            {
              objc_enumerationMutation(obj);
            }

            v28 = *(*(&v78 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v29 = v28;
              v30 = [v29 objectForKeyedSubscript:@"name"];
              v31 = [v29 objectForKeyedSubscript:@"content"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v32 = v30;
                  if ([v32 isEqualToString:@"gmtoffset"])
                  {
                    v33 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:{objc_msgSend(v31, "integerValue")}];
                    [(StockChartData *)self->_currentChartData setMarketTimeZone:v33];
                  }

                  else if ([v32 isEqualToString:@"previous_close"])
                  {
                    v34 = self->_currentChartData;
                    [v31 floatValue];
                    [(StockChartData *)v34 setPreviousClosePrice:?];
                  }
                }
              }
            }
          }

          v25 = [obj countByEnumeratingWithState:&v78 objects:v93 count:16];
        }

        while (v25);
      }

      v35 = [(StockChartData *)self->_currentChartData stockValues];
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v69 = v63;
      v36 = [v69 countByEnumeratingWithState:&v74 objects:v92 count:16];
      if (v36)
      {
        v71 = 0;
        v37 = *v75;
        v65 = *MEMORY[0x277CBE5C0];
        v38 = 0.0;
        do
        {
          for (j = 0; j != v36; ++j)
          {
            if (*v75 != v37)
            {
              objc_enumerationMutation(v69);
            }

            v40 = *(*(&v74 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v41 = v40;
              v42 = v72;
              v88 = 0;
              v89 = &v88;
              v90 = 0x2020000000;
              v91 = 1;
              v43 = [v41 objectForKeyedSubscript:@"ref"];
              v44 = v43;
              if (v43)
              {
                if (v68)
                {
                  v45 = parseEntryIntoStruct_dateFormatter;
                  if (!parseEntryIntoStruct_dateFormatter)
                  {
                    v46 = objc_alloc_init(MEMORY[0x277CCA968]);
                    v47 = parseEntryIntoStruct_dateFormatter;
                    parseEntryIntoStruct_dateFormatter = v46;

                    v48 = parseEntryIntoStruct_dateFormatter;
                    v49 = [MEMORY[0x277CBEA80] calendarWithIdentifier:v65];
                    [v48 setCalendar:v49];

                    [parseEntryIntoStruct_dateFormatter setDateFormat:@"yyyyMMdd"];
                    v45 = parseEntryIntoStruct_dateFormatter;
                  }

                  v50 = [v45 dateFromString:v44];
                  [v50 timeIntervalSince1970];
                  v35->var0 = v51;
                }

                else
                {
                  v35->var0 = [v43 longLongValue];
                }
              }

              else
              {
                *(v89 + 24) = 0;
              }

              v52 = [v41 objectForKeyedSubscript:@"v"];
              if (v52 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v53 = [v52 count], v53 == objc_msgSend(v42, "count")))
              {
                v84[0] = MEMORY[0x277D85DD0];
                v84[1] = 3221225472;
                v84[2] = __parseEntryIntoStruct_block_invoke;
                v84[3] = &unk_279D15E30;
                v54 = v52;
                v85 = v54;
                v86 = &v88;
                v87 = v35;
                [v42 enumerateObjectsUsingBlock:v84];

                if (v89[3])
                {

                  _Block_object_dispose(&v88, 8);
LABEL_59:
                  var1 = v35->var1;
                  if (![(StockChartData *)self->_currentChartData minValue]|| var1 < [(StockChartData *)self->_currentChartData minValue][8])
                  {
                    [(StockChartData *)self->_currentChartData setMinValue:v35];
                  }

                  if (![(StockChartData *)self->_currentChartData maxValue]|| var1 > [(StockChartData *)self->_currentChartData maxValue][8])
                  {
                    [(StockChartData *)self->_currentChartData setMaxValue:v35];
                  }

                  if (v35->var2)
                  {
                    [(StockChartData *)self->_currentChartData setHasVolume:1];
                  }

                  if ([(StockChartData *)self->_currentChartData chartInterval])
                  {
                    var0 = v38;
                  }

                  else
                  {
                    var0 = v35->var0;
                    if (v38 != 0.0 && var0 - v38 > 3600.0)
                    {
                      v59 = [(StockChartData *)self->_currentChartData interestingIndexes];
                      v60 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v71];
                      [v59 addObject:v60];

                      var0 = v35->var0;
                    }
                  }

                  ++v35;
                  ++v71;
                  v38 = var0;
                  continue;
                }
              }

              else
              {
                *(v89 + 24) = 0;
              }

              v55 = StocksLogForCategory(0);
              if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v98 = v41;
                v99 = 2112;
                v100 = v72;
                _os_log_error_impl(&dword_26BAAD000, v55, OS_LOG_TYPE_ERROR, "#chartupdater Chart entry %@ has unexpected format or does not match column mapping %@", buf, 0x16u);
              }

              v56 = *(v89 + 24);
              _Block_object_dispose(&v88, 8);

              if (v56)
              {
                goto LABEL_59;
              }
            }
          }

          v36 = [v69 countByEnumeratingWithState:&v74 objects:v92 count:16];
        }

        while (v36);
      }

      [(ChartUpdater *)self didParseData];
    }

    else
    {
      [(YQLRequest *)self failToParseWithDataSeriesDictionary:v66];
    }

    goto LABEL_79;
  }

  [(YQLRequest *)self failToParseWithDataSeriesDictionary:v66];
LABEL_81:
}

uint64_t __42__ChartUpdater_parseDataSeriesDictionary___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v5 objectForKeyedSubscript:@"id"];
    if (v3)
    {
      [*(a1 + 32) addObject:v3];
    }
  }

  return MEMORY[0x2821F96F8]();
}

- (void)didParseData
{
  currentChartData = self->_currentChartData;
  if (!currentChartData)
  {
    return;
  }

  v4 = [(StockChartData *)currentChartData stockValues];
  v5 = [(StockChartData *)self->_currentChartData stockValueCount];
  if (![(StockChartData *)self->_currentChartData isUnavailable])
  {
    if (v5 < 2 || (v8 = [(StockChartData *)self->_currentChartData maxValue], v8 == [(StockChartData *)self->_currentChartData minValue]))
    {
      v6 = MEMORY[0x277CCA9B8];
      v7 = 1;
      goto LABEL_18;
    }

    v9 = [(StockChartData *)self->_currentChartData marketOpenDate];
    if (!v9)
    {
      goto LABEL_24;
    }

    v10 = v9;
    v11 = [(StockChartData *)self->_currentChartData marketCloseDate];

    if (!v11)
    {
      goto LABEL_24;
    }

    if ([(StockChartData *)self->_currentChartData chartInterval])
    {
      goto LABEL_27;
    }

    v12 = *v4;
    v13 = [(StockChartData *)self->_currentChartData marketCloseDate];
    [v13 timeIntervalSince1970];
    if (v12 <= v14)
    {
      v15 = &v4[3 * v5];
      v16 = *(v15 - 3);
      v17 = [(StockChartData *)self->_currentChartData marketOpenDate];
      [v17 timeIntervalSince1970];
      v19 = v18;

      if (v16 < v19)
      {
        goto LABEL_24;
      }

      v20 = objc_alloc(MEMORY[0x277CBEA80]);
      v21 = [v20 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
      v22 = [(StockChartData *)self->_currentChartData marketOpenDate];
      v23 = [(StockChartData *)self->_currentChartData marketCloseDate];
      v13 = [v21 components:96 fromDate:v22 toDate:v23 options:0];

      if ([v13 hour] != 24 || objc_msgSend(v13, "minute"))
      {
        goto LABEL_26;
      }

      v24 = *v4;
      v25 = [(StockChartData *)self->_currentChartData marketOpenDate];
      [v25 timeIntervalSince1970];
      if (v24 >= v26)
      {
        v27 = *(v15 - 3);
        v28 = [(StockChartData *)self->_currentChartData marketCloseDate];
        [v28 timeIntervalSince1970];
        v30 = v29;

        if (v27 <= v30)
        {
          goto LABEL_27;
        }

LABEL_24:
        v33 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:*v4];
        [(StockChartData *)self->_currentChartData setMarketOpenDate:v33];

        v34 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v4[3 * v5 - 3]];
        [(StockChartData *)self->_currentChartData setMarketCloseDate:v34];

        if (![(StockChartData *)self->_currentChartData chartInterval])
        {
          v35 = [MEMORY[0x277CBEA80] currentCalendar];
          v36 = [(StockChartData *)self->_currentChartData marketOpenDate];
          v37 = [v35 components:32 fromDate:v36];
          v38 = [v37 hour] - 9;

          v39 = MEMORY[0x277CBEBB0];
          v40 = [MEMORY[0x277CBEBB0] localTimeZone];
          v13 = [v39 timeZoneForSecondsFromGMT:{(objc_msgSend(v40, "secondsFromGMT") + v38 * -3600.0)}];

          [(StockChartData *)self->_currentChartData setMarketTimeZone:v13];
LABEL_26:
        }

LABEL_27:
        if (![(StockChartData *)self->_currentChartData chartInterval])
        {
          v41 = [MEMORY[0x277CBEA80] currentCalendar];
          v42 = [v41 copy];

          v43 = [(StockChartData *)self->_currentChartData marketTimeZone];
          [v42 setTimeZone:v43];

          v44 = [(StockChartData *)self->_currentChartData marketOpenDate];
          v45 = [v42 components:192 fromDate:v44];

          v46 = [v45 minute];
          v47 = [v45 second] + 60 * v46;
          if ((v47 - 1) <= 0x382)
          {
            v48 = v47;
            v49 = [(StockChartData *)self->_currentChartData marketOpenDate];
            v50 = [v49 dateByAddingTimeInterval:-v48];
            [(StockChartData *)self->_currentChartData setMarketOpenDate:v50];
          }

          v51 = [(StockChartData *)self->_currentChartData marketCloseDate];
          v52 = [v42 components:192 fromDate:v51];

          v53 = 60 - [v52 minute];
          v54 = 60 * v53 - [v52 second];
          if ((v54 - 1) <= 0x382)
          {
            v55 = v54;
            v56 = [(StockChartData *)self->_currentChartData marketCloseDate];
            v57 = [v56 dateByAddingTimeInterval:v55];
            [(StockChartData *)self->_currentChartData setMarketCloseDate:v57];
          }
        }

        v58 = 0.0;
        if (v5 != 2)
        {
          v58 = v4[3 * v5 - 3] - v4[3 * v5 - 9];
        }

        [(StockChartData *)self->_currentChartData setExpirationTime:v58 + CFAbsoluteTimeGetCurrent()];
        v59 = [(StockChartData *)self->_currentChartData stock];
        [v59 setChartData:self->_currentChartData forInterval:{-[StockChartData chartInterval](self->_currentChartData, "chartInterval")}];

        updateCompletionHandler = self->_updateCompletionHandler;
        if (updateCompletionHandler)
        {
          updateCompletionHandler[2](updateCompletionHandler, 1, 0);
          v61 = self->_updateCompletionHandler;
          self->_updateCompletionHandler = 0;
        }

        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained chartUpdater:self didReceiveStockChartData:self->_currentChartData];
        goto LABEL_19;
      }
    }

    goto LABEL_24;
  }

  v6 = MEMORY[0x277CCA9B8];
  v7 = 2;
LABEL_18:
  WeakRetained = [v6 errorWithDomain:@"com.apple.stocks" code:v7 userInfo:0];
  [(ChartUpdater *)self failWithError:WeakRetained];
LABEL_19:

  v32 = self->_currentChartData;
  self->_currentChartData = 0;
}

- (void)failWithError:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ChartUpdater;
  [(YQLRequest *)&v8 failWithError:v4];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained chartUpdater:self didFailWithError:v4];

  updateCompletionHandler = self->_updateCompletionHandler;
  if (updateCompletionHandler)
  {
    updateCompletionHandler[2](updateCompletionHandler, 0, v4);
    v7 = self->_updateCompletionHandler;
    self->_updateCompletionHandler = 0;
  }
}

- (id)dataSeries
{
  v2 = [(Stock *)self->_stock chartDataForInterval:0];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 dataSeriesDict];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (ChartUpdaterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)updateChartForStock:(void *)a1 interval:(int)a2 withCompletion:(NSObject *)a3 .cold.1(void *a1, int a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = [a1 symbol];
  OUTLINED_FUNCTION_0_0();
  v7 = 1024;
  v8 = a2;
  _os_log_debug_impl(&dword_26BAAD000, a3, OS_LOG_TYPE_DEBUG, "#chartupdater updateChartForStock: %@ interval: %i", v6, 0x12u);
}

- (void)updateChartForStock:interval:withCompletion:.cold.2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  v3 = 1024;
  v4 = v0;
  _os_log_debug_impl(&dword_26BAAD000, v1, OS_LOG_TYPE_DEBUG, "#chartupdater Returning cached chart data for symbol %@ interval %i", v2, 0x12u);
}

- (void)parseData:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[ChartUpdater parseData:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_26BAAD000, a2, OS_LOG_TYPE_ERROR, "#chartupdater *** [%s] Caught exception: %@", &v2, 0x16u);
}

- (void)parseDataSeriesDictionary:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_26BAAD000, v0, OS_LOG_TYPE_DEBUG, "#chartupdater marketOpenStr %@", v1, 0xCu);
}

- (void)parseDataSeriesDictionary:.cold.2()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_26BAAD000, v0, OS_LOG_TYPE_DEBUG, "#chartupdater marketCloseStr %@", v1, 0xCu);
}

@end