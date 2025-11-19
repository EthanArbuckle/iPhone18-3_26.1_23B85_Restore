@interface TSTranslationClock
- (TSTranslationClock)initWithTranslationClock:(id)a3;
- (void)setPropertyUpdateQueue:(id)a3;
@end

@implementation TSTranslationClock

- (TSTranslationClock)initWithTranslationClock:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    [(TSTranslationClock *)self initWithTranslationClock:&v14];
    v9 = v13;
    v8 = v14;
    goto LABEL_4;
  }

  v12.receiver = self;
  v12.super_class = TSTranslationClock;
  v7 = -[TSClock initWithClockIdentifier:](&v12, sel_initWithClockIdentifier_, [v5 clockIdentifier]);
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_impl, a3);
    v11.receiver = v8;
    v11.super_class = TSTranslationClock;
    v9 = [(TSClock *)&v11 propertyUpdateQueue];
    [(TSXTranslationClock *)v8->_impl setPropertyUpdateQueue:v9];
LABEL_4:
  }

  return v8;
}

- (void)setPropertyUpdateQueue:(id)a3
{
  v6.receiver = self;
  v6.super_class = TSTranslationClock;
  [(TSClock *)&v6 setPropertyUpdateQueue:a3];
  v5.receiver = self;
  v5.super_class = TSTranslationClock;
  v4 = [(TSClock *)&v5 propertyUpdateQueue];
  [(TSXTranslationClock *)self->_impl setPropertyUpdateQueue:v4];
}

- (void)initWithTranslationClock:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136316418;
    v8 = "kernelClock != nil";
    v9 = 2048;
    v10 = 0;
    v11 = 2048;
    v12 = 0;
    v13 = 2080;
    v14 = "";
    v15 = 2080;
    v16 = "/Library/Caches/com.apple.xbs/Sources/TimeSync/TimeSync/API/TSTranslationClock.m";
    v17 = 1024;
    v18 = 35;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", &v7, 0x3Au);
  }

  *a3 = 0;
  *a2 = a1;
  v6 = *MEMORY[0x277D85DE8];
}

@end