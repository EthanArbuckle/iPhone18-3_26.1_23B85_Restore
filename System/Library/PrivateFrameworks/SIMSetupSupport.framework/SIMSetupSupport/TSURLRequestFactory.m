@interface TSURLRequestFactory
+ (id)_jsonBodyWithPostdata:(id)a3;
+ (id)_urlEncodedBodyWithCarrierPostRawData:(id)a3;
+ (id)_urlEncodedBodyWithPostdata:(id)a3;
+ (id)requestWithType:(unint64_t)a3 URL:(id)a4 postdata:(id)a5;
@end

@implementation TSURLRequestFactory

+ (id)requestWithType:(unint64_t)a3 URL:(id)a4 postdata:(id)a5
{
  v51 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  if (v7 && ([v7 absoluteString], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "length"), v9, v10))
  {
    if (v8)
    {
      v11 = [v8 allKeys];
      v12 = [v11 count];

      if (v12)
      {
        if (a3 > 2)
        {
          if (a3 == 3)
          {
            v23 = [TSURLRequestFactory _urlEncodedBodyWithCarrierPostRawData:v8];
LABEL_26:
            v24 = v23;
            v25 = @"application/x-www-form-urlencoded";
            if (v23)
            {
              goto LABEL_27;
            }

            goto LABEL_34;
          }

          if (a3 == 5)
          {
LABEL_20:
            v24 = [TSURLRequestFactory _jsonBodyWithPostdata:v8];
            v25 = @"application/json";
            if (!v24)
            {
              goto LABEL_34;
            }

LABEL_27:
            v21 = [MEMORY[0x277CCAB70] requestWithURL:v7];
            [v21 _setNonAppInitiated:1];
            [v21 setValue:v25 forHTTPHeaderField:@"content-type"];
            [v21 setHTTPMethod:@"POST"];
            [v21 setHTTPBody:v24];
            v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", -[NSObject length](v24, "length")];
            [v21 setValue:v34 forHTTPHeaderField:@"content-length"];

            v35 = _TSLogDomain();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
            {
              [TSURLRequestFactory requestWithType:v7 URL:v21 postdata:?];
            }

            v36 = _TSLogDomain();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
            {
              [TSURLRequestFactory requestWithType:v25 URL:v21 postdata:?];
            }

            v37 = _TSLogDomain();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              +[TSURLRequestFactory requestWithType:URL:postdata:];
            }

            goto LABEL_37;
          }

          if (a3 != 6)
          {
LABEL_34:
            v24 = _TSLogDomain();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              [(TSURLRequestFactory *)v24 requestWithType:v38 URL:v39 postdata:v40, v41, v42, v43, v44];
            }

            v21 = 0;
LABEL_37:

            goto LABEL_38;
          }
        }

        else
        {
          if (!a3)
          {
            v26 = _TSLogDomain();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              [(TSURLRequestFactory *)v26 requestWithType:v27 URL:v28 postdata:v29, v30, v31, v32, v33];
            }

            goto LABEL_34;
          }

          if (a3 != 1)
          {
            if (a3 != 2)
            {
              goto LABEL_34;
            }

            goto LABEL_20;
          }
        }

        v23 = [TSURLRequestFactory _urlEncodedBodyWithPostdata:v8];
        goto LABEL_26;
      }
    }

    v22 = _TSLogDomain();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v48 = v7;
      v49 = 2080;
      v50 = "+[TSURLRequestFactory requestWithType:URL:postdata:]";
      _os_log_impl(&dword_262AA8000, v22, OS_LOG_TYPE_INFO, "[I] No postdata for: %@ @%s", buf, 0x16u);
    }

    v21 = [MEMORY[0x277CCAB70] requestWithURL:v7];
    [v21 _setNonAppInitiated:1];
  }

  else
  {
    v13 = _TSLogDomain();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(TSURLRequestFactory *)v13 requestWithType:v14 URL:v15 postdata:v16, v17, v18, v19, v20];
    }

    v21 = 0;
  }

LABEL_38:

  v45 = *MEMORY[0x277D85DE8];

  return v21;
}

+ (id)_urlEncodedBodyWithPostdata:(id)a3
{
  v3 = MEMORY[0x277CBEB18];
  v4 = a3;
  v5 = [v3 array];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__TSURLRequestFactory__urlEncodedBodyWithPostdata___block_invoke;
  v11[3] = &unk_279B451A8;
  v12 = v5;
  v6 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v11];

  v7 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v7 setQueryItems:v6];
  v8 = [v7 query];
  v9 = [v8 dataUsingEncoding:1];

  return v9;
}

void __51__TSURLRequestFactory__urlEncodedBodyWithPostdata___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CCAD18];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithName:v7 value:v6];

  [*(a1 + 32) addObject:v8];
}

+ (id)_urlEncodedBodyWithCarrierPostRawData:(id)a3
{
  v4 = *MEMORY[0x277CF96A0];
  v5 = [a3 objectForKeyedSubscript:v4];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = _TSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(TSURLRequestFactory *)v5 _urlEncodedBodyWithCarrierPostRawData:v4, v6];
    }
  }

  v7 = [v5 dataUsingEncoding:4];

  return v7;
}

+ (id)_jsonBodyWithPostdata:(id)a3
{
  v7 = 0;
  v3 = [MEMORY[0x277CCAAA0] dataWithJSONObject:a3 options:0 error:&v7];
  v4 = v7;
  if (v4)
  {
    v5 = _TSLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[TSURLRequestFactory _jsonBodyWithPostdata:];
    }
  }

  return v3;
}

+ (void)requestWithType:(uint64_t)a3 URL:(uint64_t)a4 postdata:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Unknown request @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)requestWithType:(uint64_t)a1 URL:(void *)a2 postdata:.cold.2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [a2 allHTTPHeaderFields];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_262AA8000, v3, v4, "[Db] http request %@ headers: %@ @%s", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)requestWithType:(uint64_t)a1 URL:(void *)a2 postdata:.cold.3(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [a2 HTTPBody];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_262AA8000, v3, v4, "[Db] contentType %@, body: %@ @%s", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)requestWithType:URL:postdata:.cold.4()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = "+[TSURLRequestFactory requestWithType:URL:postdata:]";
  _os_log_debug_impl(&dword_262AA8000, v0, OS_LOG_TYPE_DEBUG, "[Db] postdata: %@ @%s", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)requestWithType:(uint64_t)a3 URL:(uint64_t)a4 postdata:(uint64_t)a5 .cold.5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Invalid request body @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)requestWithType:(uint64_t)a3 URL:(uint64_t)a4 postdata:(uint64_t)a5 .cold.6(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Empty URL @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)_urlEncodedBodyWithCarrierPostRawData:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v7 = 138412802;
  v8 = objc_opt_class();
  v9 = 2112;
  v10 = a2;
  v11 = 2080;
  v12 = "+[TSURLRequestFactory _urlEncodedBodyWithCarrierPostRawData:]";
  v5 = v8;
  _os_log_error_impl(&dword_262AA8000, a3, OS_LOG_TYPE_ERROR, "[E]value type (%@) is unexpected for key (%@) @%s", &v7, 0x20u);

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)_jsonBodyWithPostdata:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = "+[TSURLRequestFactory _jsonBodyWithPostdata:]";
  _os_log_error_impl(&dword_262AA8000, v0, OS_LOG_TYPE_ERROR, "[E]Failed to create request body: %@ @%s", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

@end