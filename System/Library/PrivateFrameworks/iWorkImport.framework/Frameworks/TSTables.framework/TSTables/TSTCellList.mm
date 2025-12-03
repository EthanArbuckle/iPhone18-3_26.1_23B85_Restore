@interface TSTCellList
- (TSTCellList)initWithContext:(id)context;
- (id).cxx_construct;
- (id)addCell:(id)cell;
- (id)cellAtIndex:(unint64_t)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)lastCell;
- (id)shallowAddCell:(id)cell;
- (void)addPrecopiedCell:(id)cell;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)replaceCell:(id)cell atIndex:(unint64_t)index;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TSTCellList

- (TSTCellList)initWithContext:(id)context
{
  v4.receiver = self;
  v4.super_class = TSTCellList;
  result = [(TSTCellList *)&v4 initWithContext:context];
  if (result)
  {
    result->_trailingEmptyCellCount = 0;
  }

  return result;
}

- (void)addPrecopiedCell:(id)cell
{
  cellCopy = cell;
  if (cellCopy)
  {
    if (self->_cells.var0 == self->_cells.__begin_)
    {
      sub_22116A0A0(&self->_cells.__begin_, 0x9C4uLL);
    }

    if (self->_trailingEmptyCellCount)
    {
      do
      {
        v5 = 0;
        sub_22127F618(&self->_cells.__begin_, &v5);

        v4 = self->_trailingEmptyCellCount - 1;
        self->_trailingEmptyCellCount = v4;
      }

      while (v4);
    }

    sub_22116A130(&self->_cells.__begin_, &cellCopy);
  }

  else
  {
    ++self->_trailingEmptyCellCount;
  }
}

- (id)addCell:(id)cell
{
  cellCopy = cell;
  objc_msgSend_willModify(self, v5, v6, v7, v8);
  v13 = objc_msgSend_copy(cellCopy, v9, v10, v11, v12);
  objc_msgSend_addPrecopiedCell_(self, v14, v13, v15, v16);

  return v13;
}

- (id)shallowAddCell:(id)cell
{
  cellCopy = cell;
  objc_msgSend_willModify(self, v5, v6, v7, v8);
  objc_msgSend_addPrecopiedCell_(self, v9, cellCopy, v10, v11);

  return cellCopy;
}

- (id)cellAtIndex:(unint64_t)index
{
  p_cells = &self->_cells;
  begin = self->_cells.__begin_;
  v8 = self->_cells.var0 - begin;
  if (self->_trailingEmptyCellCount + (v8 >> 3) <= index)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCellList cellAtIndex:]", v3, v4);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellMap.mm", v12, v13);
    v15 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v10, v14, 1259, 0, "Out of range in  %@", v15);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
    begin = p_cells->__begin_;
    v8 = p_cells->var0 - p_cells->__begin_;
  }

  if (v8 >> 3 <= index)
  {
    v21 = 0;
  }

  else
  {
    v21 = begin[index];
  }

  return v21;
}

- (void)replaceCell:(id)cell atIndex:(unint64_t)index
{
  cellCopy = cell;
  objc_msgSend_willModify(self, v8, v9, v10, v11);
  p_cells = &self->_cells;
  begin = self->_cells.__begin_;
  v17 = self->_cells.var0 - begin;
  if (v17 > index)
  {
    goto LABEL_9;
  }

  trailingEmptyCellCount = self->_trailingEmptyCellCount;
  if (trailingEmptyCellCount + v17 <= index)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTCellList replaceCell:atIndex:]", v13, v14);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellMap.mm", v22, v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v25, v20, v24, 1276, 0, "Asking to replace where we currently have no cell at all - invalid replaceCell: call");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
    trailingEmptyCellCount = self->_trailingEmptyCellCount;
  }

  if (trailingEmptyCellCount)
  {
    do
    {
      v43 = 0;
      sub_22127F618(&self->_cells.__begin_, &v43);

      v30 = self->_trailingEmptyCellCount - 1;
      self->_trailingEmptyCellCount = v30;
    }

    while (v30);
  }

  begin = p_cells->__begin_;
  v31 = self->_cells.var0 - self->_cells.__begin_;
  if (v31 <= index)
  {
    v32 = MEMORY[0x277D81150];
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTCellList replaceCell:atIndex:]", v13, v14);
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellMap.mm", v35, v36);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v38, v33, v37, 1283, 0, "Should now fit in real range");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41, v42);
    begin = p_cells->__begin_;
    v31 = p_cells->var0 - p_cells->__begin_;
  }

  if (v31 > index)
  {
LABEL_9:
    objc_storeStrong(&begin[index], cell);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v9 = objc_msgSend_allocWithZone_(v5, v6, zone, v7, v8);
  v14 = objc_msgSend_context(self, v10, v11, v12, v13);
  v18 = objc_msgSend_initWithContext_(v9, v15, v14, v16, v17);

  sub_22116A0A0(v18 + 8, self->_cells.var0 - self->_cells.__begin_);
  begin = self->_cells.__begin_;
  var0 = self->_cells.var0;
  while (begin != var0)
  {
    v21 = *begin;
    v27 = objc_msgSend_copy(v21, v22, v23, v24, v25);
    sub_22127F618(v18 + 8, &v27);

    ++begin;
  }

  v18[11] = self->_trailingEmptyCellCount;
  return v18;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v8 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, off_2812E4498[108], v6, v7);

  v13 = objc_msgSend_currentLocale(MEMORY[0x277D81228], v9, v10, v11, v12);
  sub_22116A0A0(&self->_cells.__begin_, *(v8 + 32));
  v17 = *(v8 + 40);
  if (v17)
  {
    v18 = (v17 + 8);
  }

  else
  {
    v18 = 0;
  }

  v19 = *(v8 + 32);
  if (v19)
  {
    v20 = 8 * v19;
    do
    {
      TST::CellListArchive_OptionalCell::CellListArchive_OptionalCell(v35, *v18);
      if (v35[16])
      {
        v25 = [TSTCell alloc];
        v29 = objc_msgSend_initWithLocale_(v25, v26, v13, v27, v28);
        if (v36)
        {
          v30 = v36;
        }

        else
        {
          v30 = &TST::_Cell_default_instance_;
        }

        v24 = v29;
        sub_221123AF0(v30, v29, unarchiverCopy);
        objc_msgSend_addPrecopiedCell_(self, v31, v24, v32, v33);
      }

      else
      {
        v24 = 0;
        objc_msgSend_addPrecopiedCell_(self, v21, 0, v22, v23);
      }

      TST::CellListArchive_OptionalCell::~CellListArchive_OptionalCell(v35);
      ++v18;
      v20 -= 8;
    }

    while (v20);
  }

  if (*(v8 + 16))
  {
    self->_trailingEmptyCellCount += *(v8 + 48);
  }

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = sub_22127FEA0;
  v34[3] = &unk_27845E3F8;
  v34[4] = self;
  objc_msgSend_addFinalizeHandler_(unarchiverCopy, v14, v34, v15, v16);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_221280B44, off_2812E4498[108], v5);

  begin = self->_cells.__begin_;
  var0 = self->_cells.var0;
  while (begin != var0)
  {
    v9 = *begin;
    v10 = v9;
    v11 = *(v6 + 40);
    if (!v11)
    {
      goto LABEL_9;
    }

    v12 = *(v6 + 32);
    v13 = *v11;
    if (v12 < *v11)
    {
      *(v6 + 32) = v12 + 1;
      v14 = *&v11[2 * v12 + 2];
      if (!v9)
      {
        goto LABEL_16;
      }

      goto LABEL_11;
    }

    if (v13 == *(v6 + 36))
    {
LABEL_9:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v6 + 24));
      v11 = *(v6 + 40);
      v13 = *v11;
    }

    *v11 = v13 + 1;
    v14 = google::protobuf::Arena::CreateMaybeMessage<TST::CellListArchive_OptionalCell>(*(v6 + 24));
    v15 = *(v6 + 32);
    v16 = *(v6 + 40) + 8 * v15;
    *(v6 + 32) = v15 + 1;
    *(v16 + 8) = v14;
    if (!v10)
    {
      goto LABEL_16;
    }

LABEL_11:
    *(v14 + 16) |= 1u;
    v17 = *(v14 + 24);
    if (!v17)
    {
      v18 = *(v14 + 8);
      if (v18)
      {
        v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
      }

      v17 = google::protobuf::Arena::CreateMaybeMessage<TST::Cell>(v18);
      *(v14 + 24) = v17;
    }

    sub_2211243E4(v10, v17, archiverCopy);
LABEL_16:

    ++begin;
  }

  trailingEmptyCellCount = self->_trailingEmptyCellCount;
  if (trailingEmptyCellCount)
  {
    *(v6 + 16) |= 1u;
    *(v6 + 48) = trailingEmptyCellCount;
  }
}

- (id)lastCell
{
  var0 = self->_cells.var0;
  if (self->_cells.__begin_ == var0 || self->_trailingEmptyCellCount)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(var0 - 1);
  }

  return v4;
}

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 10) = 0;
  *(self + 8) = 0;
  return self;
}

@end