@interface TSCEFunction_DUR2MINUTES
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_DUR2MINUTES

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v37 = 0;
  v9 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v7, v8, context, spec, 0, &v37);
  v14 = v37;
  if (v14)
  {
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v10, v14, v12, v13);
  }

  else
  {
    if ((objc_msgSend_isDuration(v9, v10, v11, v12, v13) & 1) == 0)
    {
      v20 = MEMORY[0x277D81150];
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "+[TSCEFunction_DUR2MINUTES evaluateForArgsWithContext:functionSpec:arguments:]", v18, v19);
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDateTimeFunctions.mm", v23, v24);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v26, v21, v25, 669, 0, "Shouldn't get a non-duration in DUR2MINUTES");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
    }

    objc_msgSend_rawTimeIntervalValue(v9, v16, v17, v18, v19);
    TSUDecimal::operator=();
    TSCEFormat::TSCEFormat(v35, 256);
    v15 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v31, v36, v35, v32);
  }

  v33 = v15;

  return v33;
}

@end