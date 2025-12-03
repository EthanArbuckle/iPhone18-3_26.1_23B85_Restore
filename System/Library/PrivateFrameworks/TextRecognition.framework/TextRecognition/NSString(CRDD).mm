@interface NSString(CRDD)
- (id)_compositeRegexForReplacing:()CRDD nonspaceLeft:nonspaceRight:;
- (id)_crDDFriendlyTextWithIndexMapping:()CRDD;
@end

@implementation NSString(CRDD)

- (id)_crDDFriendlyTextWithIndexMapping:()CRDD
{
  v57 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__NSString_CRDD___crDDFriendlyTextWithIndexMapping___block_invoke;
  block[3] = &unk_1E7BC25C0;
  v39 = selfCopy;
  block[4] = selfCopy;
  if (qword_1ED95FE18 != -1)
  {
    dispatch_once(&qword_1ED95FE18, block);
  }

  v31 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:v39];
  v32 = [v31 applyRegex:qword_1ED95FDE0 withReplacementTemplate:&__block_literal_global_101];
  v33 = [v31 applyRegex:qword_1ED95FDE8 withReplacementTemplate:&__block_literal_global_106];
  v34 = [v31 applyRegex:qword_1ED95FDF0 withReplacementTemplate:&__block_literal_global_111];
  v5 = qword_1ED95FDF8;
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __52__NSString_CRDD___crDDFriendlyTextWithIndexMapping___block_invoke_5;
  v46[3] = &unk_1E7BC2608;
  v6 = v31;
  v47 = v6;
  v35 = [v6 applyRegex:v5 withReplacementTemplate:v46];
  v7 = qword_1ED95FE00;
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __52__NSString_CRDD___crDDFriendlyTextWithIndexMapping___block_invoke_6;
  v44[3] = &unk_1E7BC2608;
  v8 = v6;
  v45 = v8;
  v36 = [v8 applyRegex:v7 withReplacementTemplate:v44];
  v9 = qword_1ED95FE08;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __52__NSString_CRDD___crDDFriendlyTextWithIndexMapping___block_invoke_7;
  v42[3] = &unk_1E7BC2608;
  v10 = v8;
  v43 = v10;
  v37 = [v10 applyRegex:v9 withReplacementTemplate:v42];
  v11 = qword_1ED95FE10;
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __52__NSString_CRDD___crDDFriendlyTextWithIndexMapping___block_invoke_8;
  v40[3] = &unk_1E7BC2608;
  v12 = v10;
  v41 = v12;
  v38 = [v12 applyRegex:v11 withReplacementTemplate:v40];
  if (a3)
  {
    v13 = 0;
    *a3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v12, "length")}];
    while ([v12 length] > v13)
    {
      v14 = [v38 objectAtIndexedSubscript:v13];
      v15 = [v37 objectAtIndexedSubscript:{objc_msgSend(v14, "integerValue")}];
      v16 = [v36 objectAtIndexedSubscript:{objc_msgSend(v15, "integerValue")}];
      v17 = [v35 objectAtIndexedSubscript:{objc_msgSend(v16, "integerValue")}];
      v18 = [v34 objectAtIndexedSubscript:{objc_msgSend(v17, "integerValue")}];
      v19 = [v33 objectAtIndexedSubscript:{objc_msgSend(v18, "integerValue")}];
      v20 = [v32 objectAtIndexedSubscript:{objc_msgSend(v19, "integerValue")}];

      [*a3 setObject:v20 atIndexedSubscript:v13];
      if ([v20 integerValue] < 0 || (v21 = objc_msgSend(v20, "integerValue"), v21 >= objc_msgSend(v39, "length")))
      {
        v22 = CROSLogForCategory(7);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          integerValue = [v20 integerValue];
          v24 = [v39 length];
          v25 = [v12 length];
          *buf = 134218752;
          v50 = integerValue;
          v51 = 1024;
          v52 = v13;
          v53 = 2048;
          v54 = v24;
          v55 = 2048;
          v56 = v25;
          _os_log_impl(&dword_1B40D2000, v22, OS_LOG_TYPE_ERROR, "_crDDFriendly: Mapping index %ld at %d out of bounds for (%ld) -> (%ld).", buf, 0x26u);
        }

        v26 = *a3;
        if (v13)
        {
          v27 = [v26 objectAtIndexedSubscript:v13 - 1];
          [*a3 setObject:v27 atIndexedSubscript:v13];
        }

        else
        {
          [v26 setObject:&unk_1F2BF8350 atIndexedSubscript:0];
        }
      }

      ++v13;
    }
  }

  v28 = [v12 componentsSeparatedByCharactersInSet:qword_1ED95FDD8];
  v29 = [v28 componentsJoinedByString:@"-"];

  return v29;
}

- (id)_compositeRegexForReplacing:()CRDD nonspaceLeft:nonspaceRight:
{
  v30 = *MEMORY[0x1E69E9840];
  v23 = a3;
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v23, "count")}];
  v21 = a5;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v23;
  v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [*(*(&v25 + 1) + 8 * i) stringByReplacingOccurrencesOfString:@"/" withString:@"\\/"];
        v11 = [v10 stringByReplacingOccurrencesOfString:@"." withString:@"\\."];
        [v6 addObject:v11];
      }

      v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v7);
  }

  v12 = @"(^|\\s)";
  if (a4)
  {
    v12 = @"(\\S)";
  }

  v13 = v12;
  v14 = @"($|\\.$|,$|;$|\\?$|!$|\\s|\\.\\s|,\\s|;\\s|\\?\\s|!\\s)";
  if (v21)
  {
    v14 = @"(\\S)";
  }

  v15 = v14;
  v16 = MEMORY[0x1E696AEC0];
  v17 = [v6 componentsJoinedByString:@"|"];
  v18 = [v16 stringWithFormat:@"%@(%@)%@", v13, v17, v15];

  v19 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:v18 options:0 error:0];

  return v19;
}

@end