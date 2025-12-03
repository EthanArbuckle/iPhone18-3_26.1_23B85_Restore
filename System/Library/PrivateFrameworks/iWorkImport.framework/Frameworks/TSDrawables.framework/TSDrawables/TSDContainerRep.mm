@interface TSDContainerRep
- (TSDContainerInfo)containerInfo;
- (TSDContainerRep)initWithLayout:(id)layout canvasView:(id)view;
- (TSDMutableContainerInfo)mutableContainerInfo;
@end

@implementation TSDContainerRep

- (TSDContainerRep)initWithLayout:(id)layout canvasView:(id)view
{
  v19.receiver = self;
  v19.super_class = TSDContainerRep;
  v4 = [(TSDRep *)&v19 initWithLayout:layout canvas:view];
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_info(v4, v5, v6);
    v9 = TSUProtocolCast();

    if (!v9)
    {
      v11 = MEMORY[0x277D81150];
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSDContainerRep initWithLayout:canvasView:]", &unk_2885A1758);
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDContainerRep.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 20, 0, "info is not a container info");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
      v7 = 0;
    }
  }

  return v7;
}

- (TSDContainerInfo)containerInfo
{
  v3 = objc_msgSend_info(self, a2, v2);
  v4 = TSUProtocolCast();

  return v4;
}

- (TSDMutableContainerInfo)mutableContainerInfo
{
  v3 = objc_msgSend_info(self, a2, v2);
  v4 = TSUProtocolCast();

  return v4;
}

@end