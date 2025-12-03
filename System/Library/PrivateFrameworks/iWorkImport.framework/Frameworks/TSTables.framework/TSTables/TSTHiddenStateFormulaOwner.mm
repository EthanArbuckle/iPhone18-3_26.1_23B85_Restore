@interface TSTHiddenStateFormulaOwner
- (TSKUIDStruct)ownerUID;
- (TSTHiddenStateFormulaOwner)initWithContext:(id)context ownerUID:(const TSKUIDStruct *)d;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
- (void)setNeedsToUpdateFilterSetForImport:(BOOL)import;
- (void)setOwnerUID:(TSKUIDStruct)d;
- (void)setThresholdCellValues:(id)values;
@end

@implementation TSTHiddenStateFormulaOwner

- (TSTHiddenStateFormulaOwner)initWithContext:(id)context ownerUID:(const TSKUIDStruct *)d
{
  v6.receiver = self;
  v6.super_class = TSTHiddenStateFormulaOwner;
  result = [(TSTHiddenStateFormulaOwner *)&v6 initWithContext:context];
  if (result)
  {
    result->_ownerUID = *d;
    result->_needsToUpdateFilterSetForImport = 0;
  }

  return result;
}

- (void)setOwnerUID:(TSKUIDStruct)d
{
  upper = d._upper;
  lower = d._lower;
  p_ownerUID = &self->_ownerUID;
  if (d._lower != self->_ownerUID._lower || d._upper != self->_ownerUID._upper)
  {
    objc_msgSend_willModify(self, a2, d._lower, d._upper, v3);
    p_ownerUID->_lower = lower;
    p_ownerUID->_upper = upper;
  }
}

- (void)setNeedsToUpdateFilterSetForImport:(BOOL)import
{
  if (self->_needsToUpdateFilterSetForImport != import)
  {
    objc_msgSend_willModify(self, a2, import, v3, v4);
    self->_needsToUpdateFilterSetForImport = import;
  }
}

- (void)setThresholdCellValues:(id)values
{
  valuesCopy = values;
  objc_msgSend_willModify(self, v5, v6, v7, v8);
  thresholdCellValues = self->_thresholdCellValues;
  self->_thresholdCellValues = valuesCopy;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[240], v5, v6);

  v8 = TSKUIDStruct::loadFromMessage();
  self->_ownerUID._lower = v8;
  self->_ownerUID._upper = v9;
  if (!(v8 | v9))
  {
    self->_ownerUID._lower = TSKMakeUIDStructRandom();
    self->_ownerUID._upper = v10;
  }

  self->_needsToUpdateFilterSetForImport = *(v7 + 56);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_22125EB60, off_2812E4498[240], v5);

  *(v6 + 16) |= 1u;
  v7 = *(v6 + 48);
  if (!v7)
  {
    v8 = *(v6 + 8);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = MEMORY[0x223DA0300](v8);
    *(v6 + 48) = v7;
  }

  TSKUIDStruct::saveToMessage(&self->_ownerUID, v7);
  v16 = objc_msgSend_count(self->_thresholdCellValues, v9, v10, v11, v12);
  if (v16)
  {
    v17 = 0;
    while (1)
    {
      v18 = *(v6 + 40);
      if (!v18)
      {
        goto LABEL_12;
      }

      v19 = *(v6 + 32);
      v20 = *v18;
      if (v19 >= *v18)
      {
        break;
      }

      *(v6 + 32) = v19 + 1;
      v21 = *&v18[2 * v19 + 2];
LABEL_14:
      v24 = objc_msgSend_objectAtIndex_(self->_thresholdCellValues, v13, v17, v14, v15);
      objc_msgSend_encodeCellValueToArchive_(v24, v25, v21, v26, v27);

      if (v16 == ++v17)
      {
        goto LABEL_15;
      }
    }

    if (v20 == *(v6 + 36))
    {
LABEL_12:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v6 + 24));
      v18 = *(v6 + 40);
      v20 = *v18;
    }

    *v18 = v20 + 1;
    v21 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellValueArchive>(*(v6 + 24));
    v22 = *(v6 + 32);
    v23 = *(v6 + 40) + 8 * v22;
    *(v6 + 32) = v22 + 1;
    *(v23 + 8) = v21;
    goto LABEL_14;
  }

LABEL_15:
  needsToUpdateFilterSetForImport = self->_needsToUpdateFilterSetForImport;
  *(v6 + 16) |= 2u;
  *(v6 + 56) = needsToUpdateFilterSetForImport;
}

- (TSKUIDStruct)ownerUID
{
  p_ownerUID = &self->_ownerUID;
  lower = self->_ownerUID._lower;
  upper = p_ownerUID->_upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

@end