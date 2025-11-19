@interface WFLoggerCircularBuffer
- (WFLoggerCircularBuffer)init;
- (void)WFLog:(unint64_t)a3 privacy:(unint64_t)a4 cfStrMsg:(__CFString *)a5;
- (void)WFLog:(unint64_t)a3 privacy:(unint64_t)a4 message:(const char *)a5 valist:(char *)a6;
- (void)dealloc;
- (void)dump;
@end

@implementation WFLoggerCircularBuffer

- (void)WFLog:(unint64_t)a3 privacy:(unint64_t)a4 message:(const char *)a5 valist:(char *)a6
{
  v28 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  *v18 = 0u;
  v19 = 0u;
  if (self->_wiFiLoggingLogBufferRef)
  {
    __vsnprintf_chk(v18, 0xA0uLL, 0, 0xA0uLL, a5, a6);
    v7 = -[NSDateFormatter stringFromDate:](self->_tsFormatter, "stringFromDate:", [MEMORY[0x277CBEAA8] date]);
    v8 = *MEMORY[0x277CBECE8];
    v9 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ %s\n", v7, v18);
    if (v9)
    {
      ExternalRepresentation = CFStringCreateExternalRepresentation(v8, v9, 0x8000100u, 0x3Fu);
      v15[3] = ExternalRepresentation;
      if (ExternalRepresentation)
      {
        dispatchQueue = self->_dispatchQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __55__WFLoggerCircularBuffer_WFLog_privacy_message_valist___block_invoke;
        block[3] = &unk_2789C77B8;
        block[4] = self;
        block[5] = &v14;
        dispatch_async(dispatchQueue, block);
      }

      CFRelease(v9);
    }
  }

  _Block_object_dispose(&v14, 8);
  v12 = *MEMORY[0x277D85DE8];
}

void __55__WFLoggerCircularBuffer_WFLog_privacy_message_valist___block_invoke(uint64_t a1)
{
  if (CFDataGetLength(*(*(*(a1 + 40) + 8) + 24)) >= 1)
  {
    v2 = 0;
    do
    {
      v3 = *(a1 + 32);
      v4 = *(v3 + 40);
      v5 = *(v3 + 48);
      v6 = v4 % v5;
      v7 = v5 - v4 % v5;
      Length = CFDataGetLength(*(*(*(a1 + 40) + 8) + 24));
      if (Length - v2 < v7)
      {
        v7 = Length - v2;
      }

      v9 = *(*(a1 + 32) + 32);
      BytePtr = CFDataGetBytePtr(*(*(*(a1 + 40) + 8) + 24));
      memcpy((v9 + v6), &BytePtr[v2], v7);
      v2 += v7;
      *(*(a1 + 32) + 40) += v7;
    }

    while (v2 < CFDataGetLength(*(*(*(a1 + 40) + 8) + 24)));
  }

  v11 = *(*(*(a1 + 40) + 8) + 24);
  if (v11)
  {
    CFRelease(v11);
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

- (void)WFLog:(unint64_t)a3 privacy:(unint64_t)a4 cfStrMsg:(__CFString *)a5
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if (self->_wiFiLoggingLogBufferRef)
  {
    v6 = *MEMORY[0x277CBECE8];
    v7 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ \n", a4, a5);
    if (v7)
    {
      ExternalRepresentation = CFStringCreateExternalRepresentation(v6, v7, 0x8000100u, 0x3Fu);
      v12[3] = ExternalRepresentation;
      if (ExternalRepresentation)
      {
        dispatchQueue = self->_dispatchQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __49__WFLoggerCircularBuffer_WFLog_privacy_cfStrMsg___block_invoke;
        block[3] = &unk_2789C77B8;
        block[4] = self;
        block[5] = &v11;
        dispatch_async(dispatchQueue, block);
      }

      CFRelease(v7);
    }
  }

  _Block_object_dispose(&v11, 8);
}

void __49__WFLoggerCircularBuffer_WFLog_privacy_cfStrMsg___block_invoke(uint64_t a1)
{
  if (CFDataGetLength(*(*(*(a1 + 40) + 8) + 24)) >= 1)
  {
    v2 = 0;
    do
    {
      v3 = *(a1 + 32);
      v4 = *(v3 + 40);
      v5 = *(v3 + 48);
      v6 = v4 % v5;
      v7 = v5 - v4 % v5;
      Length = CFDataGetLength(*(*(*(a1 + 40) + 8) + 24));
      if (Length - v2 < v7)
      {
        v7 = Length - v2;
      }

      v9 = *(*(a1 + 32) + 32);
      BytePtr = CFDataGetBytePtr(*(*(*(a1 + 40) + 8) + 24));
      memcpy((v9 + v6), &BytePtr[v2], v7);
      v2 += v7;
      *(*(a1 + 32) + 40) += v7;
    }

    while (v2 < CFDataGetLength(*(*(*(a1 + 40) + 8) + 24)));
  }

  v11 = *(*(*(a1 + 40) + 8) + 24);
  if (v11)
  {
    CFRelease(v11);
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

- (void)dealloc
{
  tsFormatter = self->_tsFormatter;
  if (tsFormatter)
  {
    CFRelease(tsFormatter);
    self->_tsFormatter = 0;
  }

  free(self->_wiFiLoggingLogBufferRef);
  self->_wiFiLoggingLogBufferRef = 0;
  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    dispatch_release(dispatchQueue);
  }

  v5.receiver = self;
  v5.super_class = WFLoggerCircularBuffer;
  [(WFLoggerCircularBuffer *)&v5 dealloc];
}

- (WFLoggerCircularBuffer)init
{
  v7.receiver = self;
  v7.super_class = WFLoggerCircularBuffer;
  v2 = [(WFLoggerCircularBuffer *)&v7 init];
  v3 = v2;
  if (v2 && (v2->_wiFiLoggingLogBufferIndex = 0, v2->_wiFiLoggingLogBufferMaxSize = 307200, v2->_dumpId = 0, v4 = malloc_type_calloc(0x4B000uLL, 1uLL, 0x100004077774924uLL), (v3->_wiFiLoggingLogBufferRef = v4) != 0) && (v5 = objc_alloc_init(MEMORY[0x277CCA968]), (v3->_tsFormatter = v5) != 0))
  {
    [(NSDateFormatter *)v5 setDateFormat:@"MM/dd/yyyy HH:mm:ss.SSS"];
    v3->_dispatchQueue = dispatch_queue_create("com.apple.wfloggercircularbuffer", 0);
  }

  else
  {

    return 0;
  }

  return v3;
}

- (void)dump
{
  v3 = os_transaction_create();
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __30__WFLoggerCircularBuffer_dump__block_invoke;
  v5[3] = &unk_2789C77E0;
  v5[4] = v3;
  v5[5] = self;
  dispatch_async(dispatchQueue, v5);
}

void __30__WFLoggerCircularBuffer_dump__block_invoke(uint64_t a1)
{
  memset(&v11, 0, sizeof(v11));
  if (stat("/var/mobile/Library/Logs/CrashReporter/WiFi", &v11) != -1 || !mkdir("/var/mobile/Library/Logs/CrashReporter/WiFi", 0x1FDu))
  {
    v2 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v2 setDateFormat:@"MM-dd-yyyy__HH:mm:ss.SSS"];
    v3 = *(a1 + 40);
    v4 = *(v3 + 56);
    v5 = MEMORY[0x277CCACA8];
    *(v3 + 56) = v4 + 1;
    v6 = fopen([objc_msgSend(v5 stringWithFormat:@"/var/mobile/Library/Logs/CrashReporter/WiFi/wifi-buf-%d-%@.log", v4, objc_msgSend(v2, "stringFromDate:", objc_msgSend(MEMORY[0x277CBEAA8], "date"))), "cStringUsingEncoding:", 4], "wb");
    if (v6)
    {
      v7 = v6;
      v8 = *(a1 + 40);
      v9 = *(v8 + 40);
      v10 = *(v8 + 48);
      if (v9 >= v10)
      {
        v9 %= v10;
        fwrite((*(v8 + 32) + v9), v10 - v9, 1uLL, v6);
        v8 = *(a1 + 40);
      }

      fwrite(*(v8 + 32), v9, 1uLL, v7);
      bzero(*(*(a1 + 40) + 32), *(*(a1 + 40) + 48));
      *(*(a1 + 40) + 40) = 0;
      fflush(v7);
      fclose(v7);
    }
  }
}

@end