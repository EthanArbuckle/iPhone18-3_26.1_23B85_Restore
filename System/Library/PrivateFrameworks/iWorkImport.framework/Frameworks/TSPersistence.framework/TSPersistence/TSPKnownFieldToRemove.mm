@interface TSPKnownFieldToRemove
- (void)mergeToMessage:(Message *)message reflection:(const Reflection *)reflection;
@end

@implementation TSPKnownFieldToRemove

- (void)mergeToMessage:(Message *)message reflection:(const Reflection *)reflection
{
  v7 = (*(message->var0 + 19))(message, a2);
  FieldByNumber = google::protobuf::Descriptor::FindFieldByNumber(v7, self->super._number);
  if (FieldByNumber || (FieldByNumber = google::protobuf::Reflection::FindKnownExtensionByNumber(reflection, self->super._number)) != 0)
  {

    google::protobuf::Reflection::ClearField(reflection, message, FieldByNumber);
  }

  else
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSPKnownFieldToRemove mergeToMessage:reflection:]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPKnownField.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 294, 0, "Unexpected unknown field (%d).", self->super._number);

    v17 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v17, v15, v16);
  }
}

@end