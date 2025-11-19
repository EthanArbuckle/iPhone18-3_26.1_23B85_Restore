@interface TSCH3DSharegroupMTLDeviceToSharegroupMap
+ (id)_singletonAlloc;
+ (id)allocWithZone:(_NSZone *)a3;
+ (id)sharedInstance;
- (NSMapTable)map;
- (TSCH3DSharegroupMTLDeviceToSharegroupMap)init;
@end

@implementation TSCH3DSharegroupMTLDeviceToSharegroupMap

+ (id)_singletonAlloc
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___TSCH3DSharegroupMTLDeviceToSharegroupMap;
  return objc_msgSendSuper2(&v3, sel_allocWithZone_, 0);
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2762FEBE8;
  block[3] = &unk_27A6B6250;
  block[4] = a1;
  if (qword_280A47A50 != -1)
  {
    dispatch_once(&qword_280A47A50, block);
  }

  v2 = qword_280A47A48;

  return v2;
}

+ (id)allocWithZone:(_NSZone *)a3
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "+[TSCH3DSharegroupMTLDeviceToSharegroupMap allocWithZone:]");
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSharegroup.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 100, 0, "Don't alloc a singleton");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  return 0;
}

- (TSCH3DSharegroupMTLDeviceToSharegroupMap)init
{
  v6.receiver = self;
  v6.super_class = TSCH3DSharegroupMTLDeviceToSharegroupMap;
  v2 = [(TSCH3DSharegroupMTLDeviceToSharegroupMap *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D812A0]);
    mapOnce = v2->_mapOnce;
    v2->_mapOnce = v3;
  }

  return v2;
}

- (NSMapTable)map
{
  mapOnce = self->_mapOnce;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2762FEEB0;
  v7[3] = &unk_27A6B6888;
  v7[4] = self;
  objc_msgSend_performBlockOnce_(mapOnce, a2, COERCE_DOUBLE(3221225472), v2, v3, v7);
  return self->_cachedMap;
}

@end