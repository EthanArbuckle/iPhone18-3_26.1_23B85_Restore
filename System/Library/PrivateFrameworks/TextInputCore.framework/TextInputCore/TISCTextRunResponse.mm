@interface TISCTextRunResponse
+ (id)textRunResponseByMergingResponses:(id)responses;
+ (id)textRunResponseWithFont:(__CTFont *)font;
- (void)dealloc;
@end

@implementation TISCTextRunResponse

- (void)dealloc
{
  CFRelease(self->_ctLines);
  CFRelease(self->_font);
  v3.receiver = self;
  v3.super_class = TISCTextRunResponse;
  [(TISCTextRunResponse *)&v3 dealloc];
}

+ (id)textRunResponseByMergingResponses:(id)responses
{
  v30 = *MEMORY[0x277D85DE8];
  responsesCopy = responses;
  if ([responsesCopy count] == 1)
  {
    v4 = [responsesCopy objectAtIndexedSubscript:0];
  }

  else
  {
    firstObject = [responsesCopy firstObject];
    Count = CFArrayGetCount([firstObject ctLines]);

    theArray = CFArrayCreateMutable(0, Count, MEMORY[0x277CBF128]);
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:Count];
    if (Count)
    {
      for (i = 0; i != Count; ++i)
      {
        Mutable = CFArrayCreateMutable(0, Count, MEMORY[0x277CBF128]);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v10 = responsesCopy;
        v11 = responsesCopy;
        v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v26;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v26 != v14)
              {
                objc_enumerationMutation(v11);
              }

              ValueAtIndex = CFArrayGetValueAtIndex([*(*(&v25 + 1) + 8 * j) ctLines], i);
              GlyphRuns = CTLineGetGlyphRuns(ValueAtIndex);
              v32.length = CFArrayGetCount(GlyphRuns);
              v32.location = 0;
              CFArrayAppendArray(Mutable, GlyphRuns, v32);
            }

            v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
          }

          while (v13);
        }

        v18 = CTLineCreateWithRunArray();
        v19 = [MEMORY[0x277CCABB0] numberWithDouble:{CTLineGetTypographicBounds(v18, 0, 0, 0)}];
        [v7 addObject:v19];

        CFArrayAppendValue(theArray, v18);
        CFRelease(v18);
        CFRelease(Mutable);
        responsesCopy = v10;
      }
    }

    v4 = objc_opt_new();
    v20 = v4[2];
    v4[1] = theArray;
    v4[2] = v7;

    firstObject2 = [responsesCopy firstObject];
    v4[3] = CFRetain([firstObject2 font]);
  }

  v22 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)textRunResponseWithFont:(__CTFont *)font
{
  v4 = objc_opt_new();
  v4[1] = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v5 = objc_opt_new();
  v6 = v4[2];
  v4[2] = v5;

  v4[3] = CFRetain(font);

  return v4;
}

@end