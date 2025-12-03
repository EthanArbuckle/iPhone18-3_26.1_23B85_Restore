@interface WebCoreStatistics
+ (BOOL)shouldPrintExceptions;
+ (id)javaScriptObjectTypeCounts;
+ (id)javaScriptProtectedObjectTypeCounts;
+ (id)memoryStatistics;
+ (int)cachedFrameCount;
+ (int)cachedPageCount;
+ (unint64_t)cachedFontDataCount;
+ (unint64_t)cachedFontDataInactiveCount;
+ (unint64_t)javaScriptGlobalObjectsCount;
+ (unint64_t)javaScriptObjectsCount;
+ (unint64_t)javaScriptProtectedGlobalObjectsCount;
+ (unint64_t)javaScriptProtectedObjectsCount;
+ (unint64_t)javaScriptReferencedObjectsCount;
+ (void)garbageCollectJavaScriptObjects;
+ (void)garbageCollectJavaScriptObjectsOnAlternateThreadForDebugging:(BOOL)debugging;
+ (void)purgeInactiveFontData;
+ (void)setJavaScriptGarbageCollectorTimerEnabled:(BOOL)enabled;
+ (void)setShouldPrintExceptions:(BOOL)exceptions;
@end

@implementation WebCoreStatistics

+ (unint64_t)javaScriptObjectsCount
{
  v2 = MEMORY[0x1E69E25C0];
  if (*MEMORY[0x1E69E25C0])
  {
    MEMORY[0x1CCA631F0](v7);
    v3 = *v2;
    if (!*v2)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v4 = WebCore::commonVMSlow(self);
    MEMORY[0x1CCA631F0](v7, v4);
    v3 = *v2;
    if (!*v2)
    {
LABEL_5:
      v3 = WebCore::commonVMSlow(v3);
    }
  }

  v5 = JSC::Heap::objectCount((v3 + 192));
  MEMORY[0x1CCA63200](v7);
  return v5;
}

+ (unint64_t)javaScriptGlobalObjectsCount
{
  v2 = MEMORY[0x1E69E25C0];
  if (*MEMORY[0x1E69E25C0])
  {
    MEMORY[0x1CCA631F0](v7);
    v3 = *v2;
    if (!*v2)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v4 = WebCore::commonVMSlow(self);
    MEMORY[0x1CCA631F0](v7, v4);
    v3 = *v2;
    if (!*v2)
    {
LABEL_5:
      v3 = WebCore::commonVMSlow(v3);
    }
  }

  v5 = JSC::Heap::globalObjectCount((v3 + 192));
  MEMORY[0x1CCA63200](v7);
  return v5;
}

+ (unint64_t)javaScriptProtectedObjectsCount
{
  v2 = MEMORY[0x1E69E25C0];
  if (*MEMORY[0x1E69E25C0])
  {
    MEMORY[0x1CCA631F0](v7);
    v3 = *v2;
    if (!*v2)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v4 = WebCore::commonVMSlow(self);
    MEMORY[0x1CCA631F0](v7, v4);
    v3 = *v2;
    if (!*v2)
    {
LABEL_5:
      v3 = WebCore::commonVMSlow(v3);
    }
  }

  v5 = JSC::Heap::protectedObjectCount((v3 + 192));
  MEMORY[0x1CCA63200](v7);
  return v5;
}

+ (unint64_t)javaScriptProtectedGlobalObjectsCount
{
  v2 = MEMORY[0x1E69E25C0];
  if (*MEMORY[0x1E69E25C0])
  {
    MEMORY[0x1CCA631F0](v7);
    v3 = *v2;
    if (!*v2)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v4 = WebCore::commonVMSlow(self);
    MEMORY[0x1CCA631F0](v7, v4);
    v3 = *v2;
    if (!*v2)
    {
LABEL_5:
      v3 = WebCore::commonVMSlow(v3);
    }
  }

  v5 = JSC::Heap::protectedGlobalObjectCount((v3 + 192));
  MEMORY[0x1CCA63200](v7);
  return v5;
}

+ (id)javaScriptProtectedObjectTypeCounts
{
  v2 = MEMORY[0x1E69E25C0];
  if (*MEMORY[0x1E69E25C0])
  {
    MEMORY[0x1CCA631F0](v12);
    v3 = *v2;
    if (*v2)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v4 = WebCore::commonVMSlow(self);
    MEMORY[0x1CCA631F0](v12, v4);
    v3 = *v2;
    if (*v2)
    {
      goto LABEL_6;
    }
  }

  v3 = WebCore::commonVMSlow(v3);
LABEL_6:
  JSC::Heap::protectedObjectTypeCounts(&v10, (v3 + 192));
  createNSCountedSet(&v11, v10);
  v6 = v11;
  if (v11)
  {
    v7 = v11;
  }

  v8 = v10;
  v10 = 0;
  if (v8)
  {
    if (*v8)
    {
      WTF::fastFree((*v8 - 16), v5);
    }

    WTF::fastFree(v8, v5);
  }

  MEMORY[0x1CCA63200](v12);
  return v6;
}

+ (id)javaScriptObjectTypeCounts
{
  v2 = MEMORY[0x1E69E25C0];
  if (*MEMORY[0x1E69E25C0])
  {
    MEMORY[0x1CCA631F0](v12);
    v3 = *v2;
    if (*v2)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v4 = WebCore::commonVMSlow(self);
    MEMORY[0x1CCA631F0](v12, v4);
    v3 = *v2;
    if (*v2)
    {
      goto LABEL_6;
    }
  }

  v3 = WebCore::commonVMSlow(v3);
LABEL_6:
  JSC::Heap::objectTypeCounts(&v10, (v3 + 192));
  createNSCountedSet(&v11, v10);
  v6 = v11;
  if (v11)
  {
    v7 = v11;
  }

  v8 = v10;
  v10 = 0;
  if (v8)
  {
    if (*v8)
    {
      WTF::fastFree((*v8 - 16), v5);
    }

    WTF::fastFree(v8, v5);
  }

  MEMORY[0x1CCA63200](v12);
  return v6;
}

+ (void)garbageCollectJavaScriptObjects
{
  v2 = WebCore::GCController::singleton(self);

  MEMORY[0x1EEE54BE0](v2);
}

+ (void)garbageCollectJavaScriptObjectsOnAlternateThreadForDebugging:(BOOL)debugging
{
  debuggingCopy = debugging;
  v4 = WebCore::GCController::singleton(self);

  MEMORY[0x1EEE54BF0](v4, debuggingCopy);
}

+ (void)setJavaScriptGarbageCollectorTimerEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v4 = WebCore::GCController::singleton(self);

  MEMORY[0x1EEE54BE8](v4, enabledCopy);
}

+ (unint64_t)cachedFontDataCount
{
  WebCore::FontCache::forCurrentThread(&v4, self);
  if (!v4)
  {
    goto LABEL_6;
  }

  result = WebCore::FontCache::fontCount(v4);
  v3 = v4;
  v4 = 0;
  if (!v3)
  {
    return result;
  }

  if (!*v3)
  {
LABEL_6:
    __break(0xC471u);
    JUMPOUT(0x1C7AC6814);
  }

  --*v3;
  return result;
}

+ (unint64_t)cachedFontDataInactiveCount
{
  WebCore::FontCache::forCurrentThread(&v4, self);
  if (!v4)
  {
    goto LABEL_6;
  }

  result = WebCore::FontCache::inactiveFontCount(v4);
  v3 = v4;
  v4 = 0;
  if (!v3)
  {
    return result;
  }

  if (!*v3)
  {
LABEL_6:
    __break(0xC471u);
    JUMPOUT(0x1C7AC68E0);
  }

  --*v3;
  return result;
}

+ (void)purgeInactiveFontData
{
  WebCore::FontCache::forCurrentThread(&v3, self);
  if (!v3)
  {
    goto LABEL_6;
  }

  WebCore::FontCache::purgeInactiveFontData(v3);
  v2 = v3;
  v3 = 0;
  if (!v2)
  {
    return;
  }

  if (!*v2)
  {
LABEL_6:
    __break(0xC471u);
    JUMPOUT(0x1C7AC69B0);
  }

  --*v2;
}

+ (BOOL)shouldPrintExceptions
{
  if (!*MEMORY[0x1E69E25C0])
  {
    WebCore::commonVMSlow(self);
  }

  v2 = MEMORY[0x1CCA631F0](v5);
  shouldPrintExceptions = WebCore::PageConsoleClient::shouldPrintExceptions(v2);
  MEMORY[0x1CCA63200](v5);
  return shouldPrintExceptions;
}

+ (void)setShouldPrintExceptions:(BOOL)exceptions
{
  exceptionsCopy = exceptions;
  if (!*MEMORY[0x1E69E25C0])
  {
    WebCore::commonVMSlow(self);
  }

  MEMORY[0x1CCA631F0](v4);
  WebCore::PageConsoleClient::setShouldPrintExceptions(exceptionsCopy);
  MEMORY[0x1CCA63200](v4);
}

+ (id)memoryStatistics
{
  v18[7] = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v2 = WTF::fastMallocStatistics(&v14, self);
  v3 = MEMORY[0x1E69E25C0];
  if (!*MEMORY[0x1E69E25C0])
  {
    WebCore::commonVMSlow(v2);
  }

  MEMORY[0x1CCA631F0](v13);
  v4 = *v3;
  if (!*v3)
  {
    v4 = WebCore::commonVMSlow(0);
  }

  v5 = JSC::Heap::size((v4 + 192));
  v6 = *v3;
  if (!*v3)
  {
    v6 = WebCore::commonVMSlow(0);
  }

  v7 = JSC::Heap::capacity((v6 + 192));
  v8 = JSC::globalMemoryStatistics(v7);
  v10 = v9;
  v17[0] = @"FastMallocReservedVMBytes";
  v18[0] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v14];
  v17[1] = @"FastMallocCommittedVMBytes";
  v18[1] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v15];
  v17[2] = @"FastMallocFreeListBytes";
  v18[2] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v16];
  v17[3] = @"JavaScriptHeapSize";
  v18[3] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v5];
  v17[4] = @"JavaScriptFreeSize";
  v18[4] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v7 - v5];
  v17[5] = @"JavaScriptStackSize";
  v18[5] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v8];
  v17[6] = @"JavaScriptJITSize";
  v18[6] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v10];
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:7];
  MEMORY[0x1CCA63200](v13);
  return v11;
}

+ (int)cachedPageCount
{
  v2 = *(WebCore::BackForwardCache::singleton(self) + 8);
  if (v2)
  {
    return *(v2 - 12);
  }

  else
  {
    return 0;
  }
}

+ (int)cachedFrameCount
{
  v2 = WebCore::BackForwardCache::singleton(self);

  return MEMORY[0x1EEE5CE08](v2);
}

+ (unint64_t)javaScriptReferencedObjectsCount
{
  v2 = MEMORY[0x1E69E25C0];
  if (*MEMORY[0x1E69E25C0])
  {
    MEMORY[0x1CCA631F0](v7);
    v3 = *v2;
    if (!*v2)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v4 = WebCore::commonVMSlow(self);
    MEMORY[0x1CCA631F0](v7, v4);
    v3 = *v2;
    if (!*v2)
    {
LABEL_5:
      v3 = WebCore::commonVMSlow(v3);
    }
  }

  v5 = JSC::Heap::protectedObjectCount((v3 + 192));
  MEMORY[0x1CCA63200](v7);
  return v5;
}

@end