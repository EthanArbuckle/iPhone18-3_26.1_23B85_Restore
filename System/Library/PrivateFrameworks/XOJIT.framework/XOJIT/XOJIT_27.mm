void llvm::MCStreamer::emitCFIEscape(llvm::MCStreamer *a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*a1 + 80))(a1);
  LODWORD(v7) = 10;
  *(&v7 + 1) = v5;
  v8 = 0;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  if (a3)
  {
    if (a3 >= 0)
    {
      operator new();
    }

    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  v13 = 0;
  v12 = 0;
  CurrentDwarfFrameInfo = llvm::MCStreamer::getCurrentDwarfFrameInfo(a1);
  if (CurrentDwarfFrameInfo)
  {
    std::vector<llvm::MCCFIInstruction>::push_back[abi:nn200100]((CurrentDwarfFrameInfo + 32), &v7);
  }
}

void llvm::MCStreamer::emitCFIGnuArgsSize(llvm::MCStreamer *this, int a2)
{
  v4 = (*(*this + 80))(this);
  LODWORD(v6) = 16;
  *(&v6 + 1) = v4;
  v7 = 0;
  v8 = a2;
  v13 = 0;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  v12 = 0;
  CurrentDwarfFrameInfo = llvm::MCStreamer::getCurrentDwarfFrameInfo(this);
  if (CurrentDwarfFrameInfo)
  {
    std::vector<llvm::MCCFIInstruction>::push_back[abi:nn200100]((CurrentDwarfFrameInfo + 32), &v6);
  }
}

uint64_t llvm::MCStreamer::emitCFISignalFrame(llvm::MCStreamer *this)
{
  result = llvm::MCStreamer::getCurrentDwarfFrameInfo(this);
  if (result)
  {
    *(result + 72) = 1;
  }

  return result;
}

void llvm::MCStreamer::emitCFIUndefined(llvm::MCStreamer *this, int a2)
{
  v4 = (*(*this + 80))(this);
  LODWORD(v6) = 12;
  *(&v6 + 1) = v4;
  v7 = a2;
  v8 = 0;
  v13 = 0;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  v12 = 0;
  CurrentDwarfFrameInfo = llvm::MCStreamer::getCurrentDwarfFrameInfo(this);
  if (CurrentDwarfFrameInfo)
  {
    std::vector<llvm::MCCFIInstruction>::push_back[abi:nn200100]((CurrentDwarfFrameInfo + 32), &v6);
  }
}

void llvm::MCStreamer::emitCFIRegister(llvm::MCStreamer *this, int a2, int a3)
{
  v6 = (*(*this + 80))(this);
  LODWORD(v8) = 13;
  *(&v8 + 1) = v6;
  v9 = a2;
  v10 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  CurrentDwarfFrameInfo = llvm::MCStreamer::getCurrentDwarfFrameInfo(this);
  if (CurrentDwarfFrameInfo)
  {
    std::vector<llvm::MCCFIInstruction>::push_back[abi:nn200100]((CurrentDwarfFrameInfo + 32), &v8);
  }
}

void llvm::MCStreamer::emitCFIWindowSave(llvm::MCStreamer *this)
{
  v2 = (*(*this + 80))(this);
  LODWORD(v4) = 14;
  *(&v4 + 1) = v2;
  v5 = 0;
  v10 = 0;
  v7 = 0;
  v8 = 0;
  v6 = 0;
  v9 = 0;
  CurrentDwarfFrameInfo = llvm::MCStreamer::getCurrentDwarfFrameInfo(this);
  if (CurrentDwarfFrameInfo)
  {
    std::vector<llvm::MCCFIInstruction>::push_back[abi:nn200100]((CurrentDwarfFrameInfo + 32), &v4);
  }
}

void llvm::MCStreamer::emitCFINegateRAState(llvm::MCStreamer *this)
{
  v2 = (*(*this + 80))(this);
  LODWORD(v4) = 15;
  *(&v4 + 1) = v2;
  v5 = 0;
  v10 = 0;
  v7 = 0;
  v8 = 0;
  v6 = 0;
  v9 = 0;
  CurrentDwarfFrameInfo = llvm::MCStreamer::getCurrentDwarfFrameInfo(this);
  if (CurrentDwarfFrameInfo)
  {
    std::vector<llvm::MCCFIInstruction>::push_back[abi:nn200100]((CurrentDwarfFrameInfo + 32), &v4);
  }
}

uint64_t llvm::MCStreamer::emitCFIReturnColumn(llvm::MCStreamer *this, int a2)
{
  result = llvm::MCStreamer::getCurrentDwarfFrameInfo(this);
  if (result)
  {
    *(result + 76) = a2;
  }

  return result;
}

uint64_t llvm::MCStreamer::EnsureValidWinFrameInfo(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 144);
  if (*(v4 + 420) != 4 || ((v5 = *(v4 + 428), v5 != 6) ? (v6 = v5 == 0) : (v6 = 1), v6))
  {
    v7 = ".seh_* directives are not supported on this target";
LABEL_8:
    v10 = v7;
    v11 = 259;
    llvm::MCContext::reportError(v3, a2, &v10);
    return 0;
  }

  v8 = *(a1 + 104);
  if (!v8 || *(v8 + 8))
  {
    v7 = ".seh_ directive must appear within an active frame";
    goto LABEL_8;
  }

  return v8;
}

uint64_t llvm::MCStreamer::emitWinCFIStartProc(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[1];
  v5 = *(v4 + 144);
  if (*(v5 + 420) == 4)
  {
    v6 = *(v5 + 428);
    if (v6 != 6 && v6 != 0)
    {
      v9 = a1[13];
      if (v9)
      {
        if (!*(v9 + 8))
        {
          v10 = "Starting a function before ending the previous one!";
          LOWORD(v11) = 259;
          llvm::MCContext::reportError(v4, a3, &v10);
        }
      }

      (*(*a1 + 80))(a1);
      a1[14] = (a1[11] - a1[10]) >> 3;
      operator new();
    }
  }

  v10 = ".seh_* directives are not supported on this target";
  LOWORD(v11) = 259;
  return llvm::MCContext::reportError(v4, a3, &v10);
}

uint64_t *std::unique_ptr<llvm::WinEH::FrameInfo>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v5 = (v2 + 160);
    std::vector<llvm::WinEH::FrameInfo::Segment>::__destroy_vector::operator()[abi:nn200100](&v5);
    v5 = (v2 + 136);
    std::vector<std::pair<llvm::MCSymbol *,llvm::WinEH::FrameInfo::Epilog>>::__destroy_vector::operator()[abi:nn200100](&v5);
    MEMORY[0x277C69E30](*(v2 + 112), 8);
    v3 = *(v2 + 88);
    if (v3)
    {
      *(v2 + 96) = v3;
      operator delete(v3);
    }

    MEMORY[0x277C69E40](v2, 0x1060C40CDDC3B8FLL);
  }

  return a1;
}

uint64_t llvm::MCStreamer::emitWinCFIEndProc(void *a1, uint64_t a2)
{
  result = llvm::MCStreamer::EnsureValidWinFrameInfo(a1, a2);
  if (result)
  {
    v5 = result;
    if (*(result + 80))
    {
      v6 = a1[1];
      v11 = "Not all chained regions terminated!";
      v12 = 259;
      llvm::MCContext::reportError(v6, a2, &v11);
    }

    v7 = (*(*a1 + 80))(a1);
    v5[1] = v7;
    if (!v5[2])
    {
      v5[2] = v7;
    }

    v8 = a1[14];
    v9 = a1[11] - a1[10];
    if (v8 != v9 >> 3)
    {
      v10 = v9 >> 3;
      do
      {
        (*(*a1 + 16))(a1, *(a1[10] + 8 * v8++));
      }

      while (v10 != v8);
    }

    return (*(*a1 + 168))(a1, v5[7], 0);
  }

  return result;
}

uint64_t llvm::MCStreamer::emitWinCFIFuncletOrFuncEnd(void *a1, uint64_t a2)
{
  result = llvm::MCStreamer::EnsureValidWinFrameInfo(a1, a2);
  if (result)
  {
    v5 = result;
    if (*(result + 80))
    {
      v6 = a1[1];
      v7 = "Not all chained regions terminated!";
      v8 = 259;
      llvm::MCContext::reportError(v6, a2, &v7);
    }

    result = (*(*a1 + 80))(a1);
    *(v5 + 16) = result;
  }

  return result;
}

uint64_t llvm::MCStreamer::emitWinCFIStartChained(uint64_t a1, uint64_t a2)
{
  result = llvm::MCStreamer::EnsureValidWinFrameInfo(a1, a2);
  if (result)
  {
    (*(*a1 + 80))(a1);
    operator new();
  }

  return result;
}

uint64_t llvm::MCStreamer::emitWinCFIEndChained(void *a1, uint64_t a2)
{
  result = llvm::MCStreamer::EnsureValidWinFrameInfo(a1, a2);
  if (result)
  {
    v5 = result;
    if (*(result + 80))
    {
      result = (*(*a1 + 80))(a1);
      *(v5 + 8) = result;
      a1[13] = *(v5 + 80);
    }

    else
    {
      v6 = a1[1];
      v7 = "End of a chained region outside a chained region!";
      v8 = 259;
      return llvm::MCContext::reportError(v6, a2, &v7);
    }
  }

  return result;
}

uint64_t llvm::MCStreamer::emitWinEHHandler(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  result = llvm::MCStreamer::EnsureValidWinFrameInfo(a1, a5);
  if (result)
  {
    v11 = result;
    if (*(result + 80))
    {
      v12 = *(a1 + 8);
      v14[0] = "Chained unwind areas can't have handlers!";
      v15 = 259;
      return llvm::MCContext::reportError(v12, a5, v14);
    }

    else
    {
      *(result + 24) = a2;
      if ((a3 & 1) == 0 && (a4 & 1) == 0)
      {
        v13 = *(a1 + 8);
        v14[0] = "Don't know what kind of handler this is!";
        v15 = 259;
        result = llvm::MCContext::reportError(v13, a5, v14);
      }

      if (a3)
      {
        *(v11 + 72) = 1;
      }

      if (a4)
      {
        *(v11 + 73) = 1;
      }
    }
  }

  return result;
}

uint64_t llvm::MCStreamer::emitWinEHHandlerData(uint64_t a1, uint64_t a2)
{
  result = llvm::MCStreamer::EnsureValidWinFrameInfo(a1, a2);
  if (result)
  {
    if (*(result + 80))
    {
      v5 = *(a1 + 8);
      v6 = "Chained unwind areas can't have handlers!";
      v7 = 259;
      return llvm::MCContext::reportError(v5, a2, &v6);
    }
  }

  return result;
}

void llvm::MCStreamer::emitWinCFIPushReg(void *a1, int a2, uint64_t a3)
{
  valid = llvm::MCStreamer::EnsureValidWinFrameInfo(a1, a3);
  if (valid)
  {
    v6 = valid;
    v7 = (*(*a1 + 80))(a1);
    v8 = *(a1[1] + 152);
    LODWORD(v12) = a2;
    v9 = llvm::DenseMapBase<llvm::DenseMap<llvm::MCRegister,int,llvm::DenseMapInfo<llvm::MCRegister,void>,llvm::detail::DenseMapPair<llvm::MCRegister,int>>,llvm::MCRegister,int,llvm::DenseMapInfo<llvm::MCRegister,void>,llvm::detail::DenseMapPair<llvm::MCRegister,int>>::find(v8 + 160, &v12);
    if (*(v8 + 160) + 8 * *(v8 + 176) == v9)
    {
      v10 = &v12;
    }

    else
    {
      v10 = (v9 + 4);
    }

    v11 = *v10;
    *&v12 = v7;
    DWORD2(v12) = -1;
    HIDWORD(v12) = v11;
    v13 = 0;
    std::vector<llvm::WinEH::Instruction>::push_back[abi:nn200100](v6 + 88, &v12);
  }
}

void std::vector<llvm::WinEH::Instruction>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = *a1;
    v8 = v4 - *a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3) + 1;
    if (v9 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v7) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v12 = 8 * (v8 >> 3);
    *v12 = *a2;
    *(v12 + 16) = *(a2 + 2);
    v6 = v12 + 24;
    v13 = v12 - v8;
    memcpy((v12 - v8), v7, v8);
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
    v6 = v4 + 24;
  }

  *(a1 + 8) = v6;
}

void llvm::MCStreamer::emitWinCFISetFrame(void *a1, int a2, unsigned int a3, uint64_t a4)
{
  valid = llvm::MCStreamer::EnsureValidWinFrameInfo(a1, a4);
  if (valid)
  {
    v9 = valid;
    if ((*(valid + 76) & 0x80000000) == 0)
    {
      v10 = a1[1];
      v11 = "frame register and offset can be set at most once";
LABEL_8:
      *&v20 = v11;
      v22 = 259;
      llvm::MCContext::reportError(v10, a4, &v20);
      return;
    }

    if ((a3 & 0xF) != 0)
    {
      v10 = a1[1];
      v11 = "offset is not a multiple of 16";
      goto LABEL_8;
    }

    if (a3 >= 0xF1)
    {
      v10 = a1[1];
      v11 = "frame offset must be less than or equal to 240";
      goto LABEL_8;
    }

    v12 = (*(*a1 + 80))(a1);
    v13 = *(a1[1] + 152);
    LODWORD(v20) = a2;
    v14 = llvm::DenseMapBase<llvm::DenseMap<llvm::MCRegister,int,llvm::DenseMapInfo<llvm::MCRegister,void>,llvm::detail::DenseMapPair<llvm::MCRegister,int>>,llvm::MCRegister,int,llvm::DenseMapInfo<llvm::MCRegister,void>,llvm::detail::DenseMapPair<llvm::MCRegister,int>>::find(v13 + 160, &v20);
    if (*(v13 + 160) + 8 * *(v13 + 176) == v14)
    {
      v15 = &v20;
    }

    else
    {
      v15 = (v14 + 4);
    }

    v16 = *v15;
    *&v20 = v12;
    *(&v20 + 1) = __PAIR64__(v16, a3);
    v21 = 3;
    v17 = *(v9 + 88);
    v18 = *(v9 + 96);
    v19 = v9 + 88;
    *(v19 - 12) = -1431655765 * ((v18 - v17) >> 3);
    std::vector<llvm::WinEH::Instruction>::push_back[abi:nn200100](v19, &v20);
  }
}

void llvm::MCStreamer::emitWinCFIAllocStack(void *a1, unsigned int a2, uint64_t a3)
{
  valid = llvm::MCStreamer::EnsureValidWinFrameInfo(a1, a3);
  if (valid)
  {
    if (!a2)
    {
      v7 = a1[1];
      v8 = "stack allocation size must be non-zero";
      goto LABEL_6;
    }

    if ((a2 & 7) != 0)
    {
      v7 = a1[1];
      v8 = "stack allocation size is not a multiple of 8";
LABEL_6:
      *&v12 = v8;
      v14 = 259;
      llvm::MCContext::reportError(v7, a3, &v12);
      return;
    }

    v9 = valid;
    v10 = (*(*a1 + 80))(a1);
    if (a2 > 0x80)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    *&v12 = v10;
    *(&v12 + 1) = a2 | 0xFFFFFFFF00000000;
    v13 = v11;
    std::vector<llvm::WinEH::Instruction>::push_back[abi:nn200100](v9 + 88, &v12);
  }
}

void llvm::MCStreamer::emitWinCFISaveReg(void *a1, int a2, unsigned int a3, uint64_t a4)
{
  valid = llvm::MCStreamer::EnsureValidWinFrameInfo(a1, a4);
  if (valid)
  {
    if ((a3 & 7) != 0)
    {
      v9 = a1[1];
      *&v17 = "register save offset is not 8 byte aligned";
      v19 = 259;
      llvm::MCContext::reportError(v9, a4, &v17);
    }

    else
    {
      v10 = valid;
      v11 = (*(*a1 + 80))(a1);
      v12 = *(a1[1] + 152);
      LODWORD(v17) = a2;
      v13 = llvm::DenseMapBase<llvm::DenseMap<llvm::MCRegister,int,llvm::DenseMapInfo<llvm::MCRegister,void>,llvm::detail::DenseMapPair<llvm::MCRegister,int>>,llvm::MCRegister,int,llvm::DenseMapInfo<llvm::MCRegister,void>,llvm::detail::DenseMapPair<llvm::MCRegister,int>>::find(v12 + 160, &v17);
      if (*(v12 + 160) + 8 * *(v12 + 176) == v13)
      {
        v14 = &v17;
      }

      else
      {
        v14 = (v13 + 4);
      }

      v15 = *v14;
      *&v17 = v11;
      if (a3 <= 0x7FFF8)
      {
        v16 = 4;
      }

      else
      {
        v16 = 5;
      }

      *(&v17 + 1) = __PAIR64__(v15, a3);
      v18 = v16;
      std::vector<llvm::WinEH::Instruction>::push_back[abi:nn200100](v10 + 88, &v17);
    }
  }
}

void llvm::MCStreamer::emitWinCFISaveXMM(void *a1, int a2, unsigned int a3, uint64_t a4)
{
  valid = llvm::MCStreamer::EnsureValidWinFrameInfo(a1, a4);
  if (valid)
  {
    if ((a3 & 0xF) != 0)
    {
      v9 = a1[1];
      *&v17 = "offset is not a multiple of 16";
      v19 = 259;
      llvm::MCContext::reportError(v9, a4, &v17);
    }

    else
    {
      v10 = valid;
      v11 = (*(*a1 + 80))(a1);
      v12 = *(a1[1] + 152);
      LODWORD(v17) = a2;
      v13 = llvm::DenseMapBase<llvm::DenseMap<llvm::MCRegister,int,llvm::DenseMapInfo<llvm::MCRegister,void>,llvm::detail::DenseMapPair<llvm::MCRegister,int>>,llvm::MCRegister,int,llvm::DenseMapInfo<llvm::MCRegister,void>,llvm::detail::DenseMapPair<llvm::MCRegister,int>>::find(v12 + 160, &v17);
      if (*(v12 + 160) + 8 * *(v12 + 176) == v13)
      {
        v14 = &v17;
      }

      else
      {
        v14 = (v13 + 4);
      }

      v15 = *v14;
      *&v17 = v11;
      if (a3 <= 0x7FFF8)
      {
        v16 = 8;
      }

      else
      {
        v16 = 9;
      }

      *(&v17 + 1) = __PAIR64__(v15, a3);
      v18 = v16;
      std::vector<llvm::WinEH::Instruction>::push_back[abi:nn200100](v10 + 88, &v17);
    }
  }
}

void llvm::MCStreamer::emitWinCFIPushFrame(void *a1, int a2, uint64_t a3)
{
  valid = llvm::MCStreamer::EnsureValidWinFrameInfo(a1, a3);
  if (valid)
  {
    v7 = valid + 88;
    if (*(valid + 88) == *(valid + 96))
    {
      v9 = (*(*a1 + 80))(a1);
      v10 = a2;
      v11 = 0xAFFFFFFFFLL;
      std::vector<llvm::WinEH::Instruction>::push_back[abi:nn200100](v7, &v9);
    }

    else
    {
      v8 = a1[1];
      v9 = "If present, PushMachFrame must be the first UOP";
      v12 = 259;
      llvm::MCContext::reportError(v8, a3, &v9);
    }
  }
}

uint64_t llvm::MCStreamer::emitWinCFIEndProlog(uint64_t a1, uint64_t a2)
{
  result = llvm::MCStreamer::EnsureValidWinFrameInfo(a1, a2);
  if (result)
  {
    v4 = result;
    result = (*(*a1 + 80))(a1);
    *(v4 + 40) = result;
  }

  return result;
}

uint64_t llvm::MCStreamer::finish(void *a1, uint64_t a2)
{
  v3 = a1[4];
  if ((a1[3] == v3 || *(v3 - 80)) && ((v4 = a1[11], a1[10] == v4) || *(*(v4 - 8) + 8)))
  {
    v5 = a1[2];
    if (v5)
    {
      (*(*v5 + 80))(v5);
    }

    v6 = *(*a1 + 1232);

    return v6(a1);
  }

  else
  {
    v8 = a1[1];
    v9 = "Unfinished frame!";
    v10 = 259;
    return llvm::MCContext::reportError(v8, a2, &v9);
  }
}

void *llvm::MCStreamer::maybeEmitDwarf64Mark(void *this)
{
  if (*(this[1] + 1714) == 1)
  {
    v6 = v1;
    v7 = v2;
    v3 = this;
    v4 = "DWARF64 Mark";
    v5 = 259;
    (*(*this + 112))(this, &v4, 1);
    return (*(*v3 + 512))(v3, 0xFFFFFFFFLL, 4);
  }

  return this;
}

uint64_t llvm::MCStreamer::emitDwarfUnitLength(llvm::MCStreamer *this, uint64_t a2, const llvm::Twine *a3)
{
  llvm::MCStreamer::maybeEmitDwarf64Mark(this);
  (*(*this + 112))(this, a3, 1);
  if (*(*(this + 1) + 1714))
  {
    v6 = 8;
  }

  else
  {
    v6 = 4;
  }

  v7 = *(*this + 512);

  return v7(this, a2, v6);
}

unint64_t llvm::MCStreamer::emitDwarfUnitLength(llvm::MCStreamer *this, const llvm::Twine *a2, const llvm::Twine *a3)
{
  llvm::MCStreamer::maybeEmitDwarf64Mark(this);
  v6 = 1;
  (*(*this + 112))(this, a3, 1);
  v7 = *(this + 1);
  v8 = *(a2 + 32);
  if (*(a2 + 32))
  {
    if (v8 == 1)
    {
      v20 = "_start";
      LOBYTE(v8) = 3;
    }

    else
    {
      v9 = *(a2 + 1);
      if (*(a2 + 33) == 1)
      {
        v10 = *a2;
      }

      else
      {
        LOBYTE(v8) = 2;
        v10 = a2;
      }

      v20 = v10;
      v21 = v9;
      v22 = "_start";
      v6 = 3;
    }
  }

  v23 = v8;
  v24 = v6;
  v11 = 1;
  TempSymbol = llvm::MCContext::createTempSymbol(v7, &v20, 1);
  v13 = *(this + 1);
  v14 = *(a2 + 32);
  if (*(a2 + 32))
  {
    if (v14 == 1)
    {
      v20 = "_end";
      LOBYTE(v14) = 3;
    }

    else
    {
      v15 = *(a2 + 1);
      if (*(a2 + 33) == 1)
      {
        v16 = *a2;
      }

      else
      {
        LOBYTE(v14) = 2;
        v16 = a2;
      }

      v20 = v16;
      v21 = v15;
      v22 = "_end";
      v11 = 3;
    }
  }

  v23 = v14;
  v24 = v11;
  v17 = llvm::MCContext::createTempSymbol(v13, &v20, 1);
  if (*(*(this + 1) + 1714))
  {
    v18 = 8;
  }

  else
  {
    v18 = 4;
  }

  (*(*this + 840))(this, v17, TempSymbol, v18);
  (*(*this + 192))(this, TempSymbol, 0);
  return v17;
}

uint64_t llvm::MCStreamer::emitAssignment(uint64_t a1, void *a2, unsigned __int8 *a3)
{
  llvm::MCStreamer::visitUsedExpr(a1, a3);
  a2[3] = a3;
  v6 = a2[1] & 0xFFFFFFFFFFFFC7FFLL | 0x1000;
  *a2 &= 7uLL;
  a2[1] = v6;
  result = *(a1 + 16);
  if (result)
  {
    v8 = *(*result + 24);

    return v8();
  }

  return result;
}

uint64_t llvm::MCStreamer::visitUsedExpr(uint64_t result, unsigned __int8 *a2)
{
  v3 = result;
  while (1)
  {
    v4 = *a2;
    if (v4 > 2)
    {
      break;
    }

    if (*a2)
    {
      if (v4 != 2)
      {
        return result;
      }

      v6 = *(a2 + 2);
      v7 = *(*v3 + 56);
      v8 = v3;

      return v7(v8, v6);
    }

    result = llvm::MCStreamer::visitUsedExpr(v3, *(a2 + 2));
    v5 = 24;
LABEL_7:
    a2 = *&a2[v5];
  }

  if (v4 == 3)
  {
    v5 = 16;
    goto LABEL_7;
  }

  if (v4 == 4)
  {
    v7 = *(*(a2 - 1) + 56);
    v8 = (a2 - 8);
    v6 = v3;

    return v7(v8, v6);
  }

  return result;
}

uint64_t llvm::MCStreamer::emitInstruction(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2)
  {
    v4 = result;
    v5 = 16 * v2;
    do
    {
      v6 = *(a2 + 16) + v5;
      if (*(v6 - 16) == 5)
      {
        result = llvm::MCStreamer::visitUsedExpr(v4, *(v6 - 8));
      }

      v5 -= 16;
    }

    while (v5);
  }

  return result;
}

void llvm::MCStreamer::emitPseudoProbe(void *a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, unint64_t a7)
{
  v14 = a1[1];
  v19[0] = "tmp";
  v23 = 259;
  TempSymbol = llvm::MCContext::createTempSymbol(v14, v19, 1);
  (*(*a1 + 192))(a1, TempSymbol, 0);
  v19[0] = a2;
  v19[1] = a3;
  v20 = a5;
  v21 = a4;
  v22 = TempSymbol;
  for (i = *(v14 + 217); i; i = v17[1])
  {
    while (1)
    {
      v17 = i;
      v18 = i[4];
      if (v18 <= a7)
      {
        break;
      }

      i = *v17;
      if (!*v17)
      {
        goto LABEL_7;
      }
    }

    if (v18 >= a7)
    {
      llvm::MCPseudoProbeInlineTree::addPseudoProbe((v17 + 5), v19, a6);
    }
  }

LABEL_7:
  operator new();
}

uint64_t llvm::MCStreamer::emitAbsoluteSymbolDiff(llvm::MCStreamer *this, const llvm::MCSymbol *a2, const llvm::MCSymbol *a3, uint64_t a4)
{
  v8 = *(this + 1);
  v9 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(v8 + 184, 24, 3);
  v10 = v9;
  if (*(*(v8 + 144) + 18))
  {
    v11 = 0x10000;
  }

  else
  {
    v11 = 0;
  }

  *v9 = 2;
  *(v9 + 1) = v11 | (*(v9 + 4) << 24);
  *(v9 + 8) = 0;
  *(v9 + 16) = a2;
  v12 = *(this + 1);
  v13 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(v12 + 184, 24, 3);
  v14 = v13;
  if (*(*(v12 + 144) + 18))
  {
    v15 = 0x10000;
  }

  else
  {
    v15 = 0;
  }

  *v13 = 2;
  *(v13 + 1) = v15 | (*(v13 + 4) << 24);
  *(v13 + 8) = 0;
  *(v13 + 16) = a3;
  v16 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(*(this + 1) + 184, 32, 3);
  *v16 = 0;
  *(v16 + 1) = (*(v16 + 4) << 24) | 0x12;
  *(v16 + 8) = 0;
  *(v16 + 16) = v10;
  *(v16 + 24) = v14;
  v17 = *(this + 1);
  if (*(*(v17 + 18) + 352))
  {
    v24 = "set";
    v25 = 259;
    TempSymbol = llvm::MCContext::createTempSymbol(v17, &v24, 1);
    (*(*this + 272))(this, TempSymbol, v16);
    v19 = *(this + 1);
    v20 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(v19 + 184, 24, 3);
    if (*(*(v19 + 144) + 18))
    {
      v21 = 0x10000;
    }

    else
    {
      v21 = 0;
    }

    *v20 = 2;
    *(v20 + 1) = v21 | (*(v20 + 4) << 24);
    *(v20 + 8) = 0;
    *(v20 + 16) = TempSymbol;
    return (*(*this + 504))(this, v20, a4, 0);
  }

  else
  {
    v23 = *(*this + 504);

    return v23(this, v16, a4, 0);
  }
}

uint64_t llvm::MCStreamer::emitAbsoluteSymbolDiffAsULEB128(llvm::MCStreamer *this, const llvm::MCSymbol *a2, const llvm::MCSymbol *a3)
{
  v6 = *(this + 1);
  v7 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(v6 + 184, 24, 3);
  v8 = v7;
  if (*(*(v6 + 144) + 18))
  {
    v9 = 0x10000;
  }

  else
  {
    v9 = 0;
  }

  *v7 = 2;
  *(v7 + 1) = v9 | (*(v7 + 4) << 24);
  *(v7 + 8) = 0;
  *(v7 + 16) = a2;
  v10 = *(this + 1);
  v11 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(v10 + 184, 24, 3);
  v12 = v11;
  if (*(*(v10 + 144) + 18))
  {
    v13 = 0x10000;
  }

  else
  {
    v13 = 0;
  }

  *v11 = 2;
  *(v11 + 1) = v13 | (*(v11 + 4) << 24);
  *(v11 + 8) = 0;
  *(v11 + 16) = a3;
  v14 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(*(this + 1) + 184, 32, 3);
  v15 = (*(v14 + 4) << 24) | 0x12;
  *v14 = 0;
  *(v14 + 1) = v15;
  *(v14 + 8) = 0;
  *(v14 + 16) = v8;
  *(v14 + 24) = v12;
  v16 = *(*this + 544);

  return v16(this, v14);
}

unint64_t llvm::MCStreamer::switchSection(unint64_t this, llvm::MCSection *a2, const llvm::MCExpr *a3)
{
  v3 = *(this + 144) + 32 * *(this + 152);
  v4 = *(v3 - 32);
  v5 = *(v3 - 24);
  *(v3 - 16) = v4;
  *(v3 - 8) = v5;
  if (v4 != a2 || v5 != a3)
  {
    v9 = this;
    this = (*(*this + 160))(this);
    v10 = *(v9 + 144) + 32 * *(v9 + 152);
    *(v10 - 32) = a2;
    *(v10 - 24) = a3;
    v11 = *(a2 + 1);
    if (v11)
    {
      this = llvm::MCSymbol::isInSection(v11);
      if ((this & 1) == 0)
      {
        v12 = *(*v9 + 192);

        return v12(v9, v11, 0);
      }
    }
  }

  return this;
}

void std::vector<std::unique_ptr<llvm::WinEH::FrameInfo>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::unique_ptr<llvm::WinEH::FrameInfo>::~unique_ptr[abi:nn200100](v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<llvm::WinEH::FrameInfo::Segment>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 10;
        std::allocator<llvm::WinEH::FrameInfo::Segment>::destroy[abi:nn200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<llvm::WinEH::FrameInfo::Segment>::destroy[abi:nn200100](uint64_t a1, void *a2)
{
  v3 = a2[7];
  if (v3)
  {
    a2[8] = v3;
    operator delete(v3);
  }

  v4 = a2[4];

  JUMPOUT(0x277C69E30);
}

void std::vector<std::pair<llvm::MCSymbol *,llvm::WinEH::FrameInfo::Epilog>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<llvm::MCSymbol *,llvm::WinEH::FrameInfo::Epilog>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::pair<llvm::MCSymbol *,llvm::WinEH::FrameInfo::Epilog>>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 48)
  {
    v4 = *(i - 40);
    if (v4)
    {
      *(i - 32) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

uint64_t std::__split_buffer<std::unique_ptr<llvm::WinEH::FrameInfo>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::unique_ptr<llvm::WinEH::FrameInfo>::~unique_ptr[abi:nn200100]((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

llvm::raw_ostream *llvm::MCSymbol::print(_BYTE *a1, llvm::raw_ostream *this, _BYTE *a3)
{
  if ((*a1 & 4) != 0)
  {
    v7 = *(a1 - 1);
    v8 = *v7;
    v5 = (v7 + 2);
    v6 = v8;
    if (!a3)
    {
LABEL_6:

      return llvm::raw_ostream::operator<<(this, v5, v6);
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
    if (!a3)
    {
      goto LABEL_6;
    }
  }

  result = (*(*a3 + 56))(a3, v5, v6);
  if (result)
  {
    goto LABEL_6;
  }

  if ((a3[185] & 1) == 0)
  {
    llvm::report_fatal_error("Symbol name with unsupported characters", 1);
  }

  v10 = *(this + 4);
  if (v10 < *(this + 3))
  {
    *(this + 4) = v10 + 1;
    *v10 = 34;
    if (v6)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

  for (result = llvm::raw_ostream::write(this, 34); v6; --v6)
  {
LABEL_14:
    v11 = *v5;
    if (v11 == 34)
    {
      v15 = *(this + 4);
      if (*(this + 3) - v15 > 1uLL)
      {
        *v15 = 8796;
        goto LABEL_25;
      }

      v13 = this;
      v14 = "\\"";
    }

    else
    {
      if (v11 != 10)
      {
        v16 = *(this + 4);
        if (v16 >= *(this + 3))
        {
          result = llvm::raw_ostream::write(this, v11);
        }

        else
        {
          *(this + 4) = v16 + 1;
          *v16 = v11;
        }

        goto LABEL_27;
      }

      v12 = *(this + 4);
      if (*(this + 3) - v12 > 1uLL)
      {
        *v12 = 28252;
LABEL_25:
        *(this + 4) += 2;
        goto LABEL_27;
      }

      v13 = this;
      v14 = "\\n";
    }

    result = llvm::raw_ostream::write(v13, v14, 2uLL);
LABEL_27:
    ++v5;
  }

LABEL_28:
  v17 = *(this + 4);
  if (v17 >= *(this + 3))
  {

    return llvm::raw_ostream::write(this, 34);
  }

  else
  {
    *(this + 4) = v17 + 1;
    *v17 = 34;
  }

  return result;
}

void llvm::SubtargetFeatures::Split(std::vector<std::string> *a1, uint64_t a2, uint64_t a3)
{
  v14[6] = *MEMORY[0x277D85DE8];
  v11[0] = a2;
  v11[1] = a3;
  v12 = v14;
  __n = 0x300000000;
  llvm::StringRef::split(v11, &v12, 44, -1, 0);
  std::vector<std::string>::reserve(a1, __n);
  v4 = v12;
  if (__n)
  {
    v5 = (v12 + 16 * __n);
    do
    {
      v6 = v4[1];
      if (v6 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
      }

      v7 = *v4;
      if (v6 >= 0x17)
      {
        operator new();
      }

      v10 = v4[1];
      if (v6)
      {
        memmove(&__dst, v7, v6);
      }

      *(&__dst + v6) = 0;
      std::vector<std::string>::push_back[abi:nn200100](a1, &__dst);
      if (v10 < 0)
      {
        operator delete(__dst);
      }

      v4 += 2;
    }

    while (v4 != v5);
    v4 = v12;
  }

  if (v4 != v14)
  {
    free(v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void llvm::SubtargetFeatures::AddFeature(uint64_t a1, unsigned __int8 *a2, uint64_t a3, int a4)
{
  v12[0] = a2;
  v12[1] = a3;
  if (a3)
  {
    v5 = *a2;
    if (v5 == 45 || v5 == 43)
    {
      llvm::StringRef::lower(v12, __p);
    }

    else
    {
      if (a4)
      {
        v6 = "+";
      }

      else
      {
        v6 = "-";
      }

      llvm::StringRef::lower(v12, &v9);
      v7 = std::string::insert(&v9, 0, v6);
      v8 = v7->__r_.__value_.__r.__words[2];
      *__p = *&v7->__r_.__value_.__l.__data_;
      v11 = v8;
      v7->__r_.__value_.__l.__size_ = 0;
      v7->__r_.__value_.__r.__words[2] = 0;
      v7->__r_.__value_.__r.__words[0] = 0;
    }

    std::vector<std::string>::push_back[abi:nn200100](a1, __p);
    if (SHIBYTE(v11) < 0)
    {
      operator delete(__p[0]);
    }

    if (v5 != 43 && v5 != 45 && SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }
  }
}

std::string *std::vector<std::string>::__insert_with_size[abi:nn200100]<std::string const*,std::string const*>(std::vector<std::string> *this, std::vector<std::string>::pointer __from_s, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v5 = __from_s;
  if (a5 >= 1)
  {
    v7 = a3;
    end = this->__end_;
    value = this->__end_cap_.__value_;
    if ((0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3)) >= a5)
    {
      v16 = end - __from_s;
      if ((0xAAAAAAAAAAAAAAABLL * ((end - __from_s) >> 3)) >= a5)
      {
        v24 = 24 * a5;
        std::vector<std::string>::__move_range(this, __from_s, this->__end_, &__from_s[a5]);
        v25 = v5;
        do
        {
          std::string::operator=(v25, v7);
          v7 = (v7 + 24);
          ++v25;
          v24 -= 24;
        }

        while (v24);
      }

      else
      {
        v18 = a3 + v16;
        if ((a3 + v16) == a4)
        {
          v23 = this->__end_;
        }

        else
        {
          v19 = 0;
          do
          {
            v20 = (v18 + v19 * 24);
            v21 = &end[v19];
            if (*(v18 + v19 * 24 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(v21, *v20, *(v20 + 1));
            }

            else
            {
              v22 = *v20;
              v21->__r_.__value_.__r.__words[2] = *(v20 + 2);
              *&v21->__r_.__value_.__l.__data_ = v22;
            }

            ++v19;
          }

          while ((v18 + v19 * 24) != a4);
          v23 = &end[v19];
        }

        this->__end_ = v23;
        if (v16 >= 1)
        {
          std::vector<std::string>::__move_range(this, v5, end, &v5[a5]);
          v37 = v5;
          do
          {
            std::string::operator=(v37, v7);
            v7 = (v7 + 24);
            ++v37;
            v16 -= 24;
          }

          while (v16);
        }
      }
    }

    else
    {
      begin = this->__begin_;
      v12 = a5 - 0x5555555555555555 * ((end - this->__begin_) >> 3);
      if (v12 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
      }

      v13 = __from_s - begin;
      v14 = 0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3);
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0x555555555555555)
      {
        v15 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v15 = v12;
      }

      v39.__end_cap_.__value_ = this;
      if (v15)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(this, v15);
      }

      v26 = 8 * (v13 >> 3);
      v27 = (v26 + 24 * a5);
      v28 = 24 * a5;
      v29 = v26;
      do
      {
        if (*(v7 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(v29, *v7, *(v7 + 1));
        }

        else
        {
          v30 = *v7;
          v29->__r_.__value_.__r.__words[2] = *(v7 + 2);
          *&v29->__r_.__value_.__l.__data_ = v30;
        }

        ++v29;
        v7 = (v7 + 24);
        v28 -= 24;
      }

      while (v28);
      memcpy(v27, v5, this->__end_ - v5);
      v31 = this->__begin_;
      v32 = &v27[(this->__end_ - v5)];
      this->__end_ = v5;
      v33 = v5 - v31;
      v34 = (v26 - (v5 - v31));
      memcpy(v34, v31, v33);
      v35 = this->__begin_;
      this->__begin_ = v34;
      this->__end_ = v32;
      v36 = this->__end_cap_.__value_;
      this->__end_cap_.__value_ = 0;
      v39.__end_ = v35;
      v39.__end_cap_.__value_ = v36;
      v39.__first_ = v35;
      v39.__begin_ = v35;
      std::__split_buffer<std::string>::~__split_buffer(&v39);
      return v26;
    }
  }

  return v5;
}

uint64_t llvm::MachO::getArchitectureFromCpuType(llvm::MachO *this, int a2)
{
  v2 = a2 & 0xFFFFFF;
  if (this == 7 && v2 == 3)
  {
    return 0;
  }

  else if (this == 16777223 && v2 == 3)
  {
    return 1;
  }

  else if (this == 16777223 && v2 == 8)
  {
    return 2;
  }

  else if (this == 12 && v2 == 5)
  {
    return 3;
  }

  else if (this == 12 && v2 == 6)
  {
    return 4;
  }

  else if (this == 12 && v2 == 7)
  {
    return 5;
  }

  else if (this == 12 && v2 == 9)
  {
    return 6;
  }

  else if (this == 12 && v2 == 11)
  {
    return 7;
  }

  else if (this == 12 && v2 == 12)
  {
    return 8;
  }

  else if (this == 12 && v2 == 14)
  {
    return 9;
  }

  else if (this == 12 && v2 == 15)
  {
    return 10;
  }

  else if (this == 12 && v2 == 16)
  {
    return 11;
  }

  else if (this != 16777228 || v2)
  {
    if (this == 16777228 && v2 == 2)
    {
      return 13;
    }

    else if (this == 33554444 && v2 == 1)
    {
      return 14;
    }

    else if (v2 == 1 && this == 16777228)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }

  else
  {
    return 12;
  }
}

uint64_t llvm::MachO::getArchitectureFromName(uint64_t a1, uint64_t a2)
{
  v2 = 16;
  if (a2 <= 5)
  {
    if (a2 == 4)
    {
      if (*a1 == 909652841)
      {
        return 0;
      }
    }

    else
    {
      if (a2 != 5)
      {
        return v2;
      }

      if (*a1 == 1986884193 && *(a1 + 4) == 54)
      {
        return 4;
      }

      if (*a1 == 1986884193 && *(a1 + 4) == 53)
      {
        return 5;
      }

      if (*a1 == 1986884193 && *(a1 + 4) == 55)
      {
        return 6;
      }

      if (*a1 == 913142369 && *(a1 + 4) == 52)
      {
        return 12;
      }
    }

    return 16;
  }

  switch(a2)
  {
    case 6:
      if (*a1 == 1597388920 && *(a1 + 4) == 13366)
      {
        return 1;
      }

      if (*a1 == 1986884193 && *(a1 + 4) == 29748)
      {
        return 3;
      }

      if (*a1 == 1986884193 && *(a1 + 4) == 29495)
      {
        return 7;
      }

      if (*a1 == 1986884193 && *(a1 + 4) == 27447)
      {
        return 8;
      }

      if (*a1 == 1986884193 && *(a1 + 4) == 27958)
      {
        return 9;
      }

      if (*a1 == 1986884193 && *(a1 + 4) == 27959)
      {
        return 10;
      }

      if (*a1 == 913142369 && *(a1 + 4) == 25908)
      {
        return 13;
      }

      return 16;
    case 7:
      if (*a1 == 1597388920 && *(a1 + 3) == 1748252255)
      {
        return 2;
      }

      if (*a1 == 1986884193 && *(a1 + 3) == 1835349878)
      {
        return 11;
      }

      if (*a1 == 913142369 && *(a1 + 3) == 947270710)
      {
        return 15;
      }

      return 16;
    case 8:
      if (*a1 == 0x32335F34366D7261)
      {
        return 14;
      }

      return 16;
  }

  return v2;
}

const char *llvm::MachO::getArchitectureName(unsigned int a1)
{
  if (a1 > 0x10)
  {
    return "unknown";
  }

  v1 = qword_2750C86E0[a1];
  return (&off_279EFFC78)[a1];
}

void llvm::MachO::ArchitectureSet::operator std::vector<llvm::MachO::Architecture>(unsigned int *a1@<X0>, void *a2@<X8>)
{
  LODWORD(v4) = 0;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v5 = *a1;
  if (v5)
  {
LABEL_7:
    v8 = 0;
    v9 = 0x1000C0077774924;
LABEL_8:
    if (v4 != 16)
    {
      v10 = a2[2];
      if (v8 >= v10)
      {
        v11 = v8;
        v12 = (v8 + 1);
        if ((v8 + 1) < 0)
        {
          *a2 = 0;
          std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
        }

        if (2 * v10 > v12)
        {
          v12 = 2 * v10;
        }

        if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v13 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v12;
        }

        if (v13)
        {
          operator new();
        }

        v14 = v9;
        *v8++ = v4;
        memcpy(0, 0, v11);
        a2[1] = v11 + 1;
        a2[2] = 0;
        v9 = v14;
      }

      else
      {
        *v8++ = v4;
      }

      a2[1] = v8;
    }

    v15 = v4;
    if ((v4 & 0xFFFFFFE0) != 0)
    {
      v16 = v4;
    }

    else
    {
      v16 = 31;
    }

    while (v16 != v15)
    {
      LODWORD(v4) = v15 + 1;
      v17 = *a1 >> v15++;
      if ((v17 & 2) != 0)
      {
        if (v4 != -1)
        {
          goto LABEL_8;
        }

        break;
      }
    }
  }

  else
  {
    v6 = 0;
    while (v6 != 31)
    {
      v4 = v6 + 1;
      v7 = v5 >> v6++;
      if ((v7 & 2) != 0)
      {
        if (v4 != 0xFFFFFFFFLL)
        {
          goto LABEL_7;
        }

        break;
      }
    }
  }

  *a2 = 0;
}

uint64_t llvm::MachO::addEntry<llvm::SmallVector<llvm::MachO::Target,5u>>(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *a1 + 24 * v4;
  if (v4)
  {
    v6 = *a2;
    do
    {
      v7 = v4 >> 1;
      v8 = &v3[24 * (v4 >> 1)];
      v9 = *v8;
      if (v9 < v6 || v6 >= v9 && *(v8 + 1) < *(a2 + 1))
      {
        v3 = v8 + 24;
        v7 = v4 + ~v7;
      }

      v4 = v7;
    }

    while (v7);
  }

  if (v3 == v5)
  {
    return llvm::SmallVectorImpl<llvm::MachO::Target>::insert_one_impl<llvm::MachO::Target const&>(a1, v3, a2);
  }

  v10 = *a2;
  v11 = *v3;
  if (v10 < v11 || v11 >= v10 && *(a2 + 1) < *(v3 + 1))
  {
    return llvm::SmallVectorImpl<llvm::MachO::Target>::insert_one_impl<llvm::MachO::Target const&>(a1, v3, a2);
  }

  else
  {
    return v3;
  }
}

uint64_t llvm::MachO::addEntry<std::vector<llvm::MachO::InterfaceFileRef>>(uint64_t **a1, const void *a2, size_t a3)
{
  v10[0] = a2;
  v10[1] = a3;
  v6 = std::partition_point[abi:nn200100]<std::__wrap_iter<llvm::MachO::InterfaceFileRef *>,std::vector<llvm::MachO::InterfaceFileRef>::iterator llvm::MachO::addEntry<std::vector<llvm::MachO::InterfaceFileRef>>(std::vector<llvm::MachO::InterfaceFileRef>::iterator&,llvm::StringRef)::{lambda(llvm::MachO::InterfaceFileRef const&)#1}>(*a1, a1[1], a2, a3);
  v7 = v6;
  if (a1[1] == v6)
  {
    return std::vector<llvm::MachO::InterfaceFileRef>::emplace<llvm::StringRef &>(a1, v7, v10);
  }

  v8 = *(v6 + 23);
  if (v8 < 0)
  {
    v6 = *v6;
  }

  if (v8 < 0)
  {
    v8 = *(v7 + 8);
  }

  if (v8 != a3 || a3 && memcmp(v6, a2, a3))
  {
    return std::vector<llvm::MachO::InterfaceFileRef>::emplace<llvm::StringRef &>(a1, v7, v10);
  }

  return v7;
}

double llvm::MachO::InterfaceFile::addParentUmbrella(uint64_t a1, unsigned __int8 *a2, void *__src, size_t __len)
{
  if (!__len)
  {
    return result;
  }

  v8 = *(a1 + 304);
  v7 = *(a1 + 312);
  if (v7 == v8)
  {
    v8 = *(a1 + 312);
  }

  else
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 4);
    v10 = *a2;
    do
    {
      v11 = v9 >> 1;
      v12 = &v8[6 * (v9 >> 1)];
      v13 = *v12;
      if (v13 < v10 || v10 >= v13 && *(v12 + 1) < *(a2 + 1))
      {
        v8 = (v12 + 48);
        v11 = v9 + ~v11;
      }

      v9 = v11;
    }

    while (v11);
  }

  if (v7 != v8)
  {
    v14 = *a2;
    v15 = *v8;
    if (v14 >= v15 && (v15 < v14 || *(a2 + 1) >= *(v8 + 1)))
    {
      if (__len <= 0x7FFFFFFFFFFFFFF7)
      {
        if (__len >= 0x17)
        {
          operator new();
        }

        HIBYTE(v18) = __len;
        memmove(&__dst, __src, __len);
        *(&__dst + __len) = 0;
        if (*(v8 + 47) < 0)
        {
          operator delete(v8[3]);
        }

        result = *&__dst;
        *(v8 + 3) = __dst;
        v8[5] = v18;
        return result;
      }

LABEL_29:
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }
  }

  if (__len > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_29;
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  HIBYTE(v18) = __len;
  memmove(&__dst, __src, __len);
  *(&__dst + __len) = 0;
  std::vector<std::pair<llvm::MachO::Target,std::string>>::emplace<llvm::MachO::Target const&,std::string>((a1 + 304), v8, a2, &__dst);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__dst);
  }

  return result;
}

void std::vector<std::pair<llvm::MachO::Target,std::string>>::emplace<llvm::MachO::Target const&,std::string>(void *a1, char *a2, __int128 *a3, __int128 *a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v20 = *a1;
    v21 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 4) + 1;
    if (v21 > 0x555555555555555)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v22 = a2 - v20;
    v23 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v20) >> 4);
    if (2 * v23 > v21)
    {
      v21 = 2 * v23;
    }

    if (v23 >= 0x2AAAAAAAAAAAAAALL)
    {
      v24 = 0x555555555555555;
    }

    else
    {
      v24 = v21;
    }

    v41 = a1;
    if (v24)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<llvm::MachO::Target,std::string>>>(a1, v24);
    }

    v27 = 16 * (v22 >> 4);
    *(&v40 + 1) = 0;
    if (!(0xAAAAAAAAAAAAAAABLL * (v22 >> 4)))
    {
      if (v22 < 1)
      {
        if (v20 == a2)
        {
          v28 = 1;
        }

        else
        {
          v28 = 0x5555555555555556 * (v22 >> 4);
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<llvm::MachO::Target,std::string>>>(a1, v28);
      }

      v27 -= 48 * ((1 - 0x5555555555555555 * (v22 >> 4)) >> 1);
    }

    v29 = *a3;
    *(v27 + 16) = *(a3 + 2);
    *v27 = v29;
    v30 = *a4;
    *(v27 + 40) = *(a4 + 2);
    *(v27 + 24) = v30;
    *(a4 + 1) = 0;
    *(a4 + 2) = 0;
    *a4 = 0;
    memcpy((v27 + 48), a2, a1[1] - a2);
    v31 = *a1;
    *&v40 = v27 + 48 + a1[1] - a2;
    a1[1] = a2;
    v32 = a2 - v31;
    v33 = (v27 - (a2 - v31));
    memcpy(v33, v31, v32);
    v34 = *a1;
    *a1 = v33;
    v35 = a1[2];
    *(a1 + 1) = v40;
    *&v40 = v34;
    *(&v40 + 1) = v35;
    *&v39 = v34;
    *(&v39 + 1) = v34;
    std::__split_buffer<std::pair<llvm::MachO::Target,std::string>>::~__split_buffer(&v39);
  }

  else if (a2 == v6)
  {
    v25 = *a3;
    *(v6 + 16) = *(a3 + 2);
    *v6 = v25;
    v26 = *a4;
    *(v6 + 40) = *(a4 + 2);
    *(v6 + 24) = v26;
    *(a4 + 1) = 0;
    *(a4 + 2) = 0;
    *a4 = 0;
    a1[1] = v6 + 48;
  }

  else
  {
    v37 = *a3;
    v38 = *(a3 + 2);
    v8 = *a4;
    *&v39 = *(a4 + 1);
    *(&v39 + 7) = *(a4 + 15);
    v9 = *(a4 + 23);
    *(a4 + 1) = 0;
    *(a4 + 2) = 0;
    *a4 = 0;
    v10 = a1[1];
    v11 = v10;
    if (v10 >= 0x30)
    {
      v11 = v10 + 48;
      v12 = *(v10 - 48);
      *(v10 + 16) = *(v10 - 32);
      *v10 = v12;
      v13 = *(v10 - 24);
      *(v10 + 40) = *(v10 - 8);
      *(v10 + 24) = v13;
      *(v10 - 16) = 0;
      *(v10 - 8) = 0;
      *(v10 - 24) = 0;
    }

    a1[1] = v11;
    if (v10 != a2 + 48)
    {
      v14 = 0;
      v15 = &a2[-v10 + 48];
      do
      {
        v16 = v10 + v14;
        v17 = *(v10 + v14 - 96);
        *(v16 - 32) = *(v10 + v14 - 80);
        *(v16 - 48) = v17;
        v18 = v10 + v14 - 24;
        if (*(v10 + v14 - 1) < 0)
        {
          operator delete(*v18);
        }

        v14 -= 48;
        v19 = *(v16 - 72);
        *(v18 + 16) = *(v16 - 56);
        *v18 = v19;
        *(v16 - 49) = 0;
        *(v16 - 72) = 0;
      }

      while (v15 != v14);
    }

    *a2 = v37;
    *(a2 + 2) = v38;
    if (a2[47] < 0)
    {
      operator delete(*(a2 + 3));
    }

    *(a2 + 3) = v8;
    *(a2 + 4) = v39;
    *(a2 + 39) = *(&v39 + 7);
    a2[47] = v9;
  }

  v36 = *MEMORY[0x277D85DE8];
}

void llvm::MachO::InterfaceFile::addRPath(uint64_t a1, unsigned __int8 *a2, void *__src, size_t __len)
{
  v9 = *(a1 + 400);
  v8 = *(a1 + 408);
  if (v8 == v9)
  {
    v9 = *(a1 + 408);
  }

  else
  {
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 4);
    v11 = *a2;
    do
    {
      v12 = v10 >> 1;
      v13 = &v9[48 * (v10 >> 1)];
      v14 = *v13;
      if (v14 < v11 || v11 >= v14 && *(v13 + 1) < *(a2 + 1))
      {
        v9 = v13 + 48;
        v12 = v10 + ~v12;
      }

      v10 = v12;
    }

    while (v12);
  }

  if (v8 == v9)
  {
    goto LABEL_24;
  }

  if (*a2 != *v9 || *(a2 + 1) != *(v9 + 1))
  {
    goto LABEL_24;
  }

  v16 = v9[47];
  if (v16 >= 0)
  {
    v17 = v9 + 24;
  }

  else
  {
    v17 = *(v9 + 3);
  }

  v18 = *(v9 + 4);
  if (v16 >= 0)
  {
    v18 = v9[47];
  }

  if (__len != v18 || __len && memcmp(__src, v17, __len))
  {
LABEL_24:
    if (__len >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    if (__len >= 0x17)
    {
      operator new();
    }

    v20 = __len;
    if (__len)
    {
      memmove(&__dst, __src, __len);
    }

    *(&__dst + __len) = 0;
    std::vector<std::pair<llvm::MachO::Target,std::string>>::emplace<llvm::MachO::Target const&,std::string>((a1 + 400), v9, a2, &__dst);
    if (v20 < 0)
    {
      operator delete(__dst);
    }
  }
}

uint64_t llvm::make_filter_range<llvm::SmallVector<llvm::MachO::Target,5u> const&,std::function<BOOL ()(llvm::MachO::Target const&)>>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v16[4] = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v7 = *a1 + 24 * *(a1 + 8);
  std::__function::__value_func<BOOL ()(llvm::MachO::Target const&)>::__value_func[abi:nn200100](v14, a2);
  llvm::filter_iterator_impl<llvm::MachO::Target const*,std::function<BOOL ()(llvm::MachO::Target const&)>,std::bidirectional_iterator_tag>::filter_iterator_impl(v15, v6, v7, v14);
  v8 = *a1 + 24 * *(a1 + 8);
  std::__function::__value_func<BOOL ()(llvm::MachO::Target const&)>::__value_func[abi:nn200100](v11, a2);
  llvm::filter_iterator_impl<llvm::MachO::Target const*,std::function<BOOL ()(llvm::MachO::Target const&)>,std::bidirectional_iterator_tag>::filter_iterator_impl(v12, v8, v8, v11);
  llvm::make_range<llvm::filter_iterator_impl<llvm::MachO::Target const*,std::function<BOOL ()(llvm::MachO::Target const&)>,std::bidirectional_iterator_tag>>(v15, v12, a3);
  std::__function::__value_func<BOOL ()(llvm::MachO::Target const&)>::~__value_func[abi:nn200100](&v13);
  std::__function::__value_func<BOOL ()(llvm::MachO::Target const&)>::~__value_func[abi:nn200100](v11);
  std::__function::__value_func<BOOL ()(llvm::MachO::Target const&)>::~__value_func[abi:nn200100](v16);
  result = std::__function::__value_func<BOOL ()(llvm::MachO::Target const&)>::~__value_func[abi:nn200100](v14);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::MachO::InterfaceFile::addDocument(uint64_t a1, char *a2)
{
  v5 = *(a1 + 376);
  v4 = *(a1 + 384);
  v6 = *a2;
  if (v4 != v5)
  {
    v24 = a2;
    v7 = (v4 - v5) >> 4;
    v8 = *(v6 + 287);
    if (v8 >= 0)
    {
      v9 = *(v6 + 287);
    }

    else
    {
      v9 = *(v6 + 272);
    }

    if (v8 >= 0)
    {
      v10 = (v6 + 264);
    }

    else
    {
      v10 = *(v6 + 264);
    }

    do
    {
      v11 = &v5[16 * (v7 >> 1)];
      v13 = *v11;
      v12 = v11 + 16;
      v14 = (v13 + 264);
      v15 = *(v13 + 287);
      v16 = *(v13 + 264);
      v17 = *(v13 + 272);
      if ((v15 & 0x80u) == 0)
      {
        v18 = v15;
      }

      else
      {
        v18 = v17;
      }

      if ((v15 & 0x80u) == 0)
      {
        v19 = v14;
      }

      else
      {
        v19 = v16;
      }

      if (v9 >= v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = v9;
      }

      v21 = memcmp(v19, v10, v20);
      v22 = v18 < v9;
      if (v21)
      {
        v22 = v21 < 0;
      }

      if (v22)
      {
        v7 += ~(v7 >> 1);
      }

      else
      {
        v7 >>= 1;
      }

      if (v22)
      {
        v5 = v12;
      }
    }

    while (v7);
    v4 = v5;
    a2 = v24;
  }

  *(v6 + 456) = a1;
  std::vector<std::shared_ptr<llvm::MachO::InterfaceFile>>::insert((a1 + 376), v4, a2);
  return *a2;
}

char *std::vector<std::shared_ptr<llvm::MachO::InterfaceFile>>::insert(void *a1, char *a2, char *a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 4) + 1;
    if (v11 >> 60)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v12 = a2 - v10;
    v13 = v7 - v10;
    if (v13 >> 3 > v11)
    {
      v11 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 4;
    v39 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::weak_ptr<llvm::orc::DefinitionGenerator>>>(v14);
    }

    v17 = (16 * v15);
    *(&v38 + 1) = 0;
    if (!v15)
    {
      if (v12 < 1)
      {
        if (v10 == a2)
        {
          v29 = 1;
        }

        else
        {
          v29 = v12 >> 3;
        }

        v40 = a1;
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::weak_ptr<llvm::orc::DefinitionGenerator>>>(v29);
      }

      v17 = (v17 - (((v12 >> 1) + 8) & 0xFFFFFFFFFFFFFFF0));
    }

    v30 = *(a3 + 1);
    *v17 = *a3;
    v17[1] = v30;
    if (v30)
    {
      atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
    }

    memcpy(v17 + 2, a2, a1[1] - a2);
    v31 = *a1;
    *&v38 = v17 + a1[1] - v4 + 16;
    a1[1] = v4;
    v32 = v4 - v31;
    v33 = v17 - (v4 - v31);
    memcpy(v33, v31, v32);
    v34 = *a1;
    *a1 = v33;
    v35 = a1[2];
    *(a1 + 1) = v38;
    *&v38 = v34;
    *(&v38 + 1) = v35;
    v37[0] = v34;
    v37[1] = v34;
    std::__split_buffer<std::shared_ptr<llvm::orc::AsynchronousSymbolQuery>>::~__split_buffer(v37);
    return v17;
  }

  else if (a2 == v6)
  {
    v16 = *(a3 + 1);
    *v6 = *a3;
    *(v6 + 1) = v16;
    if (v16)
    {
      atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
    }

    a1[1] = v6 + 16;
  }

  else
  {
    v8 = v6 - 16;
    if (v6 < 0x10)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *v8;
      v9 = v6 + 16;
      *v8 = 0;
      *(v6 - 1) = 0;
    }

    a1[1] = v9;
    if (v6 != a2 + 16)
    {
      v18 = (v6 - 8);
      v19 = v6 - 32;
      v20 = a2 - v6 + 16;
      do
      {
        v21 = *v19;
        *v19 = 0;
        *(v19 + 1) = 0;
        v22 = *v18;
        *(v18 - 1) = v21;
        if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v22);
        }

        v18 -= 2;
        v19 -= 16;
        v20 += 16;
      }

      while (v20);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 16;
    if (v23)
    {
      v24 = 0;
    }

    v25 = &a3[v24];
    v27 = *v25;
    v26 = *(v25 + 1);
    if (v26)
    {
      atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
    }

    v28 = *(v4 + 1);
    *v4 = v27;
    *(v4 + 1) = v26;
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v28);
    }
  }

  return v4;
}

double llvm::MachO::InterfaceFile::setPath(uint64_t a1, const void *a2, size_t a3)
{
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  if (a3 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v7) = a3;
  if (a3)
  {
    memmove(&__dst, a2, a3);
  }

  *(&__dst + a3) = 0;
  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  result = *&__dst;
  *(a1 + 232) = __dst;
  *(a1 + 248) = v7;
  return result;
}

double llvm::MachO::InterfaceFile::setInstallName(uint64_t a1, const void *a2, size_t a3)
{
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  if (a3 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v8) = a3;
  if (a3)
  {
    memmove(&__dst, a2, a3);
  }

  *(&__dst + a3) = 0;
  v5 = (a1 + 264);
  if (*(a1 + 287) < 0)
  {
    operator delete(*v5);
  }

  result = *&__dst;
  *v5 = __dst;
  *(a1 + 280) = v8;
  return result;
}

llvm::MachO::InterfaceFile **std::unique_ptr<llvm::MachO::InterfaceFile>::~unique_ptr[abi:nn200100](llvm::MachO::InterfaceFile **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    llvm::MachO::InterfaceFile::~InterfaceFile(v2);
    MEMORY[0x277C69E40]();
  }

  return a1;
}

void llvm::MachO::InterfaceFile::extract(uint64_t a1, char a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 96);
  v3 = *(a1 + 104);
  if (v3)
  {
    v4 = 0;
    v5 = 24 * v3;
    do
    {
      v6 = *v2;
      v2 += 24;
      v7 = 1 << v6;
      if (v6 == 16)
      {
        v8 = 0;
      }

      else
      {
        v8 = v7;
      }

      v4 |= v8;
      v5 -= 24;
    }

    while (v5);
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & (1 << a2)) != 0)
  {
    operator new();
  }

  v14 = 1283;
  v13[0] = "file doesn't have architecture '";
  v13[2] = llvm::MachO::getArchitectureName(a2);
  v13[3] = v9;
  v10 = v13;
  v11 = "'";
  v12 = 770;
  getErrorErrorCat();
  operator new();
}

void llvm::MachO::InterfaceFile::InterfaceFile(llvm::MachO::InterfaceFile *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = this + 32;
  *(this + 10) = 0;
  *(this + 3) = 0x400000000;
  *(this + 8) = this + 80;
  *(this + 9) = 0;
  *(this + 11) = 1;
  *(this + 12) = this + 112;
  *(this + 13) = 0x500000000;
  *(this + 30) = 0;
  *(this + 31) = 0;
  *(this + 29) = 0;
  *(this + 64) = 0;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 295) = 0;
  *(this + 111) = 0;
  *(this + 412) = 0u;
  *(this + 428) = 0u;
  *(this + 380) = 0u;
  *(this + 396) = 0u;
  *(this + 348) = 0u;
  *(this + 364) = 0u;
  *(this + 316) = 0u;
  *(this + 332) = 0u;
  *(this + 300) = 0u;
  operator new();
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::SymbolsMapKey,llvm::MachO::Symbol *,llvm::DenseMapInfo<llvm::SymbolsMapKey,void>,llvm::detail::DenseMapPair<llvm::SymbolsMapKey,llvm::MachO::Symbol *>>,llvm::SymbolsMapKey,llvm::MachO::Symbol *,llvm::DenseMapInfo<llvm::SymbolsMapKey,void>,llvm::detail::DenseMapPair<llvm::SymbolsMapKey,llvm::MachO::Symbol *>>::LookupBucketFor<llvm::SymbolsMapKey>(uint64_t *a1, llvm::hashing::detail::hash_state **a2, unsigned __int8 **a3, unint64_t *a4)
{
  v5 = *(a1 + 4);
  if (v5)
  {
    v7 = *a1;
    v18 = 0;
    v19[0] = 0;
    v19[1] = 0;
    v16 = 3;
    v17[0] = 0;
    v17[1] = 0;
    v8 = v5 - 1;
    v9 = llvm::DenseMapInfo<llvm::SymbolsMapKey,void>::getHashValue(a2, a2, a3, a4) & (v5 - 1);
    v10 = (v7 + 32 * v9);
    v22 = a2;
    v23 = a2 + 1;
    v11 = v10 + 8;
    v20 = v10;
    v21 = v10 + 8;
    if (std::__tuple_equal<2ul>::operator()[abi:nn200100]<std::tuple<llvm::MachO::SymbolKind const&,llvm::StringRef const&>,std::tuple<llvm::MachO::SymbolKind const&,llvm::StringRef const&>>(&v24, &v22, &v20))
    {
      result = 1;
    }

    else
    {
      v13 = 0;
      v15 = 1;
      while (1)
      {
        v22 = v10;
        v23 = v11;
        v20 = &v18;
        v21 = v19;
        if (std::__tuple_equal<2ul>::operator()[abi:nn200100]<std::tuple<llvm::MachO::SymbolKind const&,llvm::StringRef const&>,std::tuple<llvm::MachO::SymbolKind const&,llvm::StringRef const&>>(&v24, &v22, &v20))
        {
          break;
        }

        v22 = v10;
        v23 = v11;
        v20 = &v16;
        v21 = v17;
        if (std::__tuple_equal<2ul>::operator()[abi:nn200100]<std::tuple<llvm::MachO::SymbolKind const&,llvm::StringRef const&>,std::tuple<llvm::MachO::SymbolKind const&,llvm::StringRef const&>>(&v24, &v22, &v20) && v13 == 0)
        {
          v13 = v10;
        }

        v9 = (v9 + v15) & v8;
        v10 = (v7 + 32 * v9);
        v22 = a2;
        v23 = a2 + 1;
        v11 = v10 + 8;
        v20 = v10;
        v21 = v10 + 8;
        v14 = std::__tuple_equal<2ul>::operator()[abi:nn200100]<std::tuple<llvm::MachO::SymbolKind const&,llvm::StringRef const&>,std::tuple<llvm::MachO::SymbolKind const&,llvm::StringRef const&>>(&v24, &v22, &v20);
        result = 1;
        ++v15;
        if (v14)
        {
          goto LABEL_4;
        }
      }

      result = 0;
      if (v13)
      {
        v10 = v13;
      }
    }

LABEL_4:
    *a3 = v10;
  }

  else
  {
    result = 0;
    *a3 = 0;
  }

  return result;
}

unint64_t llvm::DenseMapInfo<llvm::SymbolsMapKey,void>::getHashValue(llvm::hashing::detail::hash_state **a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  {
    v11 = v4;
    v12 = a1;
    v4 = v11;
    a1 = v12;
    if (v8)
    {
      v9 = llvm::hashing::detail::fixed_seed_override;
      if (!llvm::hashing::detail::fixed_seed_override)
      {
        v9 = 0xFF51AFD7ED558CCDLL;
      }

      llvm::hashing::detail::get_execution_seed(void)::seed = v9;
      v4 = v11;
      a1 = v12;
    }
  }

  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (llvm::hashing::detail::get_execution_seed(void)::seed + 8 * v4)) ^ ((0x9DDFEA08EB382D69 * (llvm::hashing::detail::get_execution_seed(void)::seed + 8 * v4)) >> 47));
  v14 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  v13 = llvm::hashing::detail::hash_combine_range_impl<unsigned long long const>(a1[1], a1[2] + a1[1], a3, a4);
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  memset(v15, 0, sizeof(v15));
  {
    v10 = llvm::hashing::detail::fixed_seed_override;
    if (!llvm::hashing::detail::fixed_seed_override)
    {
      v10 = 0xFF51AFD7ED558CCDLL;
    }

    llvm::hashing::detail::get_execution_seed(void)::seed = v10;
  }

  v18 = llvm::hashing::detail::get_execution_seed(void)::seed;
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code>(v15, 0, v15, v16, &v14, &v13);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::SmallVectorImpl<llvm::MachO::Target>::insert_one_impl<llvm::MachO::Target const&>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*a1 + 24 * *(a1 + 8) == a2)
  {
    v17 = llvm::SmallVectorTemplateCommon<llvm::MachO::Target,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::MachO::Target,true>>(a1, a3, 1);
    v18 = *a1 + 24 * *(a1 + 8);
    v19 = *v17;
    *(v18 + 16) = *(v17 + 16);
    *v18 = v19;
    LODWORD(v18) = *(a1 + 8) + 1;
    *(a1 + 8) = v18;
    return *a1 + 24 * v18 - 24;
  }

  else
  {
    v4 = a2 - *a1;
    v5 = llvm::SmallVectorTemplateCommon<llvm::MachO::Target,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::MachO::Target,true>>(a1, a3, 1);
    v6 = (*a1 + v4);
    v7 = *a1 + 24 * *(a1 + 8);
    *(v7 + 16) = *(v7 - 8);
    *v7 = *(v7 - 24);
    v8 = *a1;
    v9 = *(a1 + 8);
    v10 = *a1 + 24 * v9 - 24;
    if (v10 != v6)
    {
      memmove(v6 + 3, v6, v10 - v6);
      v9 = *(a1 + 8);
      v8 = *a1;
    }

    v11 = v9 + 1;
    *(a1 + 8) = v11;
    if (v5 < v8 + 24 * v11 && v5 >= v6)
    {
      v13 = 24;
    }

    else
    {
      v13 = 0;
    }

    v14 = v5 + v13;
    v15 = *v14;
    v6[2] = *(v14 + 16);
    *v6 = v15;
    return v6;
  }
}

unint64_t llvm::SmallVectorTemplateCommon<llvm::MachO::Target,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::MachO::Target,true>>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = *(a1 + 8);
  v5 = v4 + a3;
  if (v5 > *(a1 + 12))
  {
    v7 = *a1 + 24 * v4;
    if (*a1 <= a2 && v7 > a2)
    {
      v9 = a2 - *a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v5, 24);
      return *a1 + v9;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v5, 24);
    }
  }

  return v3;
}

uint64_t std::vector<llvm::MachO::InterfaceFileRef>::emplace<llvm::StringRef &>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v41 = *MEMORY[0x277D85DE8];
  v6 = a1[1];
  v5 = a1[2];
  if (v6 >= v5)
  {
    v17 = *a1;
    v18 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - *a1) >> 5) + 1;
    if (v18 > 0x199999999999999)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v19 = a2 - v17;
    v20 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - v17) >> 5);
    if (2 * v20 > v18)
    {
      v18 = 2 * v20;
    }

    if (v20 >= 0xCCCCCCCCCCCCCCLL)
    {
      v21 = 0x199999999999999;
    }

    else
    {
      v21 = v18;
    }

    v36 = a1;
    if (v21)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::MachO::InterfaceFileRef>>(v21);
    }

    v22 = (32 * (v19 >> 5));
    v32 = 0;
    v33 = v22;
    v34 = v22;
    v35 = 0;
    if (!(0xCCCCCCCCCCCCCCCDLL * (v19 >> 5)))
    {
      if (v19 < 1)
      {
        if (v17 == a2)
        {
          v23 = 1;
        }

        else
        {
          v23 = 0x999999999999999ALL * (v19 >> 5);
        }

        v39[1] = a1;
        std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::MachO::InterfaceFileRef>>(v23);
      }

      v22 -= 160 * ((1 - 0x3333333333333333 * (v19 >> 5)) >> 1);
      v33 = v22;
      v34 = v22;
    }

    std::allocator_traits<std::allocator<llvm::MachO::InterfaceFileRef>>::construct[abi:nn200100]<llvm::MachO::InterfaceFileRef,llvm::StringRef &,0>(v22, *a3, *(a3 + 8));
    v24 = v33;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::MachO::InterfaceFileRef>,llvm::MachO::InterfaceFileRef*>(a1, v3, a1[1], (v34 + 160));
    v25 = *a1;
    v26 = &v34[a1[1] - v3 + 160];
    a1[1] = v3;
    v27 = v24 + v25 - v3;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::MachO::InterfaceFileRef>,llvm::MachO::InterfaceFileRef*>(a1, v25, v3, v27);
    v28 = *a1;
    *a1 = v27;
    a1[1] = v26;
    v29 = a1[2];
    a1[2] = v35;
    v34 = v28;
    v35 = v29;
    v32 = v28;
    v33 = v28;
    std::__split_buffer<llvm::MachO::InterfaceFileRef>::~__split_buffer(&v32);
    v3 = v24;
  }

  else if (a2 == v6)
  {
    std::allocator_traits<std::allocator<llvm::MachO::InterfaceFileRef>>::construct[abi:nn200100]<llvm::MachO::InterfaceFileRef,llvm::StringRef &,0>(a1[1], *a3, *(a3 + 8));
    a1[1] = v6 + 160;
  }

  else
  {
    v40 = a1;
    std::allocator_traits<std::allocator<llvm::MachO::InterfaceFileRef>>::construct[abi:nn200100]<llvm::MachO::InterfaceFileRef,llvm::StringRef &,0>(&__dst, *a3, *(a3 + 8));
    v7 = a1[1];
    v8 = v7;
    if (v7 >= 0xA0)
    {
      v9 = 0;
      do
      {
        v10 = v7 + v9;
        v11 = *(v7 + v9 - 160);
        *(v10 + 16) = *(v7 + v9 - 144);
        *v10 = v11;
        *(v10 - 152) = 0;
        *(v10 - 144) = 0;
        *(v10 - 160) = 0;
        *(v7 + v9 + 24) = v7 + v9 + 40;
        *(v7 + v9 + 32) = 0x500000000;
        if (*(v7 + v9 - 128))
        {
          llvm::SmallVectorImpl<llvm::MachO::Target>::operator=(v7 + v9 + 24, v10 - 136);
        }

        v9 += 160;
      }

      while (v10 < v7);
      v8 = v7 + v9;
    }

    a1[1] = v8;
    if (v7 != v3 + 160)
    {
      v12 = 0;
      do
      {
        v13 = v7 + v12;
        v14 = (v7 + v12 - 160);
        if (*(v7 + v12 - 137) < 0)
        {
          operator delete(*v14);
        }

        v15 = *(v13 - 320);
        *(v7 + v12 - 144) = *(v13 - 304);
        *v14 = v15;
        *(v13 - 297) = 0;
        *(v13 - 320) = 0;
        llvm::SmallVectorImpl<llvm::MachO::Target>::operator=(v13 - 136, v13 - 296);
        v12 -= 160;
      }

      while (v3 - v7 + 160 != v12);
    }

    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    v16 = __dst;
    *(v3 + 16) = v38;
    *v3 = v16;
    HIBYTE(v38) = 0;
    LOBYTE(__dst) = 0;
    llvm::SmallVectorImpl<llvm::MachO::Target>::operator=(v3 + 24, v39);
    std::allocator<llvm::MachO::InterfaceFileRef>::destroy[abi:nn200100](v40, &__dst);
  }

  v30 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t *std::partition_point[abi:nn200100]<std::__wrap_iter<llvm::MachO::InterfaceFileRef *>,std::vector<llvm::MachO::InterfaceFileRef>::iterator llvm::MachO::addEntry<std::vector<llvm::MachO::InterfaceFileRef>>(std::vector<llvm::MachO::InterfaceFileRef>::iterator&,llvm::StringRef)::{lambda(llvm::MachO::InterfaceFileRef const&)#1}>(uint64_t *a1, uint64_t *a2, const void *a3, size_t a4)
{
  if (a2 != a1)
  {
    v15[10] = v4;
    v15[11] = v5;
    v8 = a1;
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 5);
    do
    {
      v10 = &v8[20 * (v9 >> 1)];
      v11 = *(v10 + 23);
      v12 = *v10;
      if (v11 >= 0)
      {
        v12 = &v8[20 * (v9 >> 1)];
      }

      if (v11 < 0)
      {
        v11 = v10[1];
      }

      v15[0] = v12;
      v15[1] = v11;
      v13 = llvm::StringRef::compare(v15, a3, a4);
      if (v13 >= 0)
      {
        v9 >>= 1;
      }

      else
      {
        v9 += ~(v9 >> 1);
      }

      if (v13 < 0)
      {
        v8 = v10 + 20;
      }
    }

    while (v9);
    return v8;
  }

  return a2;
}

double std::allocator_traits<std::allocator<llvm::MachO::InterfaceFileRef>>::construct[abi:nn200100]<llvm::MachO::InterfaceFileRef,llvm::StringRef &,0>(_BYTE *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  __dst[__len] = 0;
  *(__dst + 3) = __dst + 40;
  *&result = 0x500000000;
  *(__dst + 4) = 0x500000000;
  return result;
}

uint64_t llvm::SmallVectorImpl<llvm::MachO::Target>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 != v5)
    {
      llvm::SmallVectorImpl<llvm::orc::JITDylib *>::assignRemote(a1, a2);
      return a1;
    }

    v6 = *(a2 + 8);
    v7 = *(a1 + 8);
    if (v7 >= v6)
    {
      if (v6)
      {
        memmove(*a1, v4, 24 * v6);
      }

      goto LABEL_14;
    }

    if (*(a1 + 12) >= v6)
    {
      if (v7)
      {
        memmove(*a1, v4, 24 * v7);
        goto LABEL_12;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6, 24);
    }

    v7 = 0;
LABEL_12:
    v8 = *(a2 + 8) - v7;
    if (v8)
    {
      memcpy((*a1 + 24 * v7), (*a2 + 24 * v7), 24 * v8);
    }

LABEL_14:
    *(a1 + 8) = v6;
    *(a2 + 8) = 0;
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    v5 = *(a1 + 8);
    if (v5 >= v4)
    {
      if (v4)
      {
        memmove(*a1, *a2, 24 * v4);
      }

      goto LABEL_12;
    }

    if (*(a1 + 12) >= v4)
    {
      if (v5)
      {
        memmove(*a1, *a2, 24 * v5);
        goto LABEL_10;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4, 24);
    }

    v5 = 0;
LABEL_10:
    v6 = *(a2 + 8) - v5;
    if (v6)
    {
      memcpy((*a1 + 24 * v5), (*a2 + 24 * v5), 24 * v6);
    }

LABEL_12:
    *(a1 + 8) = v4;
  }

  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::MachO::InterfaceFileRef>>(unint64_t a1)
{
  if (a1 < 0x19999999999999ALL)
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::MachO::InterfaceFileRef>,llvm::MachO::InterfaceFileRef*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v7 = a2 + 24;
    v8 = (a4 + 24);
    do
    {
      v9 = *(v7 - 24);
      *(v8 - 1) = *(v7 - 8);
      *(v8 - 3) = v9;
      *(v7 - 16) = 0;
      *(v7 - 8) = 0;
      *(v7 - 24) = 0;
      *v8 = v8 + 2;
      v8[1] = 0x500000000;
      if (*(v7 + 8))
      {
        llvm::SmallVectorImpl<llvm::MachO::Target>::operator=(v8, v7);
      }

      v10 = v7 - 24;
      v7 += 160;
      v8 += 20;
    }

    while (v10 + 160 != a3);
    do
    {
      std::allocator<llvm::MachO::InterfaceFileRef>::destroy[abi:nn200100](a1, v5);
      v5 += 160;
    }

    while (v5 != a3);
  }
}

uint64_t std::__split_buffer<llvm::MachO::InterfaceFileRef>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(a1 + 32);
    *(a1 + 16) = i - 160;
    std::allocator<llvm::MachO::InterfaceFileRef>::destroy[abi:nn200100](v4, i - 160);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<llvm::MachO::Target,std::string>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

uint64_t std::__split_buffer<std::pair<llvm::MachO::Target,std::string>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::pair<llvm::MachO::Target,std::string>>::__destruct_at_end[abi:nn200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::pair<llvm::MachO::Target,std::string>>::__destruct_at_end[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 48;
      *(a1 + 16) = v2 - 48;
      if (*(v2 - 1) < 0)
      {
        operator delete(*(v2 - 24));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t std::__function::__func<llvm::MachO::InterfaceFile::targets(llvm::MachO::ArchitectureSet)::$_0,std::allocator<llvm::MachO::InterfaceFile::targets(llvm::MachO::ArchitectureSet)::$_0>,BOOL ()(llvm::MachO::Target const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2883F0A30;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__value_func<BOOL ()(llvm::MachO::Target const&)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t llvm::make_range<llvm::filter_iterator_impl<llvm::MachO::Target const*,std::function<BOOL ()(llvm::MachO::Target const&)>,std::bidirectional_iterator_tag>>@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v12[4] = *MEMORY[0x277D85DE8];
  v5 = a1[1];
  v11[0] = *a1;
  v11[1] = v5;
  std::__function::__value_func<BOOL ()(llvm::MachO::Target const&)>::__value_func[abi:nn200100](v12, (a1 + 2));
  v6 = a2[1];
  v9[0] = *a2;
  v9[1] = v6;
  std::__function::__value_func<BOOL ()(llvm::MachO::Target const&)>::__value_func[abi:nn200100](v10, (a2 + 2));
  llvm::iterator_range<llvm::filter_iterator_impl<llvm::MachO::Target const*,std::function<BOOL ()(llvm::MachO::Target const&)>,std::bidirectional_iterator_tag>>::iterator_range(a3, v11, v9);
  std::__function::__value_func<BOOL ()(llvm::MachO::Target const&)>::~__value_func[abi:nn200100](v10);
  result = std::__function::__value_func<BOOL ()(llvm::MachO::Target const&)>::~__value_func[abi:nn200100](v12);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__value_func<BOOL ()(llvm::MachO::Target const&)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *llvm::iterator_range<llvm::filter_iterator_impl<llvm::MachO::Target const*,std::function<BOOL ()(llvm::MachO::Target const&)>,std::bidirectional_iterator_tag>>::iterator_range(void *a1, void *a2, void *a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  std::__function::__value_func<BOOL ()(llvm::MachO::Target const&)>::__value_func[abi:nn200100]((a1 + 2), (a2 + 2));
  a1[6] = *a3;
  a1[7] = a3[1];
  std::__function::__value_func<BOOL ()(llvm::MachO::Target const&)>::__value_func[abi:nn200100]((a1 + 8), (a3 + 2));
  return a1;
}

void *llvm::filter_iterator_impl<llvm::MachO::Target const*,std::function<BOOL ()(llvm::MachO::Target const&)>,std::bidirectional_iterator_tag>::filter_iterator_impl(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(llvm::MachO::Target const&)>::__value_func[abi:nn200100](v9, a4);
  *a1 = a2;
  a1[1] = a3;
  std::__function::__value_func<BOOL ()(llvm::MachO::Target const&)>::__value_func[abi:nn200100]((a1 + 2), v9);
  llvm::filter_iterator_base<llvm::MachO::Target const*,std::function<BOOL ()(llvm::MachO::Target const&)>,std::bidirectional_iterator_tag>::findNextValid(a1);
  std::__function::__value_func<BOOL ()(llvm::MachO::Target const&)>::~__value_func[abi:nn200100](v9);
  v7 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t llvm::filter_iterator_base<llvm::MachO::Target const*,std::function<BOOL ()(llvm::MachO::Target const&)>,std::bidirectional_iterator_tag>::findNextValid(uint64_t result)
{
  if (*result != *(result + 8))
  {
    v1 = result;
    while (1)
    {
      v2 = v1[5];
      if (!v2)
      {
        break;
      }

      result = (*(*v2 + 48))(v2);
      if ((result & 1) == 0)
      {
        v3 = v1[1];
        v4 = *v1 + 24;
        *v1 = v4;
        if (v4 != v3)
        {
          continue;
        }
      }

      return result;
    }

    v5 = std::__throw_bad_function_call[abi:nn200100]();
    return std::__function::__value_func<BOOL ()(llvm::MachO::Target const&)>::__value_func[abi:nn200100](v5, v6);
  }

  return result;
}

uint64_t llvm::MachO::SymbolSet::addGlobal<llvm::iterator_range<llvm::filter_iterator_impl<llvm::MachO::Target const*,std::function<BOOL ()(llvm::MachO::Target const&)>,std::bidirectional_iterator_tag>> &,llvm::MachO::Target const>(uint64_t a1, int a2, const void *a3, unint64_t *a4, uint64_t a5, void *a6)
{
  v24[4] = *MEMORY[0x277D85DE8];
  v12 = llvm::MachO::SymbolSet::addGlobalImpl(a1, a2, a3, a4, a5);
  v13 = a6[1];
  v23[0] = *a6;
  v23[1] = v13;
  std::__function::__value_func<BOOL ()(llvm::MachO::Target const&)>::__value_func[abi:nn200100](v24, (a6 + 2));
  v14 = a6[7];
  v20 = a6[6];
  v21 = v14;
  std::__function::__value_func<BOOL ()(llvm::MachO::Target const&)>::__value_func[abi:nn200100](v22, (a6 + 8));
  while (v23[0] != v20)
  {
    v15 = *v23[0];
    v19 = *(v23[0] + 16);
    v18 = v15;
    llvm::MachO::addEntry<llvm::SmallVector<llvm::MachO::Target,5u>>(v12 + 16, &v18);
    v23[0] += 24;
    llvm::filter_iterator_base<llvm::MachO::Target const*,std::function<BOOL ()(llvm::MachO::Target const&)>,std::bidirectional_iterator_tag>::findNextValid(v23);
  }

  std::__function::__value_func<BOOL ()(llvm::MachO::Target const&)>::~__value_func[abi:nn200100](v22);
  result = std::__function::__value_func<BOOL ()(llvm::MachO::Target const&)>::~__value_func[abi:nn200100](v24);
  if (a2 == 2)
  {
    result = llvm::MachO::SymbolSet::addGlobal<llvm::iterator_range<llvm::filter_iterator_impl<llvm::MachO::Target const*,std::function<BOOL ()(llvm::MachO::Target const&)>,std::bidirectional_iterator_tag>> &,llvm::MachO::Target const>(a1, 1, a3, a4, a5, a6);
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *std::shared_ptr<llvm::MachO::InterfaceFile>::shared_ptr[abi:nn200100]<llvm::MachO::InterfaceFile,std::default_delete<llvm::MachO::InterfaceFile>,0>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2)
  {
    operator new();
  }

  result[1] = 0;
  *a2 = 0;
  return result;
}

void std::__shared_ptr_pointer<llvm::MachO::InterfaceFile  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69E40);
}

llvm::MachO::InterfaceFile *std::__shared_ptr_pointer<llvm::MachO::InterfaceFile  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    llvm::MachO::InterfaceFile::~InterfaceFile(result);

    JUMPOUT(0x277C69E40);
  }

  return result;
}

BOOL llvm::SmallVectorImpl<llvm::MachO::Target>::operator==(unsigned __int8 **a1, unsigned __int8 **a2)
{
  v2 = *(a1 + 2);
  if (v2 != *(a2 + 2))
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = *a1;
  v4 = &(*a1)[24 * v2];
  v5 = *a2;
  do
  {
    result = *v3 == *v5 && *(v3 + 1) == *(v5 + 1);
    v3 += 24;
    v5 += 24;
  }

  while (result && v3 != v4);
  return result;
}

uint64_t collectFromArray(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = &Keys[a2];
  result = llvm::json::Object::getArray(a3, *v6, v6[1]);
  if (result)
  {
    v8 = *result;
    v9 = *(result + 8);
    while (v8 != v9)
    {
      v10 = *v8;
      if (v10 == 6)
      {
        v11 = *(v8 + 1);
        v12 = *(v8 + 31);
        if (v12 >= 0)
        {
          v11 = v8 + 4;
        }

        v13 = *(v8 + 2);
        if (v12 >= 0)
        {
          v13 = *(v8 + 31);
        }
      }

      else
      {
        if (v10 != 5)
        {
          v19[0] = "invalid ";
          v19[1] = 8;
          v20 = *v6;
          v21 = " section";
          v22 = 8;
          v16 = &v18;
          v17 = xmmword_2750C1290;
          llvm::SmallString<128u>::append(&v16, v19, 3);
          llvm::make_error<JSONStubError,llvm::SmallString<128u>>();
        }

        v11 = *(v8 + 1);
        v13 = *(v8 + 2);
      }

      v14 = *(a4 + 24);
      v16 = v11;
      *&v17 = v13;
      if (!v14)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      result = (*(*v14 + 48))(v14, &v16);
      v8 += 16;
    }
  }

  *a1 = 0;
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void StubParser::getTargets(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x277D85DE8];
  Array = llvm::json::Object::getArray(a2, "targets", 7);
  if (!Array)
  {
    v19 = "invalid ";
    v20 = 8;
    v21 = xmmword_279EFFD40;
    v22 = " section";
    v23 = 8;
    v24 = v26;
    v25 = xmmword_2750C1290;
    llvm::SmallString<128u>::append(&v24, &v19, 3);
    llvm::make_error<JSONStubError,llvm::SmallString<128u>>();
  }

  v19 = &v21;
  v20 = 0x500000000;
  v4 = *Array;
  v5 = *(Array + 8);
  if (*Array == v5)
  {
    *(a1 + 136) &= ~1u;
    *a1 = a1 + 16;
    *(a1 + 8) = 0x500000000;
  }

  else
  {
    while (1)
    {
      v6 = *v4;
      if (v6 == 6)
      {
        v7 = *(v4 + 31);
        v8 = v7 >= 0 ? (v4 + 4) : *(v4 + 1);
        v9 = v7 >= 0 ? *(v4 + 31) : *(v4 + 2);
      }

      else
      {
        if (v6 != 5)
        {
          v27 = "invalid ";
          v28 = 8;
          v29 = xmmword_279EFFD50;
          v30 = " section";
          v31 = 8;
          v24 = v26;
          v25 = xmmword_2750C1290;
          llvm::SmallString<128u>::append(&v24, &v27, 3);
          llvm::make_error<JSONStubError,llvm::SmallString<128u>>();
        }

        v8 = *(v4 + 1);
        v9 = *(v4 + 2);
      }

      llvm::MachO::Target::create(v8, v9, v17);
      v10 = v18;
      if (v18)
      {
        v27 = "invalid ";
        v28 = 8;
        v29 = xmmword_279EFFD50;
        v30 = " section";
        v31 = 8;
        v24 = v26;
        v25 = xmmword_2750C1290;
        llvm::SmallString<128u>::append(&v24, &v27, 3);
        llvm::make_error<JSONStubError,llvm::SmallString<128u>>();
      }

      v11 = llvm::SmallVectorTemplateCommon<llvm::MachO::Target,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::MachO::Target,true>>(&v19, v17, 1);
      v12 = v19 + 24 * v20;
      v13 = *v11;
      *(v12 + 2) = *(v11 + 16);
      *v12 = v13;
      LODWORD(v20) = v20 + 1;
      if (v18)
      {
        v14 = v17[0];
        v17[0] = 0;
        if (v14)
        {
          (*(*v14 + 8))(v14);
        }
      }

      if (v10)
      {
        break;
      }

      v4 += 16;
      if (v4 == v5)
      {
        v15 = v20;
        *(a1 + 136) &= ~1u;
        *a1 = a1 + 16;
        *(a1 + 8) = 0x500000000;
        if (v15)
        {
          llvm::SmallVectorImpl<llvm::MachO::Target>::operator=(a1, &v19);
        }

        break;
      }
    }
  }

  if (v19 != &v21)
  {
    free(v19);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void *getRequiredValue<llvm::StringRef,llvm::StringRef>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = &Keys[a2];
  std::function<std::optional<llvm::StringRef> ()(llvm::json::Object const*,llvm::StringRef)>::operator()(&v12, a4, a3, *v7, v7[1]);
  if ((v13 & 1) == 0)
  {
    v16 = "invalid ";
    v17 = 8;
    v18 = *v7;
    v19 = " section";
    v20 = 8;
    *v14 = v15;
    *&v14[8] = xmmword_2750C1290;
    llvm::SmallString<128u>::append(v14, &v16, 3);
    llvm::make_error<JSONStubError,llvm::SmallString<128u>>();
  }

  result = *(a5 + 24);
  if (result)
  {
    *v14 = v12;
    result = (*(*result + 48))(&v10);
    if ((v11 & 1) == 0)
    {
      v16 = "invalid ";
      v17 = 8;
      v18 = *v7;
      v19 = " section";
      v20 = 8;
      *v14 = v15;
      *&v14[8] = xmmword_2750C1290;
      llvm::SmallString<128u>::append(v14, &v16, 3);
      llvm::make_error<JSONStubError,llvm::SmallString<128u>>();
    }

    *(a1 + 16) &= ~1u;
    *a1 = v10;
  }

  else
  {
    *a1 = v12;
    *(a1 + 16) &= ~1u;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t StubParser::collectSymbolsFromSegment(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v21[4] = *MEMORY[0x277D85DE8];
  v13 = a4;
  v21[0] = &unk_2883F0C68;
  v21[1] = a3;
  v21[2] = &v13;
  v21[3] = v21;
  collectFromArray(&v12, 29, a2, v21);
  result = std::__function::__value_func<void ()(llvm::StringRef)>::~__value_func[abi:nn200100](v21);
  v8 = v12;
  if (!v12)
  {
    v20[0] = &unk_2883F0CB0;
    v20[1] = a3;
    v20[2] = &v13;
    v20[3] = v20;
    collectFromArray(&v11, 30, a2, v20);
    v8 = v11;
    result = std::__function::__value_func<void ()(llvm::StringRef)>::~__value_func[abi:nn200100](v20);
    if (!v8)
    {
      v19[0] = &unk_2883F0CF8;
      v19[1] = a3;
      v19[2] = &v13;
      v19[3] = v19;
      collectFromArray(&v11, 31, a2, v19);
      v8 = v11;
      result = std::__function::__value_func<void ()(llvm::StringRef)>::~__value_func[abi:nn200100](v19);
      if (!v8)
      {
        v18[0] = &unk_2883F0D40;
        v18[1] = a3;
        v18[2] = &v13;
        v18[3] = v18;
        collectFromArray(&v11, 32, a2, v18);
        v8 = v11;
        result = std::__function::__value_func<void ()(llvm::StringRef)>::~__value_func[abi:nn200100](v18);
        if (!v8)
        {
          v16[0] = &unk_2883F0D88;
          v16[1] = a3;
          if ((v13 & 8) != 0)
          {
            v9 = 4;
          }

          else
          {
            v9 = 2;
          }

          LOBYTE(v17[0]) = v9 | v13;
          v17[1] = v16;
          memset(v17 + 1, 0, 7);
          collectFromArray(&v11, 27, a2, v16);
          v8 = v11;
          result = std::__function::__value_func<void ()(llvm::StringRef)>::~__value_func[abi:nn200100](v16);
          if (!v8)
          {
            v14[0] = &unk_2883F0DD0;
            v14[1] = a3;
            LOBYTE(v15[0]) = v13;
            v15[1] = v14;
            memset(v15 + 1, 0, 7);
            collectFromArray(&v11, 28, a2, v14);
            v8 = v11;
            result = std::__function::__value_func<void ()(llvm::StringRef)>::~__value_func[abi:nn200100](v14);
          }
        }
      }
    }
  }

  *a1 = v8;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t StubParser::getSymbolSection(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = &Keys[a3];
  Array = llvm::json::Object::getArray(a2, *v6, v6[1]);
  if (Array)
  {
    v35 = v37;
    v36 = 0x100000000;
    v32 = v34;
    v33 = 0x500000000;
    v8 = *Array;
    v9 = *(Array + 8);
    if (*Array == v9)
    {
      *(a1 + 176) &= ~1u;
      *a1 = a1 + 16;
      *(a1 + 8) = 0x100000000;
    }

    else
    {
      if (a3 == 23)
      {
        v10 = 16;
      }

      else
      {
        v10 = 8 * (a3 == 24);
      }

      do
      {
        llvm::json::Value::copyFrom(&v30, v8);
        if (v30 == 7)
        {
          StubParser::getTargets(v28, v31);
          if (v29)
          {
            llvm::SmallVectorImpl<llvm::MachO::Target>::operator=(&v32, a4);
            if (v29)
            {
              v11 = v28[0];
              v28[0] = 0;
            }

            else
            {
              v11 = 0;
            }

            v23 = v11;
            llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v23);
            if (v23)
            {
              (*(*v23 + 8))(v23);
            }
          }

          else
          {
            llvm::SmallVectorImpl<llvm::MachO::Target>::operator=(&v32, v28);
          }

          *&v39 = 0;
          v12 = 0uLL;
          v38 = 0u;
          v23 = &v24 + 8;
          *&v24 = 0x500000000;
          if (v33)
          {
            llvm::SmallVectorImpl<llvm::MachO::Target>::operator=(&v23, &v32);
            v12 = v38;
            v13 = v39;
          }

          else
          {
            v13 = 0;
          }

          v26 = v12;
          v27 = v13;
          *&v39 = 0;
          v38 = 0uLL;
          if (v36 >= HIDWORD(v36))
          {
            llvm::SmallVectorTemplateBase<std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>>,false>::growAndEmplaceBack<std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>>>(&v35, &v23);
          }

          else
          {
            std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>>::pair[abi:nn200100](&v35[160 * v36], &v23);
            LODWORD(v36) = v36 + 1;
          }

          v22 = &v26;
          std::vector<JSONSymbol>::__destroy_vector::operator()[abi:nn200100](&v22);
          if (v23 != &v24 + 8)
          {
            free(v23);
          }

          v22 = &v38;
          std::vector<JSONSymbol>::__destroy_vector::operator()[abi:nn200100](&v22);
          Object = llvm::json::Object::getObject(v31, "data", 4);
          v15 = llvm::json::Object::getObject(v31, "text", 4);
          if (!(Object | v15))
          {
            *&v38 = "invalid ";
            *(&v38 + 1) = 8;
            v39 = *v6;
            v40 = " section";
            v41 = 8;
            v23 = &v25;
            v24 = xmmword_2750C1290;
            llvm::SmallString<128u>::append(&v23, &v38, 3);
            llvm::make_error<JSONStubError,llvm::SmallString<128u>>();
          }

          v16 = v15;
          if (Object && (StubParser::collectSymbolsFromSegment(&v23, Object, &v35, v10 | 0x20), (v17 = v23) != 0) || v16 && (StubParser::collectSymbolsFromSegment(&v23, v16, &v35, v10 | 0x40), (v17 = v23) != 0))
          {
            *(a1 + 176) |= 1u;
            *a1 = v17;
            llvm::Expected<llvm::SmallVector<llvm::MachO::Target,5u>>::~Expected(v28);
            llvm::json::Value::destroy(&v30);
            goto LABEL_37;
          }

          llvm::Expected<llvm::SmallVector<llvm::MachO::Target,5u>>::~Expected(v28);
          llvm::json::Value::destroy(&v30);
        }

        else
        {
          llvm::json::Value::destroy(&v30);
        }

        v8 = (v8 + 32);
      }

      while (v8 != v9);
      v18 = v36;
      *(a1 + 176) &= ~1u;
      *a1 = a1 + 16;
      *(a1 + 8) = 0x100000000;
      if (v18)
      {
        llvm::SmallVectorImpl<std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>>>::operator=(a1, &v35);
      }
    }

LABEL_37:
    if (v32 != v34)
    {
      free(v32);
    }
  }

  else
  {
    v35 = v37;
    v36 = 0x100000000;
    *(a1 + 176) &= ~1u;
    *a1 = a1 + 16;
    *(a1 + 8) = 0x100000000;
  }

  result = llvm::SmallVector<std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>>,1u>::~SmallVector(&v35);
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

void StubParser::getLibSection(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28[15] = *MEMORY[0x277D85DE8];
  Array = llvm::json::Object::getArray(a2, *&Keys[a3], *(&Keys[a3] + 1));
  if (Array)
  {
    v19 = 0;
    v20 = 0;
    v18 = &v19;
    v27[0] = v28;
    v27[1] = 0x500000000;
    v9 = *Array;
    v10 = *(Array + 8);
    if (*Array != v10)
    {
      while (1)
      {
        llvm::json::Value::copyFrom(&v25, v9);
        if (v25 == 7)
        {
          StubParser::getTargets(v23, v26);
          if (v24)
          {
            llvm::SmallVectorImpl<llvm::MachO::Target>::operator=(v27, a5);
            if (v24)
            {
              v11 = v23[0];
              v23[0] = 0;
            }

            else
            {
              v11 = 0;
            }

            v21 = v11;
            llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v21);
            if (v21)
            {
              (*(*v21 + 8))(v21);
            }
          }

          else
          {
            llvm::SmallVectorImpl<llvm::MachO::Target>::operator=(v27, v23);
          }

          v22[0] = &unk_2883F0E18;
          v22[1] = &v18;
          v22[2] = v27;
          v22[3] = v22;
          collectFromArray(&v21, a4, v26, v22);
          std::__function::__value_func<void ()(llvm::StringRef)>::~__value_func[abi:nn200100](v22);
          v12 = v21;
          if (v21)
          {
            *(a1 + 24) |= 1u;
            *a1 = v12;
            llvm::Expected<llvm::SmallVector<llvm::MachO::Target,5u>>::~Expected(v23);
            llvm::json::Value::destroy(&v25);
            goto LABEL_21;
          }

          llvm::Expected<llvm::SmallVector<llvm::MachO::Target,5u>>::~Expected(v23);
        }

        llvm::json::Value::destroy(&v25);
        v9 = (v9 + 32);
        if (v9 == v10)
        {
          v14 = v18;
          v13 = v19;
          v15 = v20;
          goto LABEL_17;
        }
      }
    }

    v15 = 0;
    v13 = 0;
    v14 = &v19;
LABEL_17:
    *(a1 + 24) &= ~1u;
    *a1 = v14;
    *(a1 + 8) = v13;
    v16 = a1 + 8;
    *(a1 + 16) = v15;
    if (v15)
    {
      v13[2] = v16;
      v18 = &v19;
      v19 = 0;
      v20 = 0;
    }

    else
    {
      *a1 = v16;
    }

LABEL_21:
    if (v27[0] != v28)
    {
      free(v27[0]);
    }

    std::__tree<std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>,std::__map_value_compare<std::string,std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>>>::destroy(&v18, v19);
  }

  else
  {
    *(a1 + 24) &= ~1u;
    *(a1 + 16) = 0;
    *(a1 + 8) = 0;
    *a1 = a1 + 8;
  }

  v17 = *MEMORY[0x277D85DE8];
}

void StubParser::getUmbrellaSection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = *MEMORY[0x277D85DE8];
  Array = llvm::json::Object::getArray(a2, "parent_umbrellas", 16);
  if (Array)
  {
    v21 = 0;
    v22 = 0;
    v20 = &v21;
    v33[0] = v34;
    v33[1] = 0x500000000;
    v6 = *Array;
    v7 = *(Array + 8);
    if (*Array == v7)
    {
      v15 = 0;
      v13 = 0;
      v14 = &v21;
LABEL_23:
      *(a1 + 24) &= ~1u;
      *a1 = v14;
      *(a1 + 8) = v13;
      v16 = a1 + 8;
      *(a1 + 16) = v15;
      if (v15)
      {
        v13[2] = v16;
        v20 = &v21;
        v21 = 0;
        v22 = 0;
      }

      else
      {
        *a1 = v16;
      }
    }

    else
    {
      while (1)
      {
        llvm::json::Value::copyFrom(&v31, v6);
        if (v31 != 7)
        {
          v35[0] = "invalid ";
          v35[1] = 8;
          v36 = xmmword_279EFFDF0;
          v37 = " section";
          v38 = 8;
          v27 = &v29;
          v28 = xmmword_2750C1290;
          llvm::SmallString<128u>::append(&v27, v35, 3);
          llvm::make_error<JSONStubError,llvm::SmallString<128u>>();
        }

        StubParser::getTargets(&v27, v32);
        if (v30)
        {
          llvm::SmallVectorImpl<llvm::MachO::Target>::operator=(v33, a3);
          if (v30)
          {
            v8 = v27;
            v27 = 0;
          }

          else
          {
            v8 = 0;
          }

          v35[0] = v8;
          llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(v35);
          if (v35[0])
          {
            (*(*v35[0] + 8))(v35[0]);
          }
        }

        else
        {
          llvm::SmallVectorImpl<llvm::MachO::Target>::operator=(v33, &v27);
        }

        v25 = 0;
        v26[0] = &unk_2883F0C20;
        v26[1] = llvm::json::Object::getString;
        v26[2] = 0;
        v26[3] = v26;
        getRequiredValue<llvm::StringRef,llvm::StringRef>(v35, 16, v32, v26, v24);
        std::__function::__value_func<std::optional<llvm::StringRef> ()(llvm::StringRef)>::~__value_func[abi:nn200100](v24);
        std::__function::__value_func<std::optional<llvm::StringRef> ()(llvm::json::Object const*,llvm::StringRef)>::~__value_func[abi:nn200100](v26);
        v9 = v36;
        if (v36)
        {
          v10 = v35[0];
          *(a1 + 24) |= 1u;
          *a1 = v10;
        }

        else
        {
          llvm::StringRef::str(v35, __p);
          v23 = __p;
          v11 = std::__tree<std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>,std::__map_value_compare<std::string,std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v20, __p);
          llvm::SmallVectorImpl<llvm::MachO::Target>::operator=(v11 + 56, a3);
          if (v19 < 0)
          {
            operator delete(__p[0]);
          }

          if (v36)
          {
            v12 = v35[0];
            v35[0] = 0;
            if (v12)
            {
              (*(*v12 + 8))(v12);
            }
          }
        }

        llvm::Expected<llvm::SmallVector<llvm::MachO::Target,5u>>::~Expected(&v27);
        llvm::json::Value::destroy(&v31);
        if (v9)
        {
          break;
        }

        v6 = (v6 + 32);
        if (v6 == v7)
        {
          v14 = v20;
          v13 = v21;
          v15 = v22;
          goto LABEL_23;
        }
      }
    }

    if (v33[0] != v34)
    {
      free(v33[0]);
    }

    std::__tree<std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>,std::__map_value_compare<std::string,std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>>>::destroy(&v20, v21);
  }

  else
  {
    *(a1 + 24) &= ~1u;
    *(a1 + 16) = 0;
    *(a1 + 8) = 0;
    *a1 = a1 + 8;
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t StubParser::getPackedVersion(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = &Keys[a3];
  result = llvm::json::Object::getArray(a2, *v4, v4[1]);
  if (!result || (v6 = *result, *result == *(result + 8)))
  {
    *(a1 + 8) &= ~1u;
    *a1 = 0x10000;
LABEL_17:
    v8 = *MEMORY[0x277D85DE8];
    return result;
  }

  if (*v6 != 7)
  {
    v17 = "invalid ";
    v18 = 8;
    v19 = *v4;
    v20 = " section";
    v21 = 8;
    *v15 = v16;
    *&v15[8] = xmmword_2750C1290;
    llvm::SmallString<128u>::append(v15, &v17, 3);
    llvm::make_error<JSONStubError,llvm::SmallString<128u>>();
  }

  v14[0] = &unk_2883F0C20;
  v14[1] = llvm::json::Object::getString;
  v14[2] = 0;
  v14[3] = v14;
  v12[0] = &unk_2883F0E60;
  v13 = v12;
  std::function<std::optional<llvm::StringRef> ()(llvm::json::Object const*,llvm::StringRef)>::operator()(&v10, v14, (v6 + 4), "version", 7);
  if ((v11 & 1) == 0)
  {
    *(a1 + 8) &= ~1u;
    *a1 = 0x10000;
LABEL_12:
    if (v13 == v12)
    {
      (*(*v13 + 32))(v13);
    }

    else if (v13)
    {
      (*(*v13 + 40))();
    }

    result = std::__function::__value_func<std::optional<llvm::StringRef> ()(llvm::json::Object const*,llvm::StringRef)>::~__value_func[abi:nn200100](v14);
    goto LABEL_17;
  }

  *v15 = v10;
  if (v13)
  {
    v7 = (*(*v13 + 48))(v13, v15);
    if ((v7 & 0x100000000) == 0)
    {
      v17 = "invalid ";
      v18 = 8;
      v19 = xmmword_279EFFDC0;
      v20 = " section";
      v21 = 8;
      *v15 = v16;
      *&v15[8] = xmmword_2750C1290;
      llvm::SmallString<128u>::append(v15, &v17, 3);
      llvm::make_error<JSONStubError,llvm::SmallString<128u>>();
    }

    *(a1 + 8) &= ~1u;
    *a1 = v7;
    goto LABEL_12;
  }

  v9 = std::__throw_bad_function_call[abi:nn200100]();
  return StubParser::parseToInterfaceFile(v9);
}

uint64_t StubParser::parseToInterfaceFile(uint64_t a1, uint64_t a2)
{
  v105 = *MEMORY[0x277D85DE8];
  Array = llvm::json::Object::getArray(a2, "target_info", 11);
  if (!Array)
  {
    v61 = "invalid ";
    v62 = 8;
    v63 = xmmword_279EFFD40;
    v64 = " section";
    v65 = 8;
    __p = v73;
    v72 = xmmword_2750C1290;
    llvm::SmallString<128u>::append(&__p, &v61, 3);
    llvm::make_error<JSONStubError,llvm::SmallString<128u>>();
  }

  v39 = a2;
  v61 = &v63;
  v62 = 0x500000000;
  v6 = *Array;
  v7 = *(Array + 8);
  if (*Array == v7)
  {
    v101 = 0;
    v98 = v100;
    v99 = 0x500000000;
  }

  else
  {
    while (1)
    {
      if (*v6 != 7)
      {
        v53 = "invalid ";
        v54 = 8;
        v55 = xmmword_279EFFD50;
        v56 = " section";
        v57 = 8;
        __p = v73;
        v72 = xmmword_2750C1290;
        llvm::SmallString<128u>::append(&__p, &v53, 3);
        llvm::make_error<JSONStubError,llvm::SmallString<128u>>();
      }

      v67 = &unk_2883F0C20;
      v68 = llvm::json::Object::getString;
      v69 = 0;
      v70 = &v67;
      v60[1] = 0;
      v8 = (v6 + 4);
      getRequiredValue<llvm::StringRef,llvm::StringRef>(&v86, 5, (v6 + 4), &v67, v59);
      std::__function::__value_func<std::optional<llvm::StringRef> ()(llvm::StringRef)>::~__value_func[abi:nn200100](v59);
      std::__function::__value_func<std::optional<llvm::StringRef> ()(llvm::json::Object const*,llvm::StringRef)>::~__value_func[abi:nn200100](&v67);
      if (v88)
      {
        v53 = "invalid ";
        v54 = 8;
        v55 = xmmword_279EFFD50;
        v56 = " section";
        v57 = 8;
        __p = v73;
        v72 = xmmword_2750C1290;
        llvm::SmallString<128u>::append(&__p, &v53, 3);
        llvm::make_error<JSONStubError,llvm::SmallString<128u>>();
      }

      v50 = &unk_2883F0C20;
      v51 = llvm::json::Object::getString;
      v52[0] = 0;
      v52[1] = &v50;
      v97[1] = 0;
      getRequiredValue<llvm::StringRef,llvm::StringRef>(&v82, 6, v8, &v50, v96);
      std::__function::__value_func<std::optional<llvm::StringRef> ()(llvm::StringRef)>::~__value_func[abi:nn200100](v96);
      std::__function::__value_func<std::optional<llvm::StringRef> ()(llvm::json::Object const*,llvm::StringRef)>::~__value_func[abi:nn200100](&v50);
      if (v84)
      {
        v53 = "invalid ";
        v54 = 8;
        v55 = xmmword_279EFFD60;
        v56 = " section";
        v57 = 8;
        __p = v73;
        v72 = xmmword_2750C1290;
        llvm::SmallString<128u>::append(&__p, &v53, 3);
        llvm::make_error<JSONStubError,llvm::SmallString<128u>>();
      }

      v94 = 0uLL;
      if (llvm::VersionTuple::tryParse(&v94, v82, v83))
      {
        v53 = "invalid ";
        v54 = 8;
        v55 = xmmword_279EFFD60;
        v56 = " section";
        v57 = 8;
        __p = v73;
        v72 = xmmword_2750C1290;
        llvm::SmallString<128u>::append(&__p, &v53, 3);
        llvm::make_error<JSONStubError,llvm::SmallString<128u>>();
      }

      v9 = v86;
      llvm::MachO::Target::create(v86, v87, &v102);
      v10 = v104;
      if (v104)
      {
        v53 = "invalid ";
        v54 = 8;
        v55 = xmmword_279EFFD50;
        v56 = " section";
        v57 = 8;
        __p = v73;
        v72 = xmmword_2750C1290;
        llvm::SmallString<128u>::append(&__p, &v53, 3);
        llvm::make_error<JSONStubError,llvm::SmallString<128u>>();
      }

      v103 = v94;
      llvm::MachO::getTargetTripleName(&v102, &v74);
      LOWORD(v56) = 260;
      v53 = &v74;
      llvm::Triple::Triple(&__p, &v53);
      ArchName = llvm::Triple::getArchName(&__p);
      LOBYTE(v78) = llvm::MachO::getArchitectureFromName(ArchName, v12);
      HIDWORD(v78) = llvm::MachO::mapToPlatformType(&__p);
      v79 = llvm::MachO::mapToSupportedOSVersion(&__p, v13);
      v80 = v14;
      v15 = llvm::SmallVectorTemplateCommon<llvm::MachO::Target,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::MachO::Target,true>>(&v61, &v78, 1);
      v16 = v61 + 24 * v62;
      v17 = *v15;
      *(v16 + 2) = *(v15 + 16);
      *v16 = v17;
      LODWORD(v62) = v62 + 1;
      if (SHIBYTE(v72) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v76) < 0)
      {
        operator delete(v74);
      }

      if (v104)
      {
        v18 = v102;
        v102 = 0;
        if (v18)
        {
          (*(*v18 + 8))(v18);
        }
      }

      if ((v88 & 1) != 0 && v9)
      {
        (*(*v9 + 8))(v9);
      }

      if (v10)
      {
        break;
      }

      v6 = (v8 + 24);
      if (v8 + 24 == v7)
      {
        v101 = v2 & 0xFE;
        v98 = v100;
        v99 = 0x500000000;
        if (v62)
        {
          llvm::SmallVectorImpl<llvm::MachO::Target>::operator=(&v98, &v61);
        }

        break;
      }
    }
  }

  if (v61 != &v63)
  {
    free(v61);
  }

  if (v101)
  {
    v19 = v98;
    v98 = 0;
    *(a1 + 8) |= 1u;
    *a1 = v19;
    goto LABEL_45;
  }

  v96[0] = v97;
  v96[1] = 0x500000000;
  if (v99)
  {
    llvm::SmallVectorImpl<llvm::MachO::Target>::operator=(v96, &v98);
  }

  v20 = llvm::json::Object::getArray(v39, "install_names", 13);
  if (!v20 || (v21 = *v20, **v20 != 7))
  {
    v61 = "invalid ";
    v62 = 8;
    v63 = xmmword_279EFFD90;
    v64 = " section";
    v65 = 8;
    __p = v73;
    v72 = xmmword_2750C1290;
    llvm::SmallString<128u>::append(&__p, &v61, 3);
    llvm::make_error<JSONStubError,llvm::SmallString<128u>>();
  }

  v53 = &unk_2883F0C20;
  v54 = llvm::json::Object::getString;
  *&v55 = 0;
  *(&v55 + 1) = &v53;
  v70 = 0;
  getRequiredValue<llvm::StringRef,llvm::StringRef>(&v94, 21, (v21 + 4), &v53, &v67);
  std::__function::__value_func<std::optional<llvm::StringRef> ()(llvm::StringRef)>::~__value_func[abi:nn200100](&v67);
  std::__function::__value_func<std::optional<llvm::StringRef> ()(llvm::json::Object const*,llvm::StringRef)>::~__value_func[abi:nn200100](&v53);
  if (v95)
  {
    v22 = v94;
  }

  else
  {
    StubParser::getPackedVersion(&v92, v39, 10);
    if (v93)
    {
      v22 = v92;
    }

    else
    {
      StubParser::getPackedVersion(&v90, v39, 11);
      if ((v91 & 1) == 0)
      {
        v25 = llvm::json::Object::getArray(v39, "swift_abi", 9);
        if (v25)
        {
          v26 = *v25;
          if (*v25 != *(v25 + 8))
          {
            if (*v26 != 7)
            {
              v61 = "invalid ";
              v62 = 8;
              v63 = xmmword_279EFFDD0;
              v64 = " section";
              v65 = 8;
              __p = v73;
              v72 = xmmword_2750C1290;
              llvm::SmallString<128u>::append(&__p, &v61, 3);
              llvm::make_error<JSONStubError,llvm::SmallString<128u>>();
            }

            v53 = &unk_2883F0B90;
            v54 = llvm::json::Object::getInteger;
            *&v55 = 0;
            *(&v55 + 1) = &v53;
            llvm::json::Object::getInteger((v26 + 4), "abi", 3);
            if ((v27 & 1) == 0)
            {
              v61 = "invalid ";
              v62 = 8;
              v63 = xmmword_279EFFDE0;
              v64 = " section";
              v65 = 8;
              __p = v73;
              v72 = xmmword_2750C1290;
              llvm::SmallString<128u>::append(&__p, &v61, 3);
              llvm::make_error<JSONStubError,llvm::SmallString<128u>>();
            }

            std::__function::__value_func<std::optional<long long> ()(llvm::json::Object const*,llvm::StringRef)>::~__value_func[abi:nn200100](&v53);
          }
        }

        LODWORD(v59[0]) = 0;
        v28 = llvm::json::Object::getArray(v39, "flags", 5);
        if (!v28)
        {
          goto LABEL_57;
        }

        v29 = *v28;
        if (*v28 == *(v28 + 8))
        {
          goto LABEL_57;
        }

        if (*v29 != 7)
        {
          v61 = "invalid ";
          v62 = 8;
          v63 = xmmword_279EFFD70;
          v64 = " section";
          v65 = 8;
          __p = v73;
          v72 = xmmword_2750C1290;
          llvm::SmallString<128u>::append(&__p, &v61, 3);
          llvm::make_error<JSONStubError,llvm::SmallString<128u>>();
        }

        v53 = &unk_2883F0EA8;
        v54 = v59;
        *(&v55 + 1) = &v53;
        collectFromArray(&__p, 8, (v29 + 4), &v53);
        std::__function::__value_func<void ()(llvm::StringRef)>::~__value_func[abi:nn200100](&v53);
        v30 = __p;
        if (__p)
        {
          *(a1 + 8) |= 1u;
          *a1 = v30;
        }

        else
        {
LABEL_57:
          StubParser::getUmbrellaSection(&v102, v39, v96);
          if (v104)
          {
            v31 = v102;
            v102 = 0;
            *(a1 + 8) |= 1u;
            *a1 = v31;
          }

          else
          {
            v49[0] = 0;
            v49[1] = 0;
            v48 = v49;
            std::map<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>::insert[abi:nn200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>,std::__tree_node<std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>,void *> *,long>>>(&v48, v102, &v103);
            StubParser::getLibSection(&v86, v39, 17, 18, v96);
            if (v89)
            {
              v32 = v86;
              v86 = 0;
              *(a1 + 8) |= 1u;
              *a1 = v32;
            }

            else
            {
              v47[0] = 0;
              v47[1] = 0;
              v46 = v47;
              std::map<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>::insert[abi:nn200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>,std::__tree_node<std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>,void *> *,long>>>(&v46, v86, &v87);
              StubParser::getLibSection(&v82, v39, 19, 20, v96);
              if (v85)
              {
                v33 = v82;
                v82 = 0;
                *(a1 + 8) |= 1u;
                *a1 = v33;
              }

              else
              {
                v44 = v82;
                v45[0] = v83;
                v45[1] = v84;
                if (v84)
                {
                  v83[2] = v45;
                  v82 = &v83;
                  v83 = 0;
                  v84 = 0;
                }

                else
                {
                  v44 = v45;
                }

                StubParser::getLibSection(&v78, v39, 33, 34, v96);
                if (v81)
                {
                  v34 = v78;
                  v78 = 0;
                  *(a1 + 8) |= 1u;
                  *a1 = v34;
                }

                else
                {
                  v42 = v78;
                  v43[0] = v79;
                  v43[1] = v80;
                  if (v80)
                  {
                    v79[2] = v43;
                    v78 = &v79;
                    v79 = 0;
                    v80 = 0;
                  }

                  else
                  {
                    v42 = v43;
                  }

                  StubParser::getLibSection(&v74, v39, 35, 20, v96);
                  if (v77)
                  {
                    v35 = v74;
                    v74 = 0;
                    *(a1 + 8) |= 1u;
                    *a1 = v35;
                  }

                  else
                  {
                    v40 = v74;
                    v41[0] = v75;
                    v41[1] = v76;
                    if (v76)
                    {
                      v75[2] = v41;
                      v74 = &v75;
                      v75 = 0;
                      v76 = 0;
                    }

                    else
                    {
                      v40 = v41;
                    }

                    StubParser::getSymbolSection(&__p, v39, 22, v96);
                    if (v73[152])
                    {
                      v36 = __p;
                      __p = 0;
                      *(a1 + 8) |= 1u;
                      *a1 = v36;
                    }

                    else
                    {
                      v67 = &v69;
                      v68 = 0x100000000;
                      if (v72)
                      {
                        llvm::SmallVectorImpl<std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>>>::operator=(&v67, &__p);
                      }

                      StubParser::getSymbolSection(&v61, v39, 23, v96);
                      if (v66)
                      {
                        v37 = v61;
                        v61 = 0;
                        *(a1 + 8) |= 1u;
                        *a1 = v37;
                      }

                      else
                      {
                        v59[0] = v60;
                        v59[1] = 0x100000000;
                        if (v62)
                        {
                          llvm::SmallVectorImpl<std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>>>::operator=(v59, &v61);
                        }

                        StubParser::getSymbolSection(&v53, v39, 24, v96);
                        if ((v58 & 1) == 0)
                        {
                          v50 = v52;
                          v51 = 0x100000000;
                          if (v54)
                          {
                            llvm::SmallVectorImpl<std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>>>::operator=(&v50, &v53);
                          }

                          operator new();
                        }

                        v38 = v53;
                        v53 = 0;
                        *(a1 + 8) |= 1u;
                        *a1 = v38;
                        llvm::Expected<llvm::SmallVector<std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>>,1u>>::~Expected(&v53);
                        llvm::SmallVector<std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>>,1u>::~SmallVector(v59);
                      }

                      llvm::Expected<llvm::SmallVector<std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>>,1u>>::~Expected(&v61);
                      llvm::SmallVector<std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>>,1u>::~SmallVector(&v67);
                    }

                    llvm::Expected<llvm::SmallVector<std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>>,1u>>::~Expected(&__p);
                    std::__tree<std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>,std::__map_value_compare<std::string,std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>>>::destroy(&v40, v41[0]);
                  }

                  llvm::Expected<std::map<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>>::~Expected(&v74);
                  std::__tree<std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>,std::__map_value_compare<std::string,std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>>>::destroy(&v42, v43[0]);
                }

                llvm::Expected<std::map<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>>::~Expected(&v78);
                std::__tree<std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>,std::__map_value_compare<std::string,std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>>>::destroy(&v44, v45[0]);
              }

              llvm::Expected<std::map<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>>::~Expected(&v82);
              std::__tree<std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>,std::__map_value_compare<std::string,std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>>>::destroy(&v46, v47[0]);
            }

            llvm::Expected<std::map<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>>::~Expected(&v86);
            std::__tree<std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>,std::__map_value_compare<std::string,std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>>>::destroy(&v48, v49[0]);
          }

          llvm::Expected<std::map<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>>::~Expected(&v102);
        }

        goto LABEL_43;
      }

      v22 = v90;
    }
  }

  *(a1 + 8) |= 1u;
  *a1 = v22;
LABEL_43:
  if (v96[0] != v97)
  {
    free(v96[0]);
  }

LABEL_45:
  result = llvm::Expected<llvm::SmallVector<llvm::MachO::Target,5u>>::~Expected(&v98);
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::MachO::TextAPIReader::getAsJSON(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = *MEMORY[0x277D85DE8];
  llvm::json::parse(*a1, *(a1 + 8), &v28);
  if (v30)
  {
    v4 = v28;
    v28 = 0;
    *(a2 + 8) |= 1u;
    *a2 = v4;
    goto LABEL_48;
  }

  if (v28 == 7)
  {
    v5 = &v29;
  }

  else
  {
    v5 = 0;
  }

  v34 = &unk_2883F0B90;
  v35 = llvm::json::Object::getInteger;
  v36 = 0;
  v37 = &v34;
  v31 = &unk_2883F0BD8;
  v33 = &v31;
  Integer = llvm::json::Object::getInteger(v5, "tapi_tbd_version", 16);
  if ((v7 & 1) == 0)
  {
    v41 = "invalid ";
    v42 = 8;
    v43 = Keys[0];
    v44 = " section";
    v45 = 8;
    v38 = v40;
    v39 = xmmword_2750C1290;
    llvm::SmallString<128u>::append(&v38, &v41, 3);
    llvm::make_error<JSONStubError,llvm::SmallString<128u>>();
  }

  if (v33)
  {
    v38 = Integer;
    v8 = (*(*v33 + 6))(v33, &v38);
    if ((v8 & 0x100000000) == 0)
    {
      v41 = "invalid ";
      v42 = 8;
      v43 = Keys[0];
      v44 = " section";
      v45 = 8;
      v38 = v40;
      v39 = xmmword_2750C1290;
      llvm::SmallString<128u>::append(&v38, &v41, 3);
      llvm::make_error<JSONStubError,llvm::SmallString<128u>>();
    }

    v9 = v8;
    if (v33 == &v31)
    {
      (*(*v33 + 4))(v33);
    }

    else if (v33)
    {
      (*(*v33 + 5))();
    }

    std::__function::__value_func<std::optional<long long> ()(llvm::json::Object const*,llvm::StringRef)>::~__value_func[abi:nn200100](&v34);
  }

  else
  {
    v9 = Integer;
    std::__function::__value_func<std::optional<long long> ()(llvm::json::Object const*,llvm::StringRef)>::~__value_func[abi:nn200100](&v34);
  }

  Object = llvm::json::Object::getObject(v5, "main_library", 12);
  StubParser::parseToInterfaceFile(&v31, Object);
  v11 = v31;
  if ((v32 & 1) == 0)
  {
    *(v31 + 64) = v9;
    v31 = 0;
    v27[0] = v11;
    v41 = 0;
    v42 = 0;
    *&v43 = 0;
    Array = llvm::json::Object::getArray(v5, "libraries", 9);
    if (Array)
    {
      v25 = a2;
      v13 = *Array;
      v14 = *(Array + 8);
      if (*Array != v14)
      {
        v24 = v11;
        v15 = 0;
        v26 = *(Array + 8);
        while (1)
        {
          llvm::json::Value::copyFrom(&v38, v13);
          if (v38 == 7)
          {
            v16 = &v39;
          }

          else
          {
            v16 = 0;
          }

          StubParser::parseToInterfaceFile(&v34, v16);
          v17 = v35;
          if ((v35 & 1) == 0)
          {
            v19 = v34;
            v34 = 0;
            v27[1] = v19;
            operator new();
          }

          v18 = v34;
          v34 = 0;
          v2 |= 1u;
          llvm::Expected<std::unique_ptr<llvm::MachO::InterfaceFile>>::~Expected(&v34);
          llvm::json::Value::destroy(&v38);
          if (v17)
          {
            break;
          }

          v13 = (v13 + 32);
          if (v13 == v14)
          {
            v20 = v2 & 0xFE;
            v11 = v24;
            goto LABEL_35;
          }
        }

        v40[0] = v2;
        v38 = v18;
        v34 = &v41;
        std::vector<std::unique_ptr<llvm::MachO::InterfaceFile>>::__destroy_vector::operator()[abi:nn200100](&v34);
        if (v2)
        {
          *(v25 + 8) |= 1u;
          *v25 = v18;
          goto LABEL_46;
        }

        v15 = v39;
        a2 = v25;
        v11 = v24;
LABEL_37:
        if (v18 == v15)
        {
          *(a2 + 8) &= ~1u;
          v27[0] = 0;
          *a2 = v11;
        }

        else
        {
          do
          {
            *(*v18 + 64) = v9;
            std::shared_ptr<llvm::MachO::InterfaceFile>::shared_ptr[abi:nn200100]<llvm::MachO::InterfaceFile,std::default_delete<llvm::MachO::InterfaceFile>,0>(&v41, v18);
            llvm::MachO::InterfaceFile::addDocument(v11, &v41);
            if (v42)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v42);
            }

            ++v18;
          }

          while (v18 != v15);
          v21 = v40[0];
          *(a2 + 8) &= ~1u;
          v27[0] = 0;
          *a2 = v11;
          if (v21)
          {
            if (v38)
            {
              (*(*v38 + 8))(v38);
            }

            goto LABEL_46;
          }
        }

        v41 = &v38;
        std::vector<std::unique_ptr<llvm::MachO::InterfaceFile>>::__destroy_vector::operator()[abi:nn200100](&v41);
LABEL_46:
        std::unique_ptr<llvm::MachO::InterfaceFile>::~unique_ptr[abi:nn200100](v27);
        goto LABEL_47;
      }

      v15 = 0;
      v20 = 0;
LABEL_35:
      v40[0] = v20;
      v38 = 0;
      v39 = 0uLL;
      a2 = v25;
    }

    else
    {
      v15 = 0;
      v38 = 0;
      v39 = 0uLL;
      v40[0] = 0;
    }

    v41 = 0;
    v42 = 0;
    *&v43 = 0;
    v34 = &v41;
    std::vector<std::unique_ptr<llvm::MachO::InterfaceFile>>::__destroy_vector::operator()[abi:nn200100](&v34);
    v18 = 0;
    goto LABEL_37;
  }

  v31 = 0;
  *(a2 + 8) |= 1u;
  *a2 = v11;
LABEL_47:
  llvm::Expected<std::unique_ptr<llvm::MachO::InterfaceFile>>::~Expected(&v31);
LABEL_48:
  if (v30)
  {
    v22 = v28;
    v28 = 0;
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }
  }

  else
  {
    llvm::json::Value::destroy(&v28);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void *llvm::SmallString<128u>::append(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[1];
  if (a3)
  {
    v6 = 16 * a3;
    v7 = (a2 + 8);
    v8 = 16 * a3;
    v9 = a1[1];
    do
    {
      v10 = *v7;
      v7 += 2;
      v9 += v10;
      v8 -= 16;
    }

    while (v8);
    result = llvm::SmallVectorImpl<char>::resizeImpl<true>(a1, v9);
    v12 = (a2 + 8);
    do
    {
      if (*v12)
      {
        result = memmove((*a1 + v4), *(v12 - 1), *v12);
        v13 = *v12;
      }

      else
      {
        v13 = 0;
      }

      v4 += v13;
      v12 += 2;
      v6 -= 16;
    }

    while (v6);
  }

  else
  {
    v14 = a1[1];

    return llvm::SmallVectorImpl<char>::resizeImpl<true>(a1, v14);
  }

  return result;
}

unsigned int *llvm::SmallVectorImpl<llvm::MachO::Target>::append<llvm::MachO::Target const*,void>(unsigned int *result, _BYTE *__src, _BYTE *a3)
{
  v5 = result;
  v6 = a3 - __src;
  v7 = 0xAAAAAAAAAAAAAAABLL * ((a3 - __src) >> 3);
  v8 = result[2];
  if (v7 + v8 > result[3])
  {
    result = llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 4, v7 + v8, 24);
    LODWORD(v8) = v5[2];
  }

  if (__src != a3)
  {
    result = memcpy((*v5 + 24 * v8), __src, v6);
    LODWORD(v8) = v5[2];
  }

  v5[2] = v8 + v7;
  return result;
}

BOOL std::less<std::string>::operator()[abi:nn200100](void *a1, void *a2)
{
  v2 = *(a2 + 23);
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  if (v3 < 0)
  {
    a1 = *a1;
  }

  if (v2 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v2 < 0)
  {
    a2 = *a2;
  }

  if (v5 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = memcmp(a1, a2, v6);
  if (v7)
  {
    return v7 < 0;
  }

  else
  {
    return v4 < v5;
  }
}

uint64_t llvm::MachO::SymbolSet::reexports@<X0>(llvm::MachO::SymbolSet *this@<X0>, uint64_t a2@<X8>)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v13[0] = &unk_2883F0AB0;
  v13[3] = v13;
  v3 = *(this + 12);
  v4 = *(this + 28);
  if (*(this + 26))
  {
    v9.i64[0] = *(this + 12);
    v9.i64[1] = v3 + 32 * v4;
    llvm::DenseMapIterator<llvm::SymbolsMapKey,llvm::MachO::Symbol *,llvm::DenseMapInfo<llvm::SymbolsMapKey,void>,llvm::detail::DenseMapPair<llvm::SymbolsMapKey,llvm::MachO::Symbol *>,true>::AdvancePastEmptyBuckets(&v9);
    v6 = v9;
    v3 = *(this + 12);
    v4 = *(this + 28);
  }

  else
  {
    v6 = vdupq_n_s64(v3 + 32 * v4);
  }

  v9 = v6;
  v10 = v3 + 32 * v4;
  v11 = v10;
  std::__function::__value_func<BOOL ()(llvm::MachO::Symbol const*)>::__value_func[abi:nn200100](v12, v13);
  llvm::make_filter_range<llvm::iterator_range<llvm::MachO::SymbolSet::const_symbol_iterator>,std::function<BOOL ()(llvm::MachO::Symbol const*)>>(v9.i64, v12, a2);
  std::__function::__value_func<BOOL ()(llvm::MachO::Symbol const*)>::~__value_func[abi:nn200100](v12);
  result = std::__function::__value_func<BOOL ()(llvm::MachO::Symbol const*)>::~__value_func[abi:nn200100](v13);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::MachO::SymbolSet::undefineds@<X0>(llvm::MachO::SymbolSet *this@<X0>, uint64_t a2@<X8>)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v13[0] = &unk_2883F0AF8;
  v13[3] = v13;
  v3 = *(this + 12);
  v4 = *(this + 28);
  if (*(this + 26))
  {
    v9.i64[0] = *(this + 12);
    v9.i64[1] = v3 + 32 * v4;
    llvm::DenseMapIterator<llvm::SymbolsMapKey,llvm::MachO::Symbol *,llvm::DenseMapInfo<llvm::SymbolsMapKey,void>,llvm::detail::DenseMapPair<llvm::SymbolsMapKey,llvm::MachO::Symbol *>,true>::AdvancePastEmptyBuckets(&v9);
    v6 = v9;
    v3 = *(this + 12);
    v4 = *(this + 28);
  }

  else
  {
    v6 = vdupq_n_s64(v3 + 32 * v4);
  }

  v9 = v6;
  v10 = v3 + 32 * v4;
  v11 = v10;
  std::__function::__value_func<BOOL ()(llvm::MachO::Symbol const*)>::__value_func[abi:nn200100](v12, v13);
  llvm::make_filter_range<llvm::iterator_range<llvm::MachO::SymbolSet::const_symbol_iterator>,std::function<BOOL ()(llvm::MachO::Symbol const*)>>(v9.i64, v12, a2);
  std::__function::__value_func<BOOL ()(llvm::MachO::Symbol const*)>::~__value_func[abi:nn200100](v12);
  result = std::__function::__value_func<BOOL ()(llvm::MachO::Symbol const*)>::~__value_func[abi:nn200100](v13);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void JSONStubError::~JSONStubError(void **this)
{
  *this = &unk_2883F0B40;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_2883F0B40;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x277C69E40);
}

llvm::raw_ostream *JSONStubError::log(JSONStubError *this, llvm::raw_ostream *a2)
{
  v5 = *(this + 1);
  v3 = this + 8;
  v4 = v5;
  v6 = v3[23];
  if (v6 >= 0)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  if (v6 >= 0)
  {
    v8 = v3[23];
  }

  else
  {
    v8 = *(v3 + 1);
  }

  result = llvm::raw_ostream::write(a2, v7, v8);
  v10 = *(a2 + 4);
  if (*(a2 + 3) == v10)
  {

    return llvm::raw_ostream::write(a2, "\n", 1uLL);
  }

  else
  {
    *v10 = 10;
    ++*(a2 + 4);
  }

  return result;
}

__n128 std::__function::__func<std::optional<long long> (llvm::json::Object::*)(llvm::StringRef)const,std::allocator<std::optional<long long> (llvm::json::Object::*)(llvm::StringRef)const>,std::optional<long long> ()(llvm::json::Object const*,llvm::StringRef)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2883F0B90;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::optional<long long> (llvm::json::Object::*)(llvm::StringRef)const,std::allocator<std::optional<long long> (llvm::json::Object::*)(llvm::StringRef)const>,std::optional<long long> ()(llvm::json::Object const*,llvm::StringRef)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *a3;
  v7 = a3[1];
  v8 = (v5 + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v8 + v3);
  }

  return v3(v8, v6, v7);
}

uint64_t std::__function::__value_func<std::optional<long long> ()(llvm::json::Object const*,llvm::StringRef)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<StubParser::getVersion(llvm::json::Object const*)::$_0,std::allocator<StubParser::getVersion(llvm::json::Object const*)::$_0>,std::optional<llvm::MachO::FileType> ()(long long)>::operator()(uint64_t a1, _DWORD *a2)
{
  if (*a2 == 5)
  {
    return 0x100000080;
  }

  else
  {
    return 0;
  }
}

uint64_t std::function<std::optional<llvm::StringRef> ()(llvm::json::Object const*,llvm::StringRef)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = a4;
  v7[1] = a5;
  v6 = a3;
  if (!a2)
  {
    std::__throw_bad_function_call[abi:nn200100]();
    JUMPOUT(0x275003C18);
  }

  return (*(*a2 + 48))(a2, &v6, v7);
}

__n128 std::__function::__func<std::optional<llvm::StringRef> (llvm::json::Object::*)(llvm::StringRef)const,std::allocator<std::optional<llvm::StringRef> (llvm::json::Object::*)(llvm::StringRef)const>,std::optional<llvm::StringRef> ()(llvm::json::Object const*,llvm::StringRef)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2883F0C20;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::optional<llvm::StringRef> (llvm::json::Object::*)(llvm::StringRef)const,std::allocator<std::optional<llvm::StringRef> (llvm::json::Object::*)(llvm::StringRef)const>,std::optional<llvm::StringRef> ()(llvm::json::Object const*,llvm::StringRef)>::operator()(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = (*a2 + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5, *a3, a3[1]);
}

uint64_t std::__function::__value_func<std::optional<llvm::StringRef> ()(llvm::json::Object const*,llvm::StringRef)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<std::optional<llvm::StringRef> ()(llvm::StringRef)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

__n128 std::__function::__func<StubParser::collectSymbolsFromSegment(llvm::json::Object const*,llvm::SmallVector<std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>>,1u> &,llvm::MachO::SymbolFlags)::$_0,std::allocator<StubParser::collectSymbolsFromSegment(llvm::json::Object const*,llvm::SmallVector<std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>>,1u> &,llvm::MachO::SymbolFlags)::$_0>,void ()(llvm::StringRef)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2883F0C68;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<StubParser::collectSymbolsFromSegment(llvm::json::Object const*,llvm::SmallVector<std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>>,1u> &,llvm::MachO::SymbolFlags)::$_0,std::allocator<StubParser::collectSymbolsFromSegment(llvm::json::Object const*,llvm::SmallVector<std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>>,1u> &,llvm::MachO::SymbolFlags)::$_0>,void ()(llvm::StringRef)>::operator()(uint64_t a1, __int128 *a2)
{
  v13 = *a2;
  v9[0] = 0;
  llvm::StringRef::str(&v13, &__p);
  v3 = *(a1 + 8);
  v12 = **(a1 + 16);
  v4 = *v3 + 160 * *(v3 + 8);
  v5 = *(v4 - 16);
  if (v5 >= *(v4 - 8))
  {
    v8 = std::vector<JSONSymbol>::__emplace_back_slow_path<JSONSymbol&>((v4 - 24), v9);
  }

  else
  {
    *v5 = v9[0];
    v6 = (v5 + 8);
    if (SHIBYTE(v11) < 0)
    {
      std::string::__init_copy_ctor_external(v6, __p, *(&__p + 1));
    }

    else
    {
      v7 = __p;
      *(v5 + 24) = v11;
      *&v6->__r_.__value_.__l.__data_ = v7;
    }

    *(v5 + 32) = v12;
    v8 = v5 + 40;
  }

  *(v4 - 16) = v8;
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p);
  }
}

uint64_t std::vector<JSONSymbol>::__emplace_back_slow_path<JSONSymbol&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3) + 1;
  if (v2 > 0x666666666666666)
  {
    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v5 = 0x666666666666666;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0x666666666666666)
    {
      operator new();
    }

    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  *v6 = *a2;
  v7 = (v6 + 8);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v7, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    *&v7->__r_.__value_.__l.__data_ = *(a2 + 8);
    *(v6 + 24) = *(a2 + 24);
  }

  *(v6 + 32) = *(a2 + 32);
  v8 = v6 + 40;
  v9 = *a1;
  v10 = a1[1];
  v11 = v6 + *a1 - v10;
  if (*a1 != v10)
  {
    v12 = *a1;
    v13 = v11;
    do
    {
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      *(v13 + 32) = *(v12 + 32);
      v12 += 40;
      v13 += 40;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
      }

      v9 += 40;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

uint64_t std::__function::__value_func<void ()(llvm::StringRef)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

__n128 std::__function::__func<StubParser::collectSymbolsFromSegment(llvm::json::Object const*,llvm::SmallVector<std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>>,1u> &,llvm::MachO::SymbolFlags)::$_1,std::allocator<StubParser::collectSymbolsFromSegment(llvm::json::Object const*,llvm::SmallVector<std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>>,1u> &,llvm::MachO::SymbolFlags)::$_1>,void ()(llvm::StringRef)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2883F0CB0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<StubParser::collectSymbolsFromSegment(llvm::json::Object const*,llvm::SmallVector<std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>>,1u> &,llvm::MachO::SymbolFlags)::$_1,std::allocator<StubParser::collectSymbolsFromSegment(llvm::json::Object const*,llvm::SmallVector<std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>>,1u> &,llvm::MachO::SymbolFlags)::$_1>,void ()(llvm::StringRef)>::operator()(uint64_t a1, __int128 *a2)
{
  v13 = *a2;
  v9[0] = 1;
  llvm::StringRef::str(&v13, &__p);
  v3 = *(a1 + 8);
  v12 = **(a1 + 16);
  v4 = *v3 + 160 * *(v3 + 8);
  v5 = *(v4 - 16);
  if (v5 >= *(v4 - 8))
  {
    v8 = std::vector<JSONSymbol>::__emplace_back_slow_path<JSONSymbol&>((v4 - 24), v9);
  }

  else
  {
    *v5 = v9[0];
    v6 = (v5 + 8);
    if (SHIBYTE(v11) < 0)
    {
      std::string::__init_copy_ctor_external(v6, __p, *(&__p + 1));
    }

    else
    {
      v7 = __p;
      *(v5 + 24) = v11;
      *&v6->__r_.__value_.__l.__data_ = v7;
    }

    *(v5 + 32) = v12;
    v8 = v5 + 40;
  }

  *(v4 - 16) = v8;
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p);
  }
}

__n128 std::__function::__func<StubParser::collectSymbolsFromSegment(llvm::json::Object const*,llvm::SmallVector<std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>>,1u> &,llvm::MachO::SymbolFlags)::$_2,std::allocator<StubParser::collectSymbolsFromSegment(llvm::json::Object const*,llvm::SmallVector<std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>>,1u> &,llvm::MachO::SymbolFlags)::$_2>,void ()(llvm::StringRef)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2883F0CF8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<StubParser::collectSymbolsFromSegment(llvm::json::Object const*,llvm::SmallVector<std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>>,1u> &,llvm::MachO::SymbolFlags)::$_2,std::allocator<StubParser::collectSymbolsFromSegment(llvm::json::Object const*,llvm::SmallVector<std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>>,1u> &,llvm::MachO::SymbolFlags)::$_2>,void ()(llvm::StringRef)>::operator()(uint64_t a1, __int128 *a2)
{
  v13 = *a2;
  v9[0] = 2;
  llvm::StringRef::str(&v13, &__p);
  v3 = *(a1 + 8);
  v12 = **(a1 + 16);
  v4 = *v3 + 160 * *(v3 + 8);
  v5 = *(v4 - 16);
  if (v5 >= *(v4 - 8))
  {
    v8 = std::vector<JSONSymbol>::__emplace_back_slow_path<JSONSymbol&>((v4 - 24), v9);
  }

  else
  {
    *v5 = v9[0];
    v6 = (v5 + 8);
    if (SHIBYTE(v11) < 0)
    {
      std::string::__init_copy_ctor_external(v6, __p, *(&__p + 1));
    }

    else
    {
      v7 = __p;
      *(v5 + 24) = v11;
      *&v6->__r_.__value_.__l.__data_ = v7;
    }

    *(v5 + 32) = v12;
    v8 = v5 + 40;
  }

  *(v4 - 16) = v8;
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p);
  }
}

__n128 std::__function::__func<StubParser::collectSymbolsFromSegment(llvm::json::Object const*,llvm::SmallVector<std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>>,1u> &,llvm::MachO::SymbolFlags)::$_3,std::allocator<StubParser::collectSymbolsFromSegment(llvm::json::Object const*,llvm::SmallVector<std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>>,1u> &,llvm::MachO::SymbolFlags)::$_3>,void ()(llvm::StringRef)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2883F0D40;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<StubParser::collectSymbolsFromSegment(llvm::json::Object const*,llvm::SmallVector<std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>>,1u> &,llvm::MachO::SymbolFlags)::$_3,std::allocator<StubParser::collectSymbolsFromSegment(llvm::json::Object const*,llvm::SmallVector<std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>>,1u> &,llvm::MachO::SymbolFlags)::$_3>,void ()(llvm::StringRef)>::operator()(uint64_t a1, __int128 *a2)
{
  v13 = *a2;
  v9[0] = 3;
  llvm::StringRef::str(&v13, &__p);
  v3 = *(a1 + 8);
  v12 = **(a1 + 16);
  v4 = *v3 + 160 * *(v3 + 8);
  v5 = *(v4 - 16);
  if (v5 >= *(v4 - 8))
  {
    v8 = std::vector<JSONSymbol>::__emplace_back_slow_path<JSONSymbol&>((v4 - 24), v9);
  }

  else
  {
    *v5 = v9[0];
    v6 = (v5 + 8);
    if (SHIBYTE(v11) < 0)
    {
      std::string::__init_copy_ctor_external(v6, __p, *(&__p + 1));
    }

    else
    {
      v7 = __p;
      *(v5 + 24) = v11;
      *&v6->__r_.__value_.__l.__data_ = v7;
    }

    *(v5 + 32) = v12;
    v8 = v5 + 40;
  }

  *(v4 - 16) = v8;
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p);
  }
}

__n128 std::__function::__func<StubParser::collectSymbolsFromSegment(llvm::json::Object const*,llvm::SmallVector<std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>>,1u> &,llvm::MachO::SymbolFlags)::$_4,std::allocator<StubParser::collectSymbolsFromSegment(llvm::json::Object const*,llvm::SmallVector<std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>>,1u> &,llvm::MachO::SymbolFlags)::$_4>,void ()(llvm::StringRef)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2883F0D88;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

void std::__function::__func<StubParser::collectSymbolsFromSegment(llvm::json::Object const*,llvm::SmallVector<std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>>,1u> &,llvm::MachO::SymbolFlags)::$_4,std::allocator<StubParser::collectSymbolsFromSegment(llvm::json::Object const*,llvm::SmallVector<std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>>,1u> &,llvm::MachO::SymbolFlags)::$_4>,void ()(llvm::StringRef)>::operator()(uint64_t a1, __int128 *a2)
{
  v12 = *a2;
  v8[0] = 0;
  llvm::StringRef::str(&v12, &__p);
  v11 = *(a1 + 16);
  v3 = **(a1 + 8) + 160 * *(*(a1 + 8) + 8);
  v4 = *(v3 - 16);
  if (v4 >= *(v3 - 8))
  {
    v7 = std::vector<JSONSymbol>::__emplace_back_slow_path<JSONSymbol&>((v3 - 24), v8);
  }

  else
  {
    *v4 = v8[0];
    v5 = (v4 + 8);
    if (SHIBYTE(v10) < 0)
    {
      std::string::__init_copy_ctor_external(v5, __p, *(&__p + 1));
    }

    else
    {
      v6 = __p;
      *(v4 + 24) = v10;
      *&v5->__r_.__value_.__l.__data_ = v6;
    }

    *(v4 + 32) = v11;
    v7 = v4 + 40;
  }

  *(v3 - 16) = v7;
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p);
  }
}

__n128 std::__function::__func<StubParser::collectSymbolsFromSegment(llvm::json::Object const*,llvm::SmallVector<std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>>,1u> &,llvm::MachO::SymbolFlags)::$_5,std::allocator<StubParser::collectSymbolsFromSegment(llvm::json::Object const*,llvm::SmallVector<std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>>,1u> &,llvm::MachO::SymbolFlags)::$_5>,void ()(llvm::StringRef)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2883F0DD0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

void std::__function::__func<StubParser::collectSymbolsFromSegment(llvm::json::Object const*,llvm::SmallVector<std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>>,1u> &,llvm::MachO::SymbolFlags)::$_5,std::allocator<StubParser::collectSymbolsFromSegment(llvm::json::Object const*,llvm::SmallVector<std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>>,1u> &,llvm::MachO::SymbolFlags)::$_5>,void ()(llvm::StringRef)>::operator()(uint64_t a1, __int128 *a2)
{
  v12 = *a2;
  v8[0] = 0;
  llvm::StringRef::str(&v12, &__p);
  v11 = *(a1 + 16) | 1;
  v3 = **(a1 + 8) + 160 * *(*(a1 + 8) + 8);
  v4 = *(v3 - 16);
  if (v4 >= *(v3 - 8))
  {
    v7 = std::vector<JSONSymbol>::__emplace_back_slow_path<JSONSymbol&>((v3 - 24), v8);
  }

  else
  {
    *v4 = v8[0];
    v5 = (v4 + 8);
    if (SHIBYTE(v10) < 0)
    {
      std::string::__init_copy_ctor_external(v5, __p, *(&__p + 1));
    }

    else
    {
      v6 = __p;
      *(v4 + 24) = v10;
      *&v5->__r_.__value_.__l.__data_ = v6;
    }

    *(v4 + 32) = v11;
    v7 = v4 + 40;
  }

  *(v3 - 16) = v7;
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p);
  }
}

uint64_t llvm::SmallVector<std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>>,1u>::~SmallVector(uint64_t a1)
{
  llvm::SmallVectorTemplateBase<std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>>,false>::destroy_range(*a1, *a1 + 160 * *(a1 + 8));
  if (*a1 != a1 + 16)
  {
    free(*a1);
  }

  return a1;
}

void llvm::SmallVectorTemplateBase<std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>>,false>::destroy_range(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    v8[3] = v2;
    v8[4] = v3;
    v4 = a2;
    do
    {
      v8[0] = (v4 - 24);
      std::vector<JSONSymbol>::__destroy_vector::operator()[abi:nn200100](v8);
      v7 = *(v4 - 160);
      v4 -= 160;
      v6 = v7;
      if ((v4 + 16) != v7)
      {
        free(v6);
      }
    }

    while (v4 != a1);
  }
}

uint64_t llvm::Expected<llvm::SmallVector<llvm::MachO::Target,5u>>::~Expected(uint64_t a1)
{
  v2 = *(a1 + 136);
  v3 = *a1;
  if (v2)
  {
    *a1 = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  else if (v3 != (a1 + 16))
  {
    free(v3);
  }

  return a1;
}

void std::vector<JSONSymbol>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<JSONSymbol>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<JSONSymbol>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 40)
  {
    if (*(i - 9) < 0)
    {
      operator delete(*(i - 32));
    }
  }

  a1[1] = v2;
}

void llvm::SmallVectorTemplateBase<std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>>,false>::growAndEmplaceBack<std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>>>(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v4 = a1 + 16;
  v5 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 160, &v7);
  std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>>::pair[abi:nn200100](&v5[20 * *(a1 + 8)], a2);
  llvm::SmallVectorTemplateBase<std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>>,false>::moveElementsForGrow(a1, v5);
  v6 = v7;
  if (*a1 != v4)
  {
    free(*a1);
  }

  *a1 = v5;
  ++*(a1 + 8);
  *(a1 + 12) = v6;
}

void llvm::SmallVectorTemplateBase<std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>>,false>::moveElementsForGrow(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v6 = 160 * v3;
    do
    {
      std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>>::pair[abi:nn200100](a2, v2);
      a2 += 20;
      v2 += 160;
      v6 -= 160;
    }

    while (v6);
    v2 = *a1;
    v7 = *(a1 + 8);
  }

  else
  {
    v7 = 0;
  }

  llvm::SmallVectorTemplateBase<std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>>,false>::destroy_range(v2, v2 + 160 * v7);
}

void *std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>>::pair[abi:nn200100](void *a1, uint64_t a2)
{
  *a1 = a1 + 2;
  a1[1] = 0x500000000;
  if (*(a2 + 8))
  {
    llvm::SmallVectorImpl<llvm::MachO::Target>::operator=(a1, a2);
  }

  a1[17] = 0;
  a1[18] = 0;
  a1[19] = 0;
  *(a1 + 17) = *(a2 + 136);
  a1[19] = *(a2 + 152);
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  return a1;
}

void std::__tree<std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>,std::__map_value_compare<std::string,std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>,std::__map_value_compare<std::string,std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>,std::__map_value_compare<std::string,std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:nn200100]<std::pair<std::string const,llvm::SmallVector<llvm::MachO::Target,5u>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:nn200100]<std::pair<std::string const,llvm::SmallVector<llvm::MachO::Target,5u>>,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != (a1 + 40))
  {
    free(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t std::__tree<std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>,std::__map_value_compare<std::string,std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, void *a2)
{
  v2 = *std::__tree<std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>,std::__map_value_compare<std::string,std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>,std::__map_value_compare<std::string,std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>>>::__find_equal<std::string>(uint64_t a1, void *a2, void *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!std::less<std::string>::operator()[abi:nn200100](a3, v4 + 4))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!std::less<std::string>::operator()[abi:nn200100](v7 + 4, a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<std::string const,llvm::SmallVector<llvm::MachO::Target,5u>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

__n128 std::__function::__func<StubParser::getLibSection(llvm::json::Object const*,TBDKey,TBDKey,llvm::SmallVector<llvm::MachO::Target,5u> const&)::$_0,std::allocator<StubParser::getLibSection(llvm::json::Object const*,TBDKey,TBDKey,llvm::SmallVector<llvm::MachO::Target,5u> const&)::$_0>,void ()(llvm::StringRef)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2883F0E18;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<StubParser::getLibSection(llvm::json::Object const*,TBDKey,TBDKey,llvm::SmallVector<llvm::MachO::Target,5u> const&)::$_0,std::allocator<StubParser::getLibSection(llvm::json::Object const*,TBDKey,TBDKey,llvm::SmallVector<llvm::MachO::Target,5u> const&)::$_0>,void ()(llvm::StringRef)>::operator()(uint64_t a1, __int128 *a2)
{
  v7 = *a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  llvm::StringRef::str(&v7, __p);
  v8 = __p;
  v4 = std::__tree<std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>,std::__map_value_compare<std::string,std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v3, __p);
  llvm::SmallVectorImpl<llvm::MachO::Target>::operator=(v4 + 56, v2);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t std::__function::__func<StubParser::getPackedVersion(llvm::json::Object const*,TBDKey)::$_0,std::allocator<StubParser::getPackedVersion(llvm::json::Object const*,TBDKey)::$_0>,std::optional<llvm::MachO::PackedVersion> ()(llvm::StringRef)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v6 = 0;
  v4 = llvm::MachO::PackedVersion::parse64(&v6, v3, v2);
  if ((((v4 & 0x100) == 0) & v4) != 0)
  {
    return v6 | 0x100000000;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<StubParser::getFlags(llvm::json::Object const*)::$_0,std::allocator<StubParser::getFlags(llvm::json::Object const*)::$_0>,void ()(llvm::StringRef)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2883F0EA8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<StubParser::getFlags(llvm::json::Object const*)::$_0,std::allocator<StubParser::getFlags(llvm::json::Object const*)::$_0>,void ()(llvm::StringRef)>::operator()(uint64_t result, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (v3 == 22)
  {
    v8 = *v2;
    v9 = v2[1];
    v10 = *(v2 + 14);
    if (v8 == 0x5F7070615F746F6ELL && v9 == 0x6F69736E65747865 && v10 == 0x656661735F6E6F69)
    {
      v7 = 2;
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v3 != 14 || ((v4 = *v2, v5 = *(v2 + 6), v4 == 0x6D616E5F74616C66) ? (v6 = v5 == 0x6563617073656D61) : (v6 = 0), !v6))
  {
LABEL_16:
    v7 = 0;
    goto LABEL_17;
  }

  v7 = 1;
LABEL_17:
  **(result + 8) |= v7;
  return result;
}

uint64_t llvm::Expected<std::map<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>>::~Expected(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  else
  {
    std::__tree<std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>,std::__map_value_compare<std::string,std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>>>::destroy(a1, *(a1 + 8));
  }

  return a1;
}

void *std::map<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>::insert[abi:nn200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>,std::__tree_node<std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>,void *> *,long>>>(void *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v19[1] = v6;
    v19[2] = v5;
    v19[11] = v3;
    v19[12] = v4;
    v8 = a2;
    v9 = result;
    v10 = result + 1;
    do
    {
      v11 = v9[1];
      v12 = v10;
      if (*v9 == v10)
      {
        goto LABEL_9;
      }

      v13 = v9[1];
      v14 = v10;
      if (v11)
      {
        do
        {
          v12 = v13;
          v13 = v13[1];
        }

        while (v13);
      }

      else
      {
        do
        {
          v12 = v14[2];
          v15 = *v12 == v14;
          v14 = v12;
        }

        while (v15);
      }

      result = std::less<std::string>::operator()[abi:nn200100](v12 + 4, v8 + 4);
      if (result)
      {
LABEL_9:
        if (v11)
        {
          v19[0] = v12;
          v16 = v12 + 1;
        }

        else
        {
          v19[0] = v10;
          v16 = v10;
        }
      }

      else
      {
        result = std::__tree<std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>,std::__map_value_compare<std::string,std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>>>::__find_equal<std::string>(v9, v19, v8 + 4);
        v16 = result;
      }

      if (!*v16)
      {
        operator new();
      }

      v17 = v8[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v8[2];
          v15 = *v18 == v8;
          v8 = v18;
        }

        while (!v15);
      }

      v8 = v18;
    }

    while (v18 != a3);
  }

  return result;
}

uint64_t llvm::Expected<llvm::SmallVector<std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>>,1u>>::~Expected(uint64_t a1)
{
  if (*(a1 + 176))
  {
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  else
  {
    llvm::SmallVector<std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>>,1u>::~SmallVector(a1);
  }

  return a1;
}

uint64_t llvm::SmallVectorImpl<std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>>>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = a2 + 16;
    v4 = *a2;
    if (*a2 == a2 + 16)
    {
      v6 = (a2 + 8);
      v7 = *(a2 + 8);
      v8 = *(a1 + 8);
      if (v8 >= v7)
      {
        v11 = *a1;
        if (v7)
        {
          v12 = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>> *,std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>> *,std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>> *>(v4, v4 + 160 * v7, v11);
          v11 = *a1;
          LODWORD(v8) = *(a1 + 8);
        }

        else
        {
          v12 = *a1;
        }

        llvm::SmallVectorTemplateBase<std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>>,false>::destroy_range(v12, v11 + 160 * v8);
        *(a1 + 8) = v7;
        v13 = *a2;
        v14 = *a2 + 160 * *(a2 + 8);
      }

      else
      {
        if (*(a1 + 12) >= v7)
        {
          if (v8)
          {
            std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>> *,std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>> *,std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>> *>(v4, v4 + 160 * v8, *a1);
          }

          else
          {
            v8 = 0;
          }
        }

        else
        {
          llvm::SmallVectorTemplateBase<std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>>,false>::destroy_range(*a1, *a1 + 160 * v8);
          *(a1 + 8) = 0;
          v21 = 0;
          v9 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), v7, 160, &v21);
          llvm::SmallVectorTemplateBase<std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>>,false>::moveElementsForGrow(a1, v9);
          v10 = v21;
          if (*a1 != a1 + 16)
          {
            free(*a1);
          }

          v8 = 0;
          *a1 = v9;
          *(a1 + 12) = v10;
        }

        v15 = *a2;
        v16 = *(a2 + 8);
        if (v8 != v16)
        {
          v17 = (*a1 + 160 * v8);
          v18 = v15 + 160 * v8;
          v19 = 160 * v16 - 160 * v8;
          do
          {
            v17 = std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>>::pair[abi:nn200100](v17, v18) + 20;
            v18 += 160;
            v19 -= 160;
          }

          while (v19);
          v15 = *a2;
        }

        *(a1 + 8) = v7;
        v14 = v15 + 160 * *v6;
        v13 = v15;
      }

      llvm::SmallVectorTemplateBase<std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>>,false>::destroy_range(v13, v14);
    }

    else
    {
      llvm::SmallVectorTemplateBase<std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>>,false>::destroy_range(*a1, *a1 + 160 * *(a1 + 8));
      if (*a1 != a1 + 16)
      {
        free(*a1);
      }

      *a1 = *a2;
      v6 = (a2 + 8);
      *(a1 + 8) = *(a2 + 8);
      *a2 = v5;
      *(a2 + 12) = 0;
    }

    *v6 = 0;
  }

  return a1;
}

uint64_t *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>> *,std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>> *,std::pair<llvm::SmallVector<llvm::MachO::Target,5u>,std::vector<JSONSymbol>> *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = (a3 + 136);
    do
    {
      llvm::SmallVectorImpl<llvm::MachO::Target>::operator=((v5 - 17), v4);
      if (*v5)
      {
        std::vector<JSONSymbol>::clear[abi:nn200100](v5);
        operator delete(*v5);
        *v5 = 0;
        v5[1] = 0;
        v5[2] = 0;
      }

      *v5 = *(v4 + 136);
      v5[2] = *(v4 + 152);
      *(v4 + 136) = 0;
      *(v4 + 144) = 0;
      *(v4 + 152) = 0;
      v4 += 160;
      v5 += 20;
    }

    while (v4 != a2);
    return v5 - 17;
  }

  return a3;
}

uint64_t llvm::MachO::SymbolSet::addGlobal<llvm::SmallVector<llvm::MachO::Target,5u> &,llvm::MachO::Target>(uint64_t a1, int a2, const void *a3, unint64_t *a4, uint64_t a5, uint64_t *a6)
{
  result = llvm::MachO::SymbolSet::addGlobalImpl(a1, a2, a3, a4, a5);
  v13 = *(a6 + 2);
  if (v13)
  {
    v14 = result;
    v15 = *a6;
    v16 = 24 * v13;
    do
    {
      v17 = *v15;
      v19 = *(v15 + 2);
      v18 = v17;
      result = llvm::MachO::addEntry<llvm::SmallVector<llvm::MachO::Target,5u>>(v14 + 16, &v18);
      v15 = (v15 + 24);
      v16 -= 24;
    }

    while (v16);
  }

  if (a2 == 2)
  {
    return llvm::MachO::SymbolSet::addGlobal<llvm::SmallVector<llvm::MachO::Target,5u> &,llvm::MachO::Target>(a1, 1, a3, a4, a5, a6);
  }

  return result;
}

void std::vector<std::unique_ptr<llvm::MachO::InterfaceFile>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::unique_ptr<llvm::MachO::InterfaceFile>::~unique_ptr[abi:nn200100](v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t llvm::MachO::PackedVersion::parse32(_DWORD *a1, uint64_t a2, unint64_t a3)
{
  v19[6] = *MEMORY[0x277D85DE8];
  *a1 = 0;
  if (!a3)
  {
    v7 = 0;
    goto LABEL_7;
  }

  v17 = v19;
  v18 = 0x300000000;
  llvm::SplitString(a2, a3, &v17, ".", 1);
  v5 = v18;
  v6 = v17;
  if ((v18 - 4) < 0xFFFFFFFD)
  {
LABEL_3:
    v7 = 0;
    goto LABEL_4;
  }

  v15 = 0;
  v16 = *v17;
  v7 = 0;
  if ((llvm::consumeUnsignedInteger(&v16, 0xA, &v15, v4) & 1) == 0 && !*(&v16 + 1))
  {
    if (!(v15 >> 16))
    {
      v11 = v15 << 16;
      *a1 = v15 << 16;
      if (v5 < 2)
      {
LABEL_17:
        v7 = 1;
      }

      else
      {
        v12 = v6 + 1;
        v13 = v5 - 1;
        v14 = 8;
        while (1)
        {
          v16 = *v12;
          v7 = 0;
          if ((llvm::consumeUnsignedInteger(&v16, 0xA, &v15, v10) & 1) != 0 || *(&v16 + 1))
          {
            break;
          }

          if (v15 > 0xFF)
          {
            goto LABEL_3;
          }

          v11 |= v15 << v14;
          *a1 = v11;
          ++v12;
          v14 -= 8;
          if (!--v13)
          {
            goto LABEL_17;
          }
        }
      }

      goto LABEL_4;
    }

    goto LABEL_3;
  }

LABEL_4:
  if (v6 != v19)
  {
    free(v6);
  }

LABEL_7:
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t llvm::MachO::PackedVersion::parse64(int *a1, uint64_t a2, unint64_t a3)
{
  v22[10] = *MEMORY[0x277D85DE8];
  *a1 = 0;
  if (!a3)
  {
    v7 = 0;
    goto LABEL_7;
  }

  v20 = v22;
  v21 = 0x500000000;
  llvm::SplitString(a2, a3, &v20, ".", 1);
  v5 = v21;
  v6 = v20;
  if ((v21 - 6) < 0xFFFFFFFB)
  {
LABEL_3:
    v7 = 0;
    goto LABEL_4;
  }

  v18 = 0;
  v19 = *v20;
  v7 = 0;
  if ((llvm::consumeUnsignedInteger(&v19, 0xA, &v18, v4) & 1) == 0 && !*(&v19 + 1))
  {
    v11 = v18;
    if (!(v18 >> 24))
    {
      if (v18 < 0x10000)
      {
        v12 = 0;
      }

      else
      {
        v11 = 0xFFFF;
        v18 = 0xFFFFLL;
        v12 = 1;
      }

      v13 = v11 << 16;
      *a1 = v11 << 16;
      if (v5 >= 2)
      {
        if (v5 == 2)
        {
          v14 = 1;
        }

        else
        {
          v14 = 2;
        }

        v15 = v6 + 1;
        v16 = 8;
        do
        {
          v19 = *v15;
          if ((llvm::consumeUnsignedInteger(&v19, 0xA, &v18, v10) & 1) != 0 || *(&v19 + 1) || (v17 = v18, v18 >= 0x400))
          {
            v7 = (v12 << 8);
            goto LABEL_4;
          }

          if (v18 >= 0x100)
          {
            v18 = 255;
            v12 = 1;
            v17 = 255;
          }

          v13 |= v17 << v16;
          *a1 = v13;
          v16 -= 8;
          ++v15;
          --v14;
        }

        while (v14);
        if (v5 <= 3)
        {
          v7 = ((v12 << 8) + 1);
        }

        else
        {
          v7 = 257;
        }
      }

      else
      {
        v7 = (v12 << 8) | 1u;
      }

      goto LABEL_4;
    }

    goto LABEL_3;
  }

LABEL_4:
  if (v6 != v22)
  {
    free(v6);
  }

LABEL_7:
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

llvm::raw_ostream *llvm::MachO::PackedVersion::print(llvm::MachO::PackedVersion *this, llvm::raw_ostream *a2)
{
  v4 = *(this + 1);
  v7 = &unk_2883EB758;
  v8 = "%d";
  v9 = v4;
  result = llvm::raw_ostream::operator<<(a2, &v7);
  v6 = *this;
  if (*this)
  {
    v7 = &unk_2883EB758;
    v8 = ".%d";
    v9 = BYTE1(v6);
    result = llvm::raw_ostream::operator<<(a2, &v7);
    LOBYTE(v6) = *this;
  }

  if (v6)
  {
    v7 = &unk_2883EB758;
    v8 = ".%d";
    v9 = v6;
    return llvm::raw_ostream::operator<<(a2, &v7);
  }

  return result;
}

uint64_t llvm::MachO::mapToPlatformType(uint64_t a1)
{
  v1 = *(a1 + 36);
  if (v1 > 29)
  {
    if (v1 <= 31)
    {
      v4 = 5;
      if (v1 == 31)
      {
        v5 = 10;
      }

      else
      {
        v5 = 0;
      }

      v6 = v1 == 30;
LABEL_21:
      if (v6)
      {
        return v4;
      }

      else
      {
        return v5;
      }
    }

    if (v1 != 32)
    {
      v2 = v1 == 33;
      v3 = 14;
LABEL_14:
      if (v2)
      {
        return v3;
      }

      else
      {
        return 0;
      }
    }

    if (*(a1 + 40) == 23)
    {
      return 12;
    }

    else
    {
      return 11;
    }
  }

  else
  {
    if (v1 <= 27)
    {
      if (v1 != 7)
      {
        v2 = v1 == 11;
        v3 = 1;
        goto LABEL_14;
      }

      v10 = *(a1 + 40);
      v4 = 7;
      if (v10 == 24)
      {
        v5 = 6;
      }

      else
      {
        v5 = 2;
      }

      v6 = v10 == 23;
      goto LABEL_21;
    }

    v2 = *(a1 + 40) == 23;
    if (v1 == 28)
    {
      v7 = 3;
      v8 = 8;
    }

    else
    {
      v7 = 4;
      v8 = 9;
    }

    if (*(a1 + 40) == 23)
    {
      return v8;
    }

    else
    {
      return v7;
    }
  }
}

uint64_t *llvm::SmallSet<llvm::MachO::PlatformType,3u,std::less<llvm::MachO::PlatformType>>::insert@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 48))
  {
    result = std::__tree<llvm::MachO::PlatformType>::__emplace_unique_key_args<llvm::MachO::PlatformType,llvm::MachO::PlatformType const&>(a1 + 32, a2);
    *(a3 + 8) = 0;
  }

  else
  {
    v8 = *(a1 + 8);
    v9 = *a2;
    if (!v8)
    {
      goto LABEL_11;
    }

    result = *a1;
    v10 = 4 * v8;
    v11 = *a1;
    while (*v11 != v9)
    {
      v11 = (v11 + 4);
      result = (result + 4);
      v10 -= 4;
      if (!v10)
      {
        goto LABEL_10;
      }
    }

    if (v10)
    {
      v7 = 0;
      *(a3 + 8) = 1;
      goto LABEL_14;
    }

LABEL_10:
    if (v8 > 2)
    {
      do
      {
        std::__tree<llvm::MachO::PlatformType>::__emplace_unique_key_args<llvm::MachO::PlatformType,llvm::MachO::PlatformType const&>(a1 + 32, (*a1 + 4 * v8 - 4));
        LODWORD(v8) = *(a1 + 8) - 1;
        *(a1 + 8) = v8;
      }

      while (v8);
      result = std::__tree<llvm::MachO::PlatformType>::__emplace_unique_key_args<llvm::MachO::PlatformType,llvm::MachO::PlatformType const&>(a1 + 32, a2);
      *(a3 + 8) = 0;
      v7 = 1;
    }

    else
    {
LABEL_11:
      llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a1, v9);
      result = (*a1 + 4 * *(a1 + 8) - 4);
      v7 = 1;
      *(a3 + 8) = 1;
    }
  }

LABEL_14:
  *a3 = result;
  *(a3 + 16) = v7;
  return result;
}

void llvm::MachO::getOSAndEnvironmentName(int a1@<W0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 6:
      std::operator+<char>();
      v3 = "-macabi";
      goto LABEL_7;
    case 7:
    case 8:
    case 9:
    case 12:
      std::operator+<char>();
      v3 = "-simulator";
LABEL_7:
      v4 = std::string::append(&v6, v3);
      v5 = v4->__r_.__value_.__r.__words[2];
      *a2 = *&v4->__r_.__value_.__l.__data_;
      *(a2 + 16) = v5;
      v4->__r_.__value_.__l.__size_ = 0;
      v4->__r_.__value_.__r.__words[2] = 0;
      v4->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v6.__r_.__value_.__l.__data_);
      }

      break;
    case 13:
      __break(1u);
      break;
    default:

      std::operator+<char>();
      break;
  }
}

unint64_t llvm::MachO::mapToSupportedOSVersion(llvm::MachO *this, const llvm::Triple *a2)
{
  v7[0] = llvm::Triple::getMinimumSupportedOSVersion(this);
  v7[1] = v3;
  v6[0] = llvm::Triple::getOSVersion(this);
  v6[1] = v4;
  if (llvm::operator<(v6, v7))
  {
    return v7[0];
  }

  else
  {
    return llvm::Triple::getOSVersion(this);
  }
}

uint64_t *std::__tree<llvm::MachO::PlatformType>::__emplace_unique_key_args<llvm::MachO::PlatformType,llvm::MachO::PlatformType const&>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t llvm::MachO::Symbol::targets@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = &unk_2883F0EF0;
  v9 = a2;
  v10 = &v8;
  std::__function::__value_func<BOOL ()(llvm::MachO::Target const&)>::__value_func[abi:nn200100](v7, &v8);
  llvm::make_filter_range<llvm::SmallVector<llvm::MachO::Target,5u> const&,std::function<BOOL ()(llvm::MachO::Target const&)>>(a1 + 16, v7, a3);
  std::__function::__value_func<BOOL ()(llvm::MachO::Target const&)>::~__value_func[abi:nn200100](v7);
  result = std::__function::__value_func<BOOL ()(llvm::MachO::Target const&)>::~__value_func[abi:nn200100](&v8);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__func<llvm::MachO::Symbol::targets(llvm::MachO::ArchitectureSet)::$_0,std::allocator<llvm::MachO::Symbol::targets(llvm::MachO::ArchitectureSet)::$_0>,BOOL ()(llvm::MachO::Target const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2883F0EF0;
  *(a2 + 8) = *(result + 8);
  return result;
}

void llvm::MachO::SymbolSet::~SymbolSet(llvm::MachO::SymbolSet *this)
{
  v3 = this + 96;
  v2 = *(this + 12);
  v4 = *(this + 28);
  if (*(this + 26))
  {
    v10.i64[0] = *(this + 12);
    v10.i64[1] = v2 + 32 * v4;
    llvm::DenseMapIterator<llvm::SymbolsMapKey,llvm::MachO::Symbol *,llvm::DenseMapInfo<llvm::SymbolsMapKey,void>,llvm::detail::DenseMapPair<llvm::SymbolsMapKey,llvm::MachO::Symbol *>,true>::AdvancePastEmptyBuckets(&v10);
    v5 = v10;
    v2 = *(this + 12);
    v4 = *(this + 28);
  }

  else
  {
    v5 = vdupq_n_s64(v2 + 32 * v4);
  }

  v10 = v5;
  v6 = v2 + 32 * v4;
  v7 = v5.i64[0];
  if (v6 != v5.i64[0])
  {
    do
    {
      v8 = *(v7 + 24);
      v9 = *(v8 + 16);
      if (v9 != (v8 + 32))
      {
        free(v9);
        v7 = v10.i64[0];
      }

      v10.i64[0] = v7 + 32;
      llvm::DenseMapIterator<llvm::SymbolsMapKey,llvm::MachO::Symbol *,llvm::DenseMapInfo<llvm::SymbolsMapKey,void>,llvm::detail::DenseMapPair<llvm::SymbolsMapKey,llvm::MachO::Symbol *>,true>::AdvancePastEmptyBuckets(&v10);
      v7 = v10.i64[0];
    }

    while (v10.i64[0] != v6);
  }

  llvm::DenseMapBase<llvm::DenseMap<llvm::SymbolsMapKey,llvm::MachO::Symbol *,llvm::DenseMapInfo<llvm::SymbolsMapKey,void>,llvm::detail::DenseMapPair<llvm::SymbolsMapKey,llvm::MachO::Symbol *>>,llvm::SymbolsMapKey,llvm::MachO::Symbol *,llvm::DenseMapInfo<llvm::SymbolsMapKey,void>,llvm::detail::DenseMapPair<llvm::SymbolsMapKey,llvm::MachO::Symbol *>>::destroyAll(v3);
  MEMORY[0x277C69E30](*(this + 12), 8);
  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(this);
}

unint64_t llvm::MachO::SymbolSet::addGlobalImpl(uint64_t a1, char a2, const void *a3, unint64_t *a4, char a5)
{
  if (a4)
  {
    v10 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, a4, 0);
    memcpy(v10, a3, a4);
  }

  else
  {
    v10 = 0;
  }

  v12[0] = a2;
  v13 = v10;
  v14 = a4;
  llvm::DenseMapBase<llvm::DenseMap<llvm::SymbolsMapKey,llvm::MachO::Symbol *,llvm::DenseMapInfo<llvm::SymbolsMapKey,void>,llvm::detail::DenseMapPair<llvm::SymbolsMapKey,llvm::MachO::Symbol *>>,llvm::SymbolsMapKey,llvm::MachO::Symbol *,llvm::DenseMapInfo<llvm::SymbolsMapKey,void>,llvm::detail::DenseMapPair<llvm::SymbolsMapKey,llvm::MachO::Symbol *>>::try_emplace<decltype(nullptr)>(a1 + 96, v12, a4, &v15);
  if ((v16 & 1) == 0)
  {
    return *(v15 + 24);
  }

  result = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, 160, 3);
  *result = v10;
  *(result + 8) = a4;
  *(result + 16) = result + 32;
  *(result + 24) = 0x500000000;
  *(result + 152) = a2;
  *(result + 153) = a5;
  *(v15 + 24) = result;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::SymbolsMapKey,llvm::MachO::Symbol *,llvm::DenseMapInfo<llvm::SymbolsMapKey,void>,llvm::detail::DenseMapPair<llvm::SymbolsMapKey,llvm::MachO::Symbol *>>,llvm::SymbolsMapKey,llvm::MachO::Symbol *,llvm::DenseMapInfo<llvm::SymbolsMapKey,void>,llvm::detail::DenseMapPair<llvm::SymbolsMapKey,llvm::MachO::Symbol *>>::try_emplace<decltype(nullptr)>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::SymbolsMapKey,llvm::MachO::Symbol *,llvm::DenseMapInfo<llvm::SymbolsMapKey,void>,llvm::detail::DenseMapPair<llvm::SymbolsMapKey,llvm::MachO::Symbol *>>,llvm::SymbolsMapKey,llvm::MachO::Symbol *,llvm::DenseMapInfo<llvm::SymbolsMapKey,void>,llvm::detail::DenseMapPair<llvm::SymbolsMapKey,llvm::MachO::Symbol *>>::LookupBucketFor<llvm::SymbolsMapKey>(a1, a2, &v12, a3);
  v8 = v12;
  if (result)
  {
    v9 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::SymbolsMapKey,llvm::MachO::Symbol *,llvm::DenseMapInfo<llvm::SymbolsMapKey,void>,llvm::detail::DenseMapPair<llvm::SymbolsMapKey,llvm::MachO::Symbol *>>,llvm::SymbolsMapKey,llvm::MachO::Symbol *,llvm::DenseMapInfo<llvm::SymbolsMapKey,void>,llvm::detail::DenseMapPair<llvm::SymbolsMapKey,llvm::MachO::Symbol *>>::InsertIntoBucketImpl<llvm::SymbolsMapKey>(a1, a2, a2, v12);
    v8 = result;
    v10 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v10;
    *(result + 24) = 0;
    v9 = 1;
  }

  v11 = *a1 + 32 * *(a1 + 16);
  *a4 = v8;
  *(a4 + 8) = v11;
  *(a4 + 16) = v9;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::SymbolsMapKey,llvm::MachO::Symbol *,llvm::DenseMapInfo<llvm::SymbolsMapKey,void>,llvm::detail::DenseMapPair<llvm::SymbolsMapKey,llvm::MachO::Symbol *>>,llvm::SymbolsMapKey,llvm::MachO::Symbol *,llvm::DenseMapInfo<llvm::SymbolsMapKey,void>,llvm::detail::DenseMapPair<llvm::SymbolsMapKey,llvm::MachO::Symbol *>>::destroyAll(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v6 = 0;
    v7[0] = 0;
    v7[1] = 0;
    v4 = 3;
    v5[0] = 0;
    v5[1] = 0;
    v2 = 32 * v1;
    v3 = *result;
    do
    {
      v10 = v3;
      v11 = v3 + 8;
      v8 = &v6;
      v9 = v7;
      result = std::__tuple_equal<2ul>::operator()[abi:nn200100]<std::tuple<llvm::MachO::SymbolKind const&,llvm::StringRef const&>,std::tuple<llvm::MachO::SymbolKind const&,llvm::StringRef const&>>(&v12, &v10, &v8);
      if ((result & 1) == 0)
      {
        v10 = v3;
        v11 = v3 + 8;
        v8 = &v4;
        v9 = v5;
        result = std::__tuple_equal<2ul>::operator()[abi:nn200100]<std::tuple<llvm::MachO::SymbolKind const&,llvm::StringRef const&>,std::tuple<llvm::MachO::SymbolKind const&,llvm::StringRef const&>>(&v12, &v10, &v8);
      }

      v3 += 32;
      v2 -= 32;
    }

    while (v2);
  }

  return result;
}

unsigned __int8 *llvm::DenseMapBase<llvm::DenseMap<llvm::SymbolsMapKey,llvm::MachO::Symbol *,llvm::DenseMapInfo<llvm::SymbolsMapKey,void>,llvm::detail::DenseMapPair<llvm::SymbolsMapKey,llvm::MachO::Symbol *>>,llvm::SymbolsMapKey,llvm::MachO::Symbol *,llvm::DenseMapInfo<llvm::SymbolsMapKey,void>,llvm::detail::DenseMapPair<llvm::SymbolsMapKey,llvm::MachO::Symbol *>>::InsertIntoBucketImpl<llvm::SymbolsMapKey>(uint64_t a1, uint64_t a2, llvm::hashing::detail::hash_state **a3, unsigned __int8 *a4)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
  }

  else if (v7 + ~v6 - *(a1 + 12) > v7 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<llvm::SymbolsMapKey,llvm::MachO::Symbol *,llvm::DenseMapInfo<llvm::SymbolsMapKey,void>,llvm::detail::DenseMapPair<llvm::SymbolsMapKey,llvm::MachO::Symbol *>>::grow(a1, v7);
  v11 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::SymbolsMapKey,llvm::MachO::Symbol *,llvm::DenseMapInfo<llvm::SymbolsMapKey,void>,llvm::detail::DenseMapPair<llvm::SymbolsMapKey,llvm::MachO::Symbol *>>,llvm::SymbolsMapKey,llvm::MachO::Symbol *,llvm::DenseMapInfo<llvm::SymbolsMapKey,void>,llvm::detail::DenseMapPair<llvm::SymbolsMapKey,llvm::MachO::Symbol *>>::LookupBucketFor<llvm::SymbolsMapKey>(a1, a3, &v11, v10);
  a4 = v11;
LABEL_3:
  ++*(a1 + 8);
  LOBYTE(v11) = 0;
  v12[0] = 0;
  v12[1] = 0;
  v14[0] = a4;
  v14[1] = a4 + 8;
  v13[0] = &v11;
  v13[1] = v12;
  if (!std::__tuple_equal<2ul>::operator()[abi:nn200100]<std::tuple<llvm::MachO::SymbolKind const&,llvm::StringRef const&>,std::tuple<llvm::MachO::SymbolKind const&,llvm::StringRef const&>>(&v15, v14, v13))
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<llvm::SymbolsMapKey,llvm::MachO::Symbol *,llvm::DenseMapInfo<llvm::SymbolsMapKey,void>,llvm::detail::DenseMapPair<llvm::SymbolsMapKey,llvm::MachO::Symbol *>>::grow(uint64_t a1, int a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = operator new(32 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    *&v29[7] = 0uLL;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = &result[32 * v10];
      do
      {
        *result = 0;
        *(result + 1) = *v29;
        *(result + 2) = *&v29[15];
        result += 32;
      }

      while (result != v11);
    }

    v29[0] = 0;
    *&v29[8] = 0;
    *&v29[16] = 0;
    v22 = 3;
    v23[0] = 0;
    v23[1] = 0;
    if (v3)
    {
      v12 = 32 * v3;
      v13 = v4;
      v14 = v4;
      do
      {
        v26 = v13;
        v27 = v13 + 8;
        v24 = v29;
        v25 = &v29[8];
        if (!std::__tuple_equal<2ul>::operator()[abi:nn200100]<std::tuple<llvm::MachO::SymbolKind const&,llvm::StringRef const&>,std::tuple<llvm::MachO::SymbolKind const&,llvm::StringRef const&>>(&v28, &v26, &v24))
        {
          v26 = v13;
          v27 = v13 + 8;
          v24 = &v22;
          v25 = v23;
          if (!std::__tuple_equal<2ul>::operator()[abi:nn200100]<std::tuple<llvm::MachO::SymbolKind const&,llvm::StringRef const&>,std::tuple<llvm::MachO::SymbolKind const&,llvm::StringRef const&>>(&v28, &v26, &v24))
          {
            v26 = 0;
            llvm::DenseMapBase<llvm::DenseMap<llvm::SymbolsMapKey,llvm::MachO::Symbol *,llvm::DenseMapInfo<llvm::SymbolsMapKey,void>,llvm::detail::DenseMapPair<llvm::SymbolsMapKey,llvm::MachO::Symbol *>>,llvm::SymbolsMapKey,llvm::MachO::Symbol *,llvm::DenseMapInfo<llvm::SymbolsMapKey,void>,llvm::detail::DenseMapPair<llvm::SymbolsMapKey,llvm::MachO::Symbol *>>::LookupBucketFor<llvm::SymbolsMapKey>(a1, v14, &v26, v15);
            v16 = v26;
            v17 = *v14;
            *(v26 + 2) = *(v14 + 16);
            *v16 = v17;
            *(v16 + 3) = *(v14 + 24);
            ++*(a1 + 8);
          }
        }

        v14 += 32;
        v13 += 32;
        v12 -= 32;
      }

      while (v12);
    }

    v18 = *MEMORY[0x277D85DE8];

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  *&v29[15] = 0;
  *&v29[7] = 0;
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = &result[32 * v19];
    do
    {
      *result = 0;
      *(result + 1) = *v29;
      *(result + 2) = *&v29[15];
      result += 32;
    }

    while (result != v20);
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::MachO::Target::create@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24[0] = a1;
  v24[1] = a2;
  LOBYTE(v26) = 45;
  llvm::StringRef::split(v24, &v26, 1uLL, v21);
  result = llvm::MachO::getArchitectureFromName(v21[0], v21[1]);
  v6 = result;
  if (v23 <= 7)
  {
    if (v23 <= 3)
    {
      if (!v23)
      {
LABEL_87:
        v8 = 0;
        goto LABEL_88;
      }

      if (v23 == 3 && *v22 == 28521 && *(v22 + 2) == 115)
      {
        v8 = 2;
        goto LABEL_88;
      }
    }

    else if (v23 == 4)
    {
      if (*v22 == 1936683640)
      {
        v8 = 11;
        goto LABEL_88;
      }

      if (*v22 == 1936684660)
      {
        v8 = 3;
        goto LABEL_88;
      }
    }

    else if (v23 == 5)
    {
      if (*v22 == 1868783981 && *(v22 + 4) == 115)
      {
        v8 = 1;
        goto LABEL_88;
      }

      if (*v22 == 1869636979 && *(v22 + 4) == 115)
      {
        v8 = 14;
        goto LABEL_88;
      }
    }

    else if (v23 == 7 && *v22 == 1668571511 && *(v22 + 3) == 1936681059)
    {
      v8 = 4;
      goto LABEL_88;
    }
  }

  else if (v23 > 12)
  {
    switch(v23)
    {
      case 13:
        if (*v22 == 0x756D69732D736F69 && *(v22 + 5) == 0x726F74616C756D69)
        {
          v8 = 7;
          goto LABEL_88;
        }

        break;
      case 14:
        if (*v22 == 0x6D69732D736F7278 && *(v22 + 6) == 0x726F74616C756D69)
        {
          v8 = 12;
          goto LABEL_88;
        }

        if (*v22 == 0x6D69732D736F7674 && *(v22 + 6) == 0x726F74616C756D69)
        {
          v8 = 8;
          goto LABEL_88;
        }

        break;
      case 17:
        v10 = *v22 == 0x2D736F6863746177 && *(v22 + 8) == 0x6F74616C756D6973;
        if (v10 && *(v22 + 16) == 114)
        {
          v8 = 9;
          goto LABEL_88;
        }

        break;
    }
  }

  else if (v23 == 8)
  {
    if (*v22 == 0x736F656764697262)
    {
      v8 = 5;
      goto LABEL_88;
    }
  }

  else if (v23 == 9)
  {
    if (*v22 == 0x696B726576697264 && *(v22 + 8) == 116)
    {
      v8 = 10;
      goto LABEL_88;
    }
  }

  else if (v23 == 11 && *v22 == 0x6C6174616363616DLL && *(v22 + 3) == 0x7473796C61746163)
  {
    v8 = 6;
    goto LABEL_88;
  }

  if (*v22 != 60 || *(v22 + v23 - 1) != 62)
  {
    goto LABEL_87;
  }

  v19 = v23 - 2;
  v25 = 0;
  v26 = v22 + 1;
  if (v23 - 1 < (v23 - 2))
  {
    v19 = v23 - 1;
  }

  v27 = v19;
  result = llvm::consumeUnsignedInteger(&v26, 0xA, &v25, v5);
  if (v27)
  {
    v20 = 1;
  }

  else
  {
    v20 = result;
  }

  if (v20)
  {
    v8 = 0;
  }

  else
  {
    v8 = v25;
  }

LABEL_88:
  *(a3 + 24) &= ~1u;
  *a3 = v6;
  *(a3 + 4) = v8;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  return result;
}

uint64_t *llvm::MachO::mapToPlatformSet@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a3 + 2;
  a3[1] = 0x300000000;
  a3[6] = 0;
  a3[5] = 0;
  a3[4] = a3 + 5;
  if (a2)
  {
    v4 = 24 * a2;
    v5 = result + 1;
    do
    {
      result = llvm::SmallSet<llvm::MachO::PlatformType,3u,std::less<llvm::MachO::PlatformType>>::insert(a3, v5, v6);
      v5 += 6;
      v4 -= 24;
    }

    while (v4);
  }

  return result;
}

void llvm::MachO::getTargetTripleName(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 1);
  v4 = (a1 + 8);
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0 || (*(a1 + 2) & 0x7FFFFFFF7FFFFFFFLL) != 0)
  {
    llvm::VersionTuple::getAsString(v4, &v16);
  }

  else
  {
    std::string::basic_string[abi:nn200100]<0>(&v16, &str_15_7);
  }

  ArchitectureName = llvm::MachO::getArchitectureName(*a1);
  v13 = 773;
  v12[0] = ArchitectureName;
  v12[1] = v7;
  v12[2] = "-apple-";
  v8 = *(a1 + 1);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
  }

  else
  {
    v9 = v16;
  }

  llvm::MachO::getOSAndEnvironmentName(v8, __p);
  v14[0] = v12;
  v14[2] = __p;
  v15 = 1026;
  llvm::Twine::str(v14, a2);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }
}

void llvm::MachO::TextAPIReader::get(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = *MEMORY[0x277D85DE8];
  memset(__p, 0, sizeof(__p));
  *v22 = 0u;
  v3 = a1[3];
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  v5 = a1[2];
  if (v3 >= 0x17)
  {
    operator new();
  }

  BYTE7(v26) = a1[3];
  if (v3)
  {
    memmove(&__dst, v5, v3);
  }

  *(&__dst + v3) = 0;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = __dst;
  __p[3] = v26;
  __dst = *a1;
  v6 = llvm::StringRef::trim(&__dst, " \t\n\v\f\r", 6);
  if (!v7)
  {
LABEL_19:
    v11 = std::generic_category();
    *&__dst = 45;
    *(&__dst + 1) = v11;
    v27 = "unsupported file type";
    llvm::make_error<llvm::StringError,char const*&,std::error_code>();
  }

  if (*v6 != 123 || *(v6 + v7 - 1) != 125)
  {
    if (v7 < 3)
    {
      goto LABEL_19;
    }

    if (*(v6 + v7 - 3) != 11822 || *(v6 + v7 - 1) != 46)
    {
      goto LABEL_19;
    }

    if (v7 < 0xE)
    {
      if (v7 < 0xA)
      {
        goto LABEL_19;
      }

      goto LABEL_35;
    }

    if (*v6 == 0x70617421202D2D2DLL && *(v6 + 6) == 0xA6462742D697061)
    {
      v15 = 64;
      goto LABEL_66;
    }

    if (v7 < 0x11)
    {
      goto LABEL_35;
    }

    if (*v6 == 0x70617421202D2D2DLL && *(v6 + 8) == 0x33762D6462742D69 && *(v6 + 16) == 10)
    {
      v15 = 32;
    }

    else
    {
      if (*v6 != 0x70617421202D2D2DLL || *(v6 + 8) != 0x32762D6462742D69 || *(v6 + 16) != 10)
      {
        if (*v6 == 0x70617421202D2D2DLL && *(v6 + 8) == 0x31762D6462742D69 && *(v6 + 16) == 10)
        {
LABEL_63:
          v15 = 8;
          goto LABEL_66;
        }

LABEL_35:
        if (*v6 != 0x686372610A2D2D2DLL || *(v6 + 8) != 14963)
        {
          goto LABEL_19;
        }

        goto LABEL_63;
      }

      v15 = 16;
    }

LABEL_66:
    v24 = v15;
    llvm::yaml::Input::Input(&__dst, *a1, a1[1], v22);
  }

  v24 = 128;
  v8 = *(a1 + 1);
  __dst = *a1;
  v26 = v8;
  llvm::MachO::TextAPIReader::getAsJSON(&__dst, &v27);
  if (v28)
  {
    v9 = v27;
    v27 = 0;
    *(a2 + 8) |= 1u;
  }

  else
  {
    *(a2 + 8) &= ~1u;
    v9 = v27;
    v27 = 0;
  }

  *a2 = v9;
  llvm::Expected<std::unique_ptr<llvm::MachO::InterfaceFile>>::~Expected(&v27);
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(__p[0]) < 0)
  {
    operator delete(v22[0]);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void DiagHandler(const llvm::SMDiagnostic *a1, void *a2)
{
  v38[128] = *MEMORY[0x277D85DE8];
  v36 = v38;
  v37 = xmmword_2750C8770;
  v18 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 1;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  v17 = &unk_2883EB968;
  v25 = &v36;
  llvm::raw_ostream::SetUnbuffered(&v17);
  v4 = *(a2 + 47);
  if (v4 >= 0)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = a2[3];
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 47);
  }

  else
  {
    v6 = a2[4];
  }

  v7 = *(a1 + 79);
  v8 = a1 + 56;
  if (v7 < 0)
  {
    v8 = *(a1 + 7);
  }

  if (v7 < 0)
  {
    v7 = *(a1 + 8);
  }

  v9 = a1 + 80;
  v10 = *(a1 + 103);
  if (v10 < 0)
  {
    v9 = *(a1 + 10);
  }

  v11 = *(a1 + 11);
  if (v10 >= 0)
  {
    v11 = *(a1 + 103);
  }

  llvm::SMDiagnostic::SMDiagnostic(v26, *a1, *(a1 + 1), v5, v6, *(a1 + 10), *(a1 + 11), *(a1 + 12), v8, v7, v9, v11, *(a1 + 13), (*(a1 + 14) - *(a1 + 13)) >> 3, *(a1 + 16), *(a1 + 34));
  llvm::SMDiagnostic::print(v26, 0, &v17, 1, 1);
  v14 = 1283;
  v13[0] = "malformed file\n";
  v13[2] = v36;
  v13[3] = v37;
  llvm::Twine::str(v13, &v15);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v15;
  a2[2] = v16;
  llvm::SmallVector<llvm::SMFixIt,4u>::~SmallVector(&v35);
  if (__p)
  {
    v34 = __p;
    operator delete(__p);
  }

  if (v32 < 0)
  {
    operator delete(v31);
  }

  if (v30 < 0)
  {
    operator delete(v29);
  }

  if (v28 < 0)
  {
    operator delete(v27);
  }

  llvm::raw_ostream::~raw_ostream(&v17);
  if (v36 != v38)
  {
    free(v36);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void **llvm::yaml::MappingTraits<llvm::MachO::InterfaceFile const*>::mapKeysToValuesV4(uint64_t *a1, uint64_t *a2)
{
  v100[5] = *MEMORY[0x277D85DE8];
  v88 = a1;
  v89 = 0;
  v90 = a2;
  if ((*(*a1 + 16))(a1))
  {
    v69 = 0;
    v70 = 0u;
    v71 = v73;
    v72 = 0x500000000;
    v75 = 0;
    v76 = 0;
    v74 = 0;
    v77 = 0;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v4 = *(*a2 + 96);
    v5 = &v4[24 * *(*a2 + 104)];
    v68 = *(a1[1] + 48) >> 4;
    llvm::SmallVectorImpl<llvm::MachO::Target>::insert<llvm::MachO::Target const*,void>(&v71, v73, v4, v5);
    v6 = *a2;
    v7 = *a2 + 264;
    v8 = *(*a2 + 287);
    if (v8 < 0)
    {
      v7 = *(*a2 + 264);
    }

    if (v8 < 0)
    {
      v8 = *(*a2 + 272);
    }

    v74 = v7;
    v75 = v8;
    v76 = *(v6 + 288);
    v77 = *(v6 + 296);
    if (*(v6 + 298))
    {
      v9 = 0;
    }

    else
    {
      v9 = 2;
    }

    v81 = v9;
    if ((*(v6 + 297) & 1) == 0)
    {
      v81 = v9 | 1;
    }

    v64 = a2;
    *(&v91 + 1) = 0;
    v92 = 0;
    *&v91 = &v91 + 8;
    v10 = *(v6 + 304);
    v11 = *(v6 + 312);
    if (v10 != v11)
    {
      v12 = v10 + 3;
      do
      {
        v13 = *std::__tree<std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>,std::__map_value_compare<std::string,std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>>>::__find_equal<std::string>(&v91, v99, v12);
        if (!v13)
        {
          operator new();
        }

        v14 = (v12 - 3);
        v15 = *(v13 + 64);
        if (v15 >= *(v13 + 68))
        {
          llvm::SmallVectorTemplateBase<llvm::MachO::Target,true>::growAndEmplaceBack<llvm::MachO::Target const&>(v13 + 56, v14);
        }

        else
        {
          v16 = *(v13 + 56) + 24 * v15;
          v17 = *v14;
          *(v16 + 16) = *(v12 - 1);
          *v16 = v17;
          ++*(v13 + 64);
        }

        v18 = v12 + 3;
        v12 += 6;
      }

      while (v18 != v11);
      v19 = v91;
      if (v91 != (&v91 + 8))
      {
        do
        {
          memset(v99, 0, 48);
          std::vector<llvm::MachO::Target>::__insert_with_size[abi:nn200100]<llvm::MachO::Target const*,llvm::MachO::Target const*>(v99, *(v19 + 7), (*(v19 + 7) + 24 * *(v19 + 16)), *(v19 + 16));
          std::string::operator=(&v99[1], (v19 + 2));
          v20 = *(&v82 + 1);
          if (*(&v82 + 1) >= v83)
          {
            v22 = 0xAAAAAAAAAAAAAAABLL * ((*(&v82 + 1) - v82) >> 4);
            v23 = v22 + 1;
            if ((v22 + 1) > 0x555555555555555)
            {
              std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
            }

            if (0x5555555555555556 * ((v83 - v82) >> 4) > v23)
            {
              v23 = 0x5555555555555556 * ((v83 - v82) >> 4);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v83 - v82) >> 4) >= 0x2AAAAAAAAAAAAAALL)
            {
              v24 = 0x555555555555555;
            }

            else
            {
              v24 = v23;
            }

            v25 = v96;
            *v96 = 0;
            *(v25 + 1) = 0;
            *(v25 + 2) = 0;
            *v25 = v99[0];
            memset(v99, 0, 24);
            v26 = v99[1].__r_.__value_.__r.__words[2];
            *(v25 + 24) = *&v99[1].__r_.__value_.__l.__data_;
            *(v25 + 5) = v26;
            memset(&v99[1], 0, sizeof(std::string));
            v96 += 48;
            v27 = *(&v82 + 1);
            *(&v82 + 1) = v27;
            if (SHIBYTE(v99[1].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v99[1].__r_.__value_.__l.__data_);
            }
          }

          else
          {
            **(&v82 + 1) = 0;
            *(v20 + 8) = 0;
            *(v20 + 16) = 0;
            *v20 = v99[0];
            memset(v99, 0, 24);
            v21 = v99[1].__r_.__value_.__r.__words[2];
            *(v20 + 24) = *&v99[1].__r_.__value_.__l.__data_;
            *(v20 + 40) = v21;
            memset(&v99[1], 0, sizeof(std::string));
            *(&v82 + 1) = v20 + 48;
          }

          if (v99[0].__r_.__value_.__r.__words[0])
          {
            v99[0].__r_.__value_.__l.__size_ = v99[0].__r_.__value_.__r.__words[0];
            operator delete(v99[0].__r_.__value_.__l.__data_);
          }

          v28 = *(v19 + 1);
          if (v28)
          {
            do
            {
              v29 = v28;
              v28 = *v28;
            }

            while (v28);
          }

          else
          {
            do
            {
              v29 = *(v19 + 2);
              v30 = *v29 == v19;
              v19 = v29;
            }

            while (!v30);
          }

          v19 = v29;
        }

        while (v29 != (&v91 + 8));
      }
    }

    std::__tree<std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>,std::__map_value_compare<std::string,std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,llvm::SmallVector<llvm::MachO::Target,5u>>>>::destroy(&v91, *(&v91 + 1));
    llvm::yaml::MappingTraits<llvm::MachO::InterfaceFile const*>::NormalizedTBD_V4::assignTargetsToLibrary(*(*v64 + 328), *(*v64 + 336));
    llvm::yaml::MappingTraits<llvm::MachO::InterfaceFile const*>::NormalizedTBD_V4::assignTargetsToLibrary(*(*v64 + 352), *(*v64 + 360));
    llvm::MachO::SymbolSet::exports(*(*v64 + 448), v99);
    std::__function::__value_func<BOOL ()(llvm::MachO::Symbol const*)>::~__value_func[abi:nn200100](v100);
    std::__function::__value_func<BOOL ()(llvm::MachO::Symbol const*)>::~__value_func[abi:nn200100](&v99[1].__r_.__value_.__l.__size_);
    llvm::MachO::SymbolSet::reexports(*(*v64 + 448), &v95);
    std::__function::__value_func<BOOL ()(llvm::MachO::Symbol const*)>::~__value_func[abi:nn200100](&v98);
    std::__function::__value_func<BOOL ()(llvm::MachO::Symbol const*)>::~__value_func[abi:nn200100](&v97);
    llvm::MachO::SymbolSet::undefineds(*(*v64 + 448), &v91);
    std::__function::__value_func<BOOL ()(llvm::MachO::Symbol const*)>::~__value_func[abi:nn200100](&v94);
    std::__function::__value_func<BOOL ()(llvm::MachO::Symbol const*)>::~__value_func[abi:nn200100](&v93);
  }

  else
  {
    v69 = 0;
    v70 = 0uLL;
    v71 = v73;
    v72 = 0x500000000;
    v75 = 0;
    v76 = 0;
    v74 = 0;
    v77 = 0;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
  }

  v89 = &v68;
  v95 = 0uLL;
  v96 = 0;
  (*(*a1 + 96))(a1, "!tapi-tbd", 9, 1);
  llvm::yaml::IO::processKey<unsigned int,llvm::yaml::EmptyContext>(a1, "tbd-version", v89, 1);
  llvm::yaml::IO::processKey<llvm::SmallVector<llvm::MachO::Target,5u>,llvm::yaml::EmptyContext>(a1, (v89 + 4));
  if (((*(*a1 + 56))(a1) & 1) == 0)
  {
    v66 = 0;
    v65 = 0;
    if ((*(*a1 + 120))(a1, "uuids", 0, 0, &v65, &v66))
    {
      v31 = (*(*a1 + 24))(a1);
      if (((*(*a1 + 16))(a1) & 1) == 0 && v31)
      {
        v32 = 0;
        v33 = 0;
        for (i = 0; i != v31; ++i)
        {
          *&v91 = 0;
          if ((*(*a1 + 32))(a1, i, &v91))
          {
            v35 = 0xAAAAAAAAAAAAAAABLL * (&v33[-v32] >> 4);
            if (v35 <= i)
            {
              v36 = i + 1;
              v37 = i + 1 - v35;
              if (0xAAAAAAAAAAAAAAABLL * ((v96 - v33) >> 4) < v37)
              {
                if (0x5555555555555556 * (&v96[-v32] >> 4) > v36)
                {
                  v36 = 0x5555555555555556 * (&v96[-v32] >> 4);
                }

                if (0xAAAAAAAAAAAAAAABLL * (&v96[-v32] >> 4) >= 0x2AAAAAAAAAAAAAALL)
                {
                  v36 = 0x555555555555555;
                }

                if (v36 <= 0x555555555555555)
                {
                  operator new();
                }

                std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
              }

              bzero(v33, 48 * ((48 * v37 - 48) / 0x30) + 48);
              v33 += 48 * ((48 * v37 - 48) / 0x30) + 48;
              *(&v95 + 1) = v33;
            }

            v32 = v95;
            v38 = v95 + 48 * i;
            (*(*a1 + 104))(a1);
            v99[0].__r_.__value_.__r.__words[0] = 0;
            v67 = 0;
            if ((*(*a1 + 120))(a1, "target", 1, 0, &v67, v99))
            {
              llvm::yaml::yamlize<llvm::MachO::Target>(a1, (v32 + 48 * i));
              (*(*a1 + 128))(a1, v99[0].__r_.__value_.__r.__words[0]);
            }

            llvm::yaml::IO::processKey<std::string,llvm::yaml::EmptyContext>(a1, "value", v38 + 24, 1);
            (*(*a1 + 112))(a1);
            (*(*a1 + 40))(a1, v91);
          }
        }
      }

      (*(*a1 + 48))(a1);
      (*(*a1 + 128))(a1, v66);
    }
  }

  LODWORD(v99[0].__r_.__value_.__l.__data_) = 0;
  llvm::yaml::IO::processKeyWithDefault<TBDFlags,llvm::yaml::EmptyContext>(a1, v89 + 62, v99);
  llvm::yaml::IO::processKey<llvm::StringRef,llvm::yaml::EmptyContext>(a1, "install-name", (v89 + 21), 1);
  LODWORD(v99[0].__r_.__value_.__l.__data_) = 0x10000;
  llvm::yaml::IO::processKeyWithDefault<llvm::MachO::PackedVersion,llvm::yaml::EmptyContext>(a1, "current-version", (v89 + 23), v99);
  LODWORD(v99[0].__r_.__value_.__l.__data_) = 0x10000;
  llvm::yaml::IO::processKeyWithDefault<llvm::MachO::PackedVersion,llvm::yaml::EmptyContext>(a1, "compatibility-version", (v89 + 188), v99);
  v99[0].__r_.__value_.__s.__data_[0] = 0;
  llvm::yaml::IO::processKeyWithDefault<SwiftVersion,llvm::yaml::EmptyContext>(a1, "swift-abi-version", (v89 + 24), v99);
  v39 = v89;
  if (!(*(*a1 + 56))(a1) || v39[32] != v39[33])
  {
    v66 = 0;
    v67 = 0;
    if ((*(*a1 + 120))(a1, "parent-umbrella", 0, 0, &v67, &v66))
    {
      v40 = (*(*a1 + 24))(a1);
      if ((*(*a1 + 16))(a1))
      {
        v40 = -1431655765 * ((v39[33] - v39[32]) >> 4);
      }

      if (v40)
      {
        v41 = 0;
        v42 = 0;
        v43 = v40;
        v44 = 24;
        do
        {
          *&v91 = 0;
          if ((*(*a1 + 32))(a1, v42, &v91))
          {
            v45 = v39[32];
            v46 = v39[33];
            v47 = 0xAAAAAAAAAAAAAAABLL * ((v46 - v45) >> 4);
            if (v47 <= v42)
            {
              v48 = v42 + 1;
              v49 = v39[34];
              if (0xAAAAAAAAAAAAAAABLL * ((v49 - v46) >> 4) >= v42 + 1 - v47)
              {
                v54 = 48 - -48 * ((v41 - 16 * ((v46 - v45) >> 4)) / 0x30uLL);
                bzero(v39[33], v54);
                v39[33] = v46 + v54;
              }

              else
              {
                v50 = 0xAAAAAAAAAAAAAAABLL * ((v49 - v45) >> 4);
                if (2 * v50 > v48)
                {
                  v48 = 2 * v50;
                }

                if (v50 >= 0x2AAAAAAAAAAAAAALL)
                {
                  v51 = 0x555555555555555;
                }

                else
                {
                  v51 = v48;
                }

                v52 = v99[0].__r_.__value_.__r.__words[2];
                v53 = 48 * ((v41 - 48 * v47) / 0x30) + 48;
                bzero(v99[0].__r_.__value_.__r.__words[2], v53);
                v99[0].__r_.__value_.__r.__words[2] = v52 + v53;
              }
            }

            v55 = v39[32] + v44;
            (*(*a1 + 104))(a1);
            llvm::yaml::IO::processKey<std::vector<llvm::MachO::Target>,llvm::yaml::EmptyContext>(a1, (v55 - 24));
            llvm::yaml::IO::processKey<std::string,llvm::yaml::EmptyContext>(a1, "umbrella", v55, 1);
            (*(*a1 + 112))(a1);
            (*(*a1 + 40))(a1, v91);
          }

          ++v42;
          v44 += 48;
          v41 += 48;
        }

        while (v43 != v42);
      }

      (*(*a1 + 48))(a1);
      (*(*a1 + 128))(a1, v66);
    }
  }

  LODWORD(v99[0].__r_.__value_.__l.__data_) = 0;
  LODWORD(v99[0].__r_.__value_.__l.__data_) = 1;
  if (((*(*v88 + 16))(v88) & 1) == 0)
  {
    v56 = v88[1];
    operator new();
  }

  v57 = v89;
  v58 = v57[32];
  if (v58)
  {
    v59 = v57[33];
    v60 = v57[32];
    if (v59 != v58)
    {
      do
      {
        v59 -= 48;
      }

      while (v59 != v58);
      v60 = v57[32];
    }

    v57[33] = v58;
    operator delete(v60);
  }

  v61 = v57[4];
  if (v61 != v57 + 6)
  {
    free(v61);
  }

  v63 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::yaml::MappingTraits<llvm::MachO::InterfaceFile const*>::mapKeysToValues(int a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a3;
  v4 = a2;
  v437 = *MEMORY[0x277D85DE8];
  v412 = a2;
  v413 = 0;
  v414 = a3;
  v5 = (*(*a2 + 16))(a2);
  v391 = 0u;
  v392 = v394;
  v393 = 0x400000000;
  v394[4] = v395;
  v394[5] = 0;
  v395[0] = 0;
  v395[1] = 1;
  memset(v396, 0, sizeof(v396));
  v397 = v399;
  v398 = 0x300000000;
  *(&v400 + 1) = 0;
  v401 = 0;
  *&v400 = &v400 + 8;
  v380 = v4;
  if (!v5)
  {
    v407 = 0;
    v406 = 0;
    v403 = 0;
    v404 = 0;
    v402 = 0;
    v405 = 0;
    v411 = 0u;
    v408 = 0u;
    v409 = 0u;
    v410 = 0u;
    goto LABEL_554;
  }

  v407 = 0;
  v406 = 0;
  v403 = 0;
  v404 = 0;
  v402 = 0;
  v405 = 0;
  v411 = 0u;
  v408 = 0u;
  v409 = 0u;
  v410 = 0u;
  v382 = v4[1];
  v6 = *(*v3 + 104);
  if (v6)
  {
    v7 = 0;
    v8 = *(*v3 + 96);
    v9 = 24 * v6;
    do
    {
      v10 = *v8;
      v8 += 24;
      v11 = 1 << v10;
      if (v10 == 16)
      {
        v12 = 0;
      }

      else
      {
        v12 = v11;
      }

      v7 |= v12;
      v9 -= 24;
    }

    while (v9);
  }

  else
  {
    v7 = 0;
  }

  v430.i32[0] = v7;
  llvm::MachO::ArchitectureSet::operator std::vector<llvm::MachO::Architecture>(&v430, v417);
  if (*v396)
  {
    *&v396[8] = *v396;
    operator delete(*v396);
  }

  *v396 = v417[0];
  *&v396[16] = v417[1].i64[0];
  llvm::MachO::mapToPlatformSet(*(*v3 + 96), *(*v3 + 104), v417);
  v13 = v417[0].i64[0];
  v381 = v3;
  if (v417[0].i64[0] != &v417[1])
  {
    if (v397 != v399)
    {
      free(v397);
      v13 = v417[0].i64[0];
    }

    v397 = v13;
    v398 = v417[0].i64[1];
    v417[0].i64[0] = v417[1].i64;
    v417[0].i32[3] = 0;
    goto LABEL_28;
  }

  v14 = v417[0].i32[2];
  v15 = v398;
  if (v398 >= v417[0].i32[2])
  {
    if (v417[0].i32[2])
    {
      memmove(v397, v417[0].i64[0], 4 * v417[0].u32[2]);
    }

    goto LABEL_27;
  }

  if (HIDWORD(v398) >= v417[0].i32[2])
  {
    if (v398)
    {
      memmove(v397, v417[0].i64[0], 4 * v398);
      goto LABEL_25;
    }
  }

  else
  {
    LODWORD(v398) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v397, v399, v417[0].u32[2], 4);
  }

  v15 = 0;
LABEL_25:
  if (v417[0].u32[2] != v15)
  {
    memcpy(&v397[4 * v15], (v417[0].i64[0] + 4 * v15), 4 * (v417[0].u32[2] - v15));
  }

LABEL_27:
  LODWORD(v398) = v14;
  v3 = v381;
LABEL_28:
  v417[0].i32[2] = 0;
  std::__tree<std::__value_type<llvm::StringRef,llvm::StringRef>,std::__map_value_compare<llvm::StringRef,std::__value_type<llvm::StringRef,llvm::StringRef>,std::less<llvm::StringRef>,true>,std::allocator<std::__value_type<llvm::StringRef,llvm::StringRef>>>::destroy(&v400, *(&v400 + 1));
  v16 = *(&v418 + 1);
  v400 = v418;
  v401 = v419;
  if (v419)
  {
    *(*(&v418 + 1) + 16) = &v400 + 8;
    *&v418 = &v418 + 8;
    *(&v418 + 1) = 0;
    *&v419 = 0;
    v16 = 0;
  }

  else
  {
    *&v400 = &v400 + 8;
  }

  std::__tree<std::__value_type<llvm::StringRef,llvm::StringRef>,std::__map_value_compare<llvm::StringRef,std::__value_type<llvm::StringRef,llvm::StringRef>,std::less<llvm::StringRef>,true>,std::allocator<std::__value_type<llvm::StringRef,llvm::StringRef>>>::destroy(&v418, v16);
  if (v417[0].i64[0] != &v417[1])
  {
    free(v417[0].i64[0]);
  }

  v17 = *v3;
  v18 = *v3 + 264;
  v19 = *(*v3 + 287);
  if (v19 < 0)
  {
    v18 = *(*v3 + 264);
  }

  if (v19 < 0)
  {
    v19 = *(*v3 + 272);
  }

  v402 = v18;
  v403 = v19;
  v404 = *(v17 + 288);
  v405 = *(v17 + 296);
  if (*(v17 + 298))
  {
    v20 = 0;
  }

  else
  {
    v20 = 2;
  }

  v406 = *(v17 + 300);
  v407 = v20;
  if ((*(v17 + 297) & 1) == 0)
  {
    v407 = v20 | 1;
  }

  v21 = *(v17 + 304);
  if (v21 != *(v17 + 312))
  {
    v24 = *(v21 + 24);
    v22 = v21 + 24;
    v23 = v24;
    v25 = *(v22 + 23);
    if (v25 >= 0)
    {
      v23 = v22;
    }

    v26 = *(v22 + 8);
    if (v25 >= 0)
    {
      v26 = v25;
    }

    *&v408 = v23;
    *(&v408 + 1) = v26;
  }

  v389 = 0;
  v390 = 0;
  v388 = &v389;
  v27 = *(v17 + 328);
  v28 = *(v17 + 336);
  if (v27 != v28)
  {
    do
    {
      v29 = *(v27 + 32);
      if (v29)
      {
        v30 = 0;
        v31 = *(v27 + 24);
        v32 = 24 * v29;
        do
        {
          v33 = *v31;
          v31 += 24;
          v34 = 1 << v33;
          if (v33 == 16)
          {
            v35 = 0;
          }

          else
          {
            v35 = v34;
          }

          v30 |= v35;
          v32 -= 24;
        }

        while (v32);
      }

      else
      {
        v30 = 0;
      }

      v417[0].i32[0] = v30;
      std::__tree<llvm::MachO::ArchitectureSet>::__emplace_unique_key_args<llvm::MachO::ArchitectureSet,llvm::MachO::ArchitectureSet>(&v388, v30);
      v27 += 160;
    }

    while (v27 != v28);
    v17 = *v3;
  }

  v36 = *(v17 + 352);
  v37 = *(v17 + 360);
  if (v36 != v37)
  {
    do
    {
      v38 = *(v36 + 32);
      if (v38)
      {
        v39 = 0;
        v40 = *(v36 + 24);
        v41 = 24 * v38;
        do
        {
          v42 = *v40;
          v40 += 24;
          v43 = 1 << v42;
          if (v42 == 16)
          {
            v44 = 0;
          }

          else
          {
            v44 = v43;
          }

          v39 |= v44;
          v41 -= 24;
        }

        while (v41);
      }

      else
      {
        v39 = 0;
      }

      v417[0].i32[0] = v39;
      std::__tree<llvm::MachO::ArchitectureSet>::__emplace_unique_key_args<llvm::MachO::ArchitectureSet,llvm::MachO::ArchitectureSet>(&v388, v39);
      v36 += 160;
    }

    while (v36 != v37);
    v17 = *v3;
  }

  v386 = 0;
  v387 = 0;
  v385 = &v386;
  llvm::MachO::SymbolSet::symbols(*(v17 + 448), v417);
  v430 = v417[0];
  v45 = v417[1].i64[0];
  for (i = v417[0].i64[0]; v430.i64[0] != v45; i = v430.i64[0])
  {
    v47 = *(i + 24);
    *&v384 = v47;
    v48 = *(v47 + 24);
    if (v48)
    {
      v49 = 0;
      v50 = *(v47 + 16);
      v51 = 24 * v48;
      do
      {
        v52 = *v50;
        v50 += 24;
        v53 = 1 << v52;
        if (v52 == 16)
        {
          v54 = 0;
        }

        else
        {
          v54 = v53;
        }

        v49 |= v54;
        v51 -= 24;
      }

      while (v51);
    }

    else
    {
      v49 = 0;
    }

    LODWORD(v383) = v49;
    *v415 = &v384;
    *(std::__tree<std::__value_type<llvm::MachO::Symbol const*,llvm::MachO::ArchitectureSet>,std::__map_value_compare<llvm::MachO::Symbol const*,std::__value_type<llvm::MachO::Symbol const*,llvm::MachO::ArchitectureSet>,std::less<llvm::MachO::Symbol const*>,true>,std::allocator<std::__value_type<llvm::MachO::Symbol const*,llvm::MachO::ArchitectureSet>>>::__emplace_unique_key_args<llvm::MachO::Symbol const*,std::piecewise_construct_t const&,std::tuple<llvm::MachO::Symbol const* const&>,std::tuple<>>(&v385, v47) + 10) = v49;
    std::__tree<llvm::MachO::ArchitectureSet>::__emplace_unique_key_args<llvm::MachO::ArchitectureSet,llvm::MachO::ArchitectureSet>(&v388, v49);
    v430.i64[0] += 32;
    llvm::DenseMapIterator<llvm::SymbolsMapKey,llvm::MachO::Symbol *,llvm::DenseMapInfo<llvm::SymbolsMapKey,void>,llvm::detail::DenseMapPair<llvm::SymbolsMapKey,llvm::MachO::Symbol *>,true>::AdvancePastEmptyBuckets(&v430);
  }

  v55 = v388;
  if (v388 != &v389)
  {
    while (1)
    {
      v56 = *(v55 + 7);
      LODWORD(v383) = v56;
      v429 = 0;
      v427 = 0u;
      v428 = 0u;
      v425 = 0u;
      v426 = 0u;
      v423 = 0u;
      v424 = 0u;
      v421 = 0u;
      v422 = 0u;
      v419 = 0u;
      v420 = 0u;
      v418 = 0u;
      memset(v417, 0, sizeof(v417));
      llvm::MachO::ArchitectureSet::operator std::vector<llvm::MachO::Architecture>(&v383, &v430);
      if (v417[0].i64[0])
      {
        v417[0].i64[1] = v417[0].i64[0];
        operator delete(v417[0].i64[0]);
      }

      v417[0] = v430;
      v417[1].i64[0] = v431.i64[0];
      v57 = *v381;
      v58 = *(*v381 + 328);
      v59 = *(*v381 + 336);
      if (v58 != v59)
      {
        do
        {
          v60 = *(v58 + 8);
          if (v60)
          {
            v61 = 0;
            v62 = v58[3];
            v63 = 24 * v60;
            do
            {
              v64 = *v62;
              v62 += 24;
              v65 = 1 << v64;
              if (v64 == 16)
              {
                v66 = 0;
              }

              else
              {
                v66 = v65;
              }

              v61 |= v66;
              v63 -= 24;
            }

            while (v63);
          }

          else
          {
            v61 = 0;
          }

          if (v61 == v56)
          {
            v67 = *(v58 + 23);
            if (v67 >= 0)
            {
              v68 = v58;
            }

            else
            {
              v68 = *v58;
            }

            if (v67 >= 0)
            {
              v69 = *(v58 + 23);
            }

            else
            {
              v69 = v58[1];
            }

            v70 = v418;
            if (v418 >= *(&v418 + 1))
            {
              v72 = (v418 - v417[1].i64[1]) >> 4;
              v73 = v72 + 1;
              if ((v72 + 1) >> 60)
              {
LABEL_641:
                std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
              }

              v74 = *(&v418 + 1) - v417[1].i64[1];
              if ((*(&v418 + 1) - v417[1].i64[1]) >> 3 > v73)
              {
                v73 = v74 >> 3;
              }

              if (v74 >= 0x7FFFFFFFFFFFFFF0)
              {
                v75 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v75 = v73;
              }

              if (v75)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<FlowStringRef>>(v75);
              }

              v76 = (16 * v72);
              *v76 = v68;
              v76[1] = v69;
              v71 = 16 * v72 + 16;
              v77 = (16 * v72 - (v418 - v417[1].i64[1]));
              memcpy(v77, v417[1].i64[1], v418 - v417[1].i64[1]);
              v78 = v417[1].i64[1];
              v417[1].i64[1] = v77;
              v418 = v71;
              if (v78)
              {
                operator delete(v78);
              }
            }

            else
            {
              *v418 = v68;
              *(v70 + 8) = v69;
              v71 = v70 + 16;
            }

            *&v418 = v71;
          }

          v58 += 20;
        }

        while (v58 != v59);
        v57 = *v381;
      }

      v79 = *(v57 + 352);
      v80 = *(v57 + 360);
      while (v79 != v80)
      {
        v81 = *(v79 + 8);
        if (v81)
        {
          v82 = 0;
          v83 = v79[3];
          v84 = 24 * v81;
          do
          {
            v85 = *v83;
            v83 += 24;
            v86 = 1 << v85;
            if (v85 == 16)
            {
              v87 = 0;
            }

            else
            {
              v87 = v86;
            }

            v82 |= v87;
            v84 -= 24;
          }

          while (v84);
        }

        else
        {
          v82 = 0;
        }

        if (v82 == v56)
        {
          v88 = *(v79 + 23);
          if (v88 >= 0)
          {
            v89 = v79;
          }

          else
          {
            v89 = *v79;
          }

          if (v88 >= 0)
          {
            v90 = *(v79 + 23);
          }

          else
          {
            v90 = v79[1];
          }

          v91 = *(&v419 + 1);
          if (*(&v419 + 1) >= v420)
          {
            v93 = (*(&v419 + 1) - v419) >> 4;
            v94 = v93 + 1;
            if ((v93 + 1) >> 60)
            {
              goto LABEL_641;
            }

            v95 = v420 - v419;
            if ((v420 - v419) >> 3 > v94)
            {
              v94 = v95 >> 3;
            }

            if (v95 >= 0x7FFFFFFFFFFFFFF0)
            {
              v96 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v96 = v94;
            }

            if (v96)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<FlowStringRef>>(v96);
            }

            v97 = (16 * v93);
            *v97 = v89;
            v97[1] = v90;
            v92 = 16 * v93 + 16;
            v98 = (16 * v93 - (*(&v419 + 1) - v419));
            memcpy(v98, v419, *(&v419 + 1) - v419);
            v99 = v419;
            *&v419 = v98;
            *(&v419 + 1) = v92;
            *&v420 = 0;
            if (v99)
            {
              operator delete(v99);
            }
          }

          else
          {
            **(&v419 + 1) = v89;
            *(v91 + 8) = v90;
            v92 = v91 + 16;
          }

          *(&v419 + 1) = v92;
        }

        v79 += 20;
      }

      v100 = v385;
      if (v385 != &v386)
      {
        break;
      }

LABEL_311:
      v193 = 126 - 2 * __clz((v421 - *(&v420 + 1)) >> 4);
      if (v421 == *(&v420 + 1))
      {
        v194 = 0;
      }

      else
      {
        v194 = v193;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,FlowStringRef *,false>(*(&v420 + 1), v421, v194, 1);
      v195 = 126 - 2 * __clz((*(&v422 + 1) - v422) >> 4);
      if (*(&v422 + 1) == v422)
      {
        v196 = 0;
      }

      else
      {
        v196 = v195;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,FlowStringRef *,false>(v422, *(&v422 + 1), v196, 1);
      v197 = 126 - 2 * __clz((v424 - *(&v423 + 1)) >> 4);
      if (v424 == *(&v423 + 1))
      {
        v198 = 0;
      }

      else
      {
        v198 = v197;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,FlowStringRef *,false>(*(&v423 + 1), v424, v198, 1);
      v199 = 126 - 2 * __clz((*(&v425 + 1) - v425) >> 4);
      if (*(&v425 + 1) == v425)
      {
        v200 = 0;
      }

      else
      {
        v200 = v199;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,FlowStringRef *,false>(v425, *(&v425 + 1), v200, 1);
      v201 = 126 - 2 * __clz((v427 - *(&v426 + 1)) >> 4);
      if (v427 == *(&v426 + 1))
      {
        v202 = 0;
      }

      else
      {
        v202 = v201;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,FlowStringRef *,false>(*(&v426 + 1), v427, v202, 1);
      v203 = 126 - 2 * __clz((*(&v428 + 1) - v428) >> 4);
      if (*(&v428 + 1) == v428)
      {
        v204 = 0;
      }

      else
      {
        v204 = v203;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,FlowStringRef *,false>(v428, *(&v428 + 1), v204, 1);
      v205 = *(&v409 + 1);
      if (*(&v409 + 1) >= v410)
      {
        v207 = 0x84BDA12F684BDA13 * ((*(&v409 + 1) - v409) >> 3);
        v208 = v207 + 1;
        if ((v207 + 1) > 0x12F684BDA12F684)
        {
          std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
        }

        if (0x97B425ED097B426 * ((v410 - v409) >> 3) > v208)
        {
          v208 = 0x97B425ED097B426 * ((v410 - v409) >> 3);
        }

        if (0x84BDA12F684BDA13 * ((v410 - v409) >> 3) >= 0x97B425ED097B42)
        {
          v209 = 0x12F684BDA12F684;
        }

        else
        {
          v209 = v208;
        }

        v431.i64[0] += 216;
        v206 = *(&v409 + 1);
      }

      else
      {
        v206 = v205 + 216;
      }

      *(&v409 + 1) = v206;
      v210 = v55[1];
      if (v210)
      {
        do
        {
          v211 = v210;
          v210 = *v210;
        }

        while (v210);
      }

      else
      {
        do
        {
          v211 = v55[2];
          v192 = *v211 == v55;
          v55 = v211;
        }

        while (!v192);
      }

      v55 = v211;
      if (v211 == &v389)
      {
        goto LABEL_344;
      }
    }

    while (1)
    {
      if (*(v100 + 10) == v56)
      {
        v101 = v100[4];
        v102 = *(v101 + 152);
        if (v102 > 1)
        {
          if (v102 == 2)
          {
            if (*(v382 + 48) == 32)
            {
              v112 = *v101;
              v113 = v424;
              if (v424 >= *(&v424 + 1))
              {
                v139 = (v424 - *(&v423 + 1)) >> 4;
                if ((v139 + 1) >> 60)
                {
                  goto LABEL_641;
                }

                v140 = (*(&v424 + 1) - *(&v423 + 1)) >> 3;
                if (v140 <= v139 + 1)
                {
                  v140 = v139 + 1;
                }

                if (*(&v424 + 1) - *(&v423 + 1) >= 0x7FFFFFFFFFFFFFF0uLL)
                {
                  v141 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v141 = v140;
                }

                if (v141)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<FlowStringRef>>(v141);
                }

                *(16 * v139) = v112;
                v114 = 16 * v139 + 16;
                v179 = (16 * v139 - (v424 - *(&v423 + 1)));
                memcpy(v179, *(&v423 + 1), v424 - *(&v423 + 1));
                v180 = *(&v423 + 1);
                *(&v423 + 1) = v179;
                v424 = v114;
                if (v180)
                {
                  operator delete(v180);
                }
              }

              else
              {
                *v424 = v112;
                v114 = v113 + 16;
              }

              *&v424 = v114;
              goto LABEL_305;
            }

            v384 = *v101;
            llvm::StringRef::str(&v384, v415);
            v127 = std::string::insert(v415, 0, "_OBJC_EHTYPE_$_");
            v431.i64[0] = v127->__r_.__value_.__r.__words[2];
            v430 = *&v127->__r_.__value_.__l.__data_;
            v127->__r_.__value_.__l.__size_ = 0;
            v127->__r_.__value_.__r.__words[2] = 0;
            v127->__r_.__value_.__r.__words[0] = 0;
            v116 = v431.i8[7];
            if (v431.i8[7] >= 0)
            {
              v128 = v431.u8[7];
            }

            else
            {
              v128 = v430.u64[1];
            }

            if (v128)
            {
              if (v431.i8[7] >= 0)
              {
                v129 = &v430;
              }

              else
              {
                v129 = v430.i64[0];
              }

              v130 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(&v391, v128, 0);
              memcpy(v130, v129, v128);
            }

            else
            {
              v130 = 0;
            }

            v157 = v421;
            if (v421 >= *(&v421 + 1))
            {
              v159 = (v421 - *(&v420 + 1)) >> 4;
              v160 = v159 + 1;
              if ((v159 + 1) >> 60)
              {
                goto LABEL_641;
              }

              v161 = *(&v421 + 1) - *(&v420 + 1);
              if ((*(&v421 + 1) - *(&v420 + 1)) >> 3 > v160)
              {
                v160 = v161 >> 3;
              }

              if (v161 >= 0x7FFFFFFFFFFFFFF0)
              {
                v162 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v162 = v160;
              }

              if (v162)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<FlowStringRef>>(v162);
              }

              v183 = (16 * v159);
              *v183 = v130;
              v183[1] = v128;
              v158 = 16 * v159 + 16;
              v184 = (16 * v159 - (v421 - *(&v420 + 1)));
              memcpy(v184, *(&v420 + 1), v421 - *(&v420 + 1));
              v185 = *(&v420 + 1);
              *(&v420 + 1) = v184;
              v421 = v158;
              if (v185)
              {
                operator delete(v185);
              }
            }

            else
            {
              *v421 = v130;
              *(v157 + 8) = v128;
              v158 = v157 + 16;
            }

            *&v421 = v158;
LABEL_295:
            if (v116 < 0)
            {
              operator delete(v430.i64[0]);
            }

            if ((v415[23] & 0x80000000) != 0)
            {
              operator delete(*v415);
            }

            goto LABEL_305;
          }

          if (v102 == 3)
          {
            if (*(v382 + 48) == 32)
            {
              v106 = *v101;
              v107 = *(&v425 + 1);
              if (*(&v425 + 1) >= v426)
              {
                v134 = (*(&v425 + 1) - v425) >> 4;
                if ((v134 + 1) >> 60)
                {
                  goto LABEL_641;
                }

                v135 = (v426 - v425) >> 3;
                if (v135 <= v134 + 1)
                {
                  v135 = v134 + 1;
                }

                if (v426 - v425 >= 0x7FFFFFFFFFFFFFF0uLL)
                {
                  v136 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v136 = v135;
                }

                if (v136)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<FlowStringRef>>(v136);
                }

                *(16 * v134) = v106;
                v108 = 16 * v134 + 16;
                v171 = (16 * v134 - (*(&v425 + 1) - v425));
                memcpy(v171, v425, *(&v425 + 1) - v425);
                v172 = v425;
                *&v425 = v171;
                *(&v425 + 1) = v108;
                *&v426 = 0;
                if (v172)
                {
                  operator delete(v172);
                }
              }

              else
              {
                **(&v425 + 1) = v106;
                v108 = v107 + 16;
              }

              *(&v425 + 1) = v108;
              goto LABEL_305;
            }

            v384 = *v101;
            llvm::StringRef::str(&v384, v415);
            v120 = std::string::insert(v415, 0, "_");
            v431.i64[0] = v120->__r_.__value_.__r.__words[2];
            v430 = *&v120->__r_.__value_.__l.__data_;
            v120->__r_.__value_.__l.__size_ = 0;
            v120->__r_.__value_.__r.__words[2] = 0;
            v120->__r_.__value_.__r.__words[0] = 0;
            v116 = v431.i8[7];
            if (v431.i8[7] >= 0)
            {
              v121 = v431.u8[7];
            }

            else
            {
              v121 = v430.u64[1];
            }

            if (v121)
            {
              if (v431.i8[7] >= 0)
              {
                v122 = &v430;
              }

              else
              {
                v122 = v430.i64[0];
              }

              v123 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(&v391, v121, 0);
              memcpy(v123, v122, v121);
            }

            else
            {
              v123 = 0;
            }

            v151 = *(&v425 + 1);
            if (*(&v425 + 1) >= v426)
            {
              v153 = (*(&v425 + 1) - v425) >> 4;
              v154 = v153 + 1;
              if ((v153 + 1) >> 60)
              {
                goto LABEL_641;
              }

              v155 = v426 - v425;
              if ((v426 - v425) >> 3 > v154)
              {
                v154 = v155 >> 3;
              }

              if (v155 >= 0x7FFFFFFFFFFFFFF0)
              {
                v156 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v156 = v154;
              }

              if (v156)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<FlowStringRef>>(v156);
              }

              v176 = (16 * v153);
              *v176 = v123;
              v176[1] = v121;
              v152 = 16 * v153 + 16;
              v177 = (16 * v153 - (*(&v425 + 1) - v425));
              memcpy(v177, v425, *(&v425 + 1) - v425);
              v178 = v425;
              *&v425 = v177;
              *(&v425 + 1) = v152;
              *&v426 = 0;
              if (v178)
              {
                operator delete(v178);
              }
            }

            else
            {
              **(&v425 + 1) = v123;
              *(v151 + 8) = v121;
              v152 = v151 + 16;
            }

            *(&v425 + 1) = v152;
            goto LABEL_295;
          }
        }

        else
        {
          if (!*(v101 + 152))
          {
            if ((*(v101 + 153) & 2) != 0)
            {
              v124 = *v101;
              v125 = v427;
              if (v427 >= *(&v427 + 1))
              {
                v142 = (v427 - *(&v426 + 1)) >> 4;
                if ((v142 + 1) >> 60)
                {
                  goto LABEL_641;
                }

                v143 = (*(&v427 + 1) - *(&v426 + 1)) >> 3;
                if (v143 <= v142 + 1)
                {
                  v143 = v142 + 1;
                }

                if (*(&v427 + 1) - *(&v426 + 1) >= 0x7FFFFFFFFFFFFFF0uLL)
                {
                  v144 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v144 = v143;
                }

                if (v144)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<FlowStringRef>>(v144);
                }

                *(16 * v142) = v124;
                v126 = 16 * v142 + 16;
                v181 = (16 * v142 - (v427 - *(&v426 + 1)));
                memcpy(v181, *(&v426 + 1), v427 - *(&v426 + 1));
                v182 = *(&v426 + 1);
                *(&v426 + 1) = v181;
                v427 = v126;
                if (v182)
                {
                  operator delete(v182);
                }
              }

              else
              {
                *v427 = v124;
                v126 = v125 + 16;
              }

              *&v427 = v126;
            }

            else
            {
              v109 = *v101;
              if (*(v101 + 153))
              {
                v137 = *(&v428 + 1);
                if (*(&v428 + 1) >= v429)
                {
                  v166 = (*(&v428 + 1) - v428) >> 4;
                  if ((v166 + 1) >> 60)
                  {
                    goto LABEL_641;
                  }

                  v167 = (v429 - v428) >> 3;
                  if (v167 <= v166 + 1)
                  {
                    v167 = v166 + 1;
                  }

                  if (v429 - v428 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v168 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v168 = v167;
                  }

                  if (v168)
                  {
                    std::__allocate_at_least[abi:nn200100]<std::allocator<FlowStringRef>>(v168);
                  }

                  *(16 * v166) = v109;
                  v138 = 16 * v166 + 16;
                  v188 = (16 * v166 - (*(&v428 + 1) - v428));
                  memcpy(v188, v428, *(&v428 + 1) - v428);
                  v189 = v428;
                  *&v428 = v188;
                  *(&v428 + 1) = v138;
                  v429 = 0;
                  if (v189)
                  {
                    operator delete(v189);
                  }
                }

                else
                {
                  **(&v428 + 1) = v109;
                  v138 = v137 + 16;
                }

                *(&v428 + 1) = v138;
              }

              else
              {
                v110 = v421;
                if (v421 >= *(&v421 + 1))
                {
                  v163 = (v421 - *(&v420 + 1)) >> 4;
                  if ((v163 + 1) >> 60)
                  {
                    goto LABEL_641;
                  }

                  v164 = (*(&v421 + 1) - *(&v420 + 1)) >> 3;
                  if (v164 <= v163 + 1)
                  {
                    v164 = v163 + 1;
                  }

                  if (*(&v421 + 1) - *(&v420 + 1) >= 0x7FFFFFFFFFFFFFF0uLL)
                  {
                    v165 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v165 = v164;
                  }

                  if (v165)
                  {
                    std::__allocate_at_least[abi:nn200100]<std::allocator<FlowStringRef>>(v165);
                  }

                  *(16 * v163) = v109;
                  v111 = 16 * v163 + 16;
                  v186 = (16 * v163 - (v421 - *(&v420 + 1)));
                  memcpy(v186, *(&v420 + 1), v421 - *(&v420 + 1));
                  v187 = *(&v420 + 1);
                  *(&v420 + 1) = v186;
                  v421 = v111;
                  if (v187)
                  {
                    operator delete(v187);
                  }
                }

                else
                {
                  *v421 = v109;
                  v111 = v110 + 16;
                }

                *&v421 = v111;
              }
            }

            goto LABEL_305;
          }

          if (v102 == 1)
          {
            if (*(v382 + 48) == 32)
            {
              v103 = *v101;
              v104 = *(&v422 + 1);
              if (*(&v422 + 1) >= v423)
              {
                v131 = (*(&v422 + 1) - v422) >> 4;
                if ((v131 + 1) >> 60)
                {
                  goto LABEL_641;
                }

                v132 = (v423 - v422) >> 3;
                if (v132 <= v131 + 1)
                {
                  v132 = v131 + 1;
                }

                if (v423 - v422 >= 0x7FFFFFFFFFFFFFF0uLL)
                {
                  v133 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v133 = v132;
                }

                if (v133)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<FlowStringRef>>(v133);
                }

                *(16 * v131) = v103;
                v105 = 16 * v131 + 16;
                v169 = (16 * v131 - (*(&v422 + 1) - v422));
                memcpy(v169, v422, *(&v422 + 1) - v422);
                v170 = v422;
                *&v422 = v169;
                *(&v422 + 1) = v105;
                *&v423 = 0;
                if (v170)
                {
                  operator delete(v170);
                }
              }

              else
              {
                **(&v422 + 1) = v103;
                v105 = v104 + 16;
              }

              *(&v422 + 1) = v105;
              goto LABEL_305;
            }

            v384 = *v101;
            llvm::StringRef::str(&v384, v415);
            v115 = std::string::insert(v415, 0, "_");
            v431.i64[0] = v115->__r_.__value_.__r.__words[2];
            v430 = *&v115->__r_.__value_.__l.__data_;
            v115->__r_.__value_.__l.__size_ = 0;
            v115->__r_.__value_.__r.__words[2] = 0;
            v115->__r_.__value_.__r.__words[0] = 0;
            v116 = v431.i8[7];
            if (v431.i8[7] >= 0)
            {
              v117 = v431.u8[7];
            }

            else
            {
              v117 = v430.u64[1];
            }

            if (v117)
            {
              if (v431.i8[7] >= 0)
              {
                v118 = &v430;
              }

              else
              {
                v118 = v430.i64[0];
              }

              v119 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(&v391, v117, 0);
              memcpy(v119, v118, v117);
            }

            else
            {
              v119 = 0;
            }

            v145 = *(&v422 + 1);
            if (*(&v422 + 1) >= v423)
            {
              v147 = (*(&v422 + 1) - v422) >> 4;
              v148 = v147 + 1;
              if ((v147 + 1) >> 60)
              {
                goto LABEL_641;
              }

              v149 = v423 - v422;
              if ((v423 - v422) >> 3 > v148)
              {
                v148 = v149 >> 3;
              }

              if (v149 >= 0x7FFFFFFFFFFFFFF0)
              {
                v150 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v150 = v148;
              }

              if (v150)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<FlowStringRef>>(v150);
              }

              v173 = (16 * v147);
              *v173 = v119;
              v173[1] = v117;
              v146 = 16 * v147 + 16;
              v174 = (16 * v147 - (*(&v422 + 1) - v422));
              memcpy(v174, v422, *(&v422 + 1) - v422);
              v175 = v422;
              *&v422 = v174;
              *(&v422 + 1) = v146;
              *&v423 = 0;
              if (v175)
              {
                operator delete(v175);
              }
            }

            else
            {
              **(&v422 + 1) = v119;
              *(v145 + 8) = v117;
              v146 = v145 + 16;
            }

            *(&v422 + 1) = v146;
            goto LABEL_295;
          }
        }
      }

LABEL_305:
      v190 = v100[1];
      if (v190)
      {
        do
        {
          v191 = v190;
          v190 = *v190;
        }

        while (v190);
      }

      else
      {
        do
        {
          v191 = v100[2];
          v192 = *v191 == v100;
          v100 = v191;
        }

        while (!v192);
      }

      v100 = v191;
      if (v191 == &v386)
      {
        goto LABEL_311;
      }
    }
  }

LABEL_344:
  std::__tree<std::__value_type<llvm::orc::ExecutorAddr,unsigned long long>,std::__map_value_compare<llvm::orc::ExecutorAddr,std::__value_type<llvm::orc::ExecutorAddr,unsigned long long>,std::less<llvm::orc::ExecutorAddr>,true>,std::allocator<std::__value_type<llvm::orc::ExecutorAddr,unsigned long long>>>::destroy(v389);
  v389 = 0;
  v390 = 0;
  v388 = &v389;
  std::__tree<std::__value_type<llvm::orc::ExecutorAddr,unsigned long long>,std::__map_value_compare<llvm::orc::ExecutorAddr,std::__value_type<llvm::orc::ExecutorAddr,unsigned long long>,std::less<llvm::orc::ExecutorAddr>,true>,std::allocator<std::__value_type<llvm::orc::ExecutorAddr,unsigned long long>>>::destroy(v386);
  v386 = 0;
  v387 = 0;
  v385 = &v386;
  llvm::MachO::SymbolSet::undefineds(*(*v381 + 448), v417);
  v430 = v417[0];
  v431 = v417[1];
  std::__function::__value_func<BOOL ()(llvm::MachO::Symbol const*)>::__value_func[abi:nn200100](&v432, &v418);
  *v415 = v420;
  *&v415[16] = v421;
  std::__function::__value_func<BOOL ()(llvm::MachO::Symbol const*)>::__value_func[abi:nn200100](v416, &v422);
  for (j = v430.i64[0]; v430.i64[0] != *v415; j = v430.i64[0])
  {
    v213 = *(j + 24);
    v383 = v213;
    v214 = *(v213 + 24);
    if (v214)
    {
      v215 = 0;
      v216 = *(v213 + 16);
      v217 = 24 * v214;
      do
      {
        v218 = *v216;
        v216 += 24;
        v219 = 1 << v218;
        if (v218 == 16)
        {
          v220 = 0;
        }

        else
        {
          v220 = v219;
        }

        v215 |= v220;
        v217 -= 24;
      }

      while (v217);
    }

    else
    {
      v215 = 0;
    }

    *&v384 = &v383;
    *(std::__tree<std::__value_type<llvm::MachO::Symbol const*,llvm::MachO::ArchitectureSet>,std::__map_value_compare<llvm::MachO::Symbol const*,std::__value_type<llvm::MachO::Symbol const*,llvm::MachO::ArchitectureSet>,std::less<llvm::MachO::Symbol const*>,true>,std::allocator<std::__value_type<llvm::MachO::Symbol const*,llvm::MachO::ArchitectureSet>>>::__emplace_unique_key_args<llvm::MachO::Symbol const*,std::piecewise_construct_t const&,std::tuple<llvm::MachO::Symbol const* const&>,std::tuple<>>(&v385, v213) + 10) = v215;
    std::__tree<llvm::MachO::ArchitectureSet>::__emplace_unique_key_args<llvm::MachO::ArchitectureSet,llvm::MachO::ArchitectureSet>(&v388, v215);
    v430.i64[0] += 32;
    llvm::DenseMapIterator<llvm::SymbolsMapKey,llvm::MachO::Symbol *,llvm::DenseMapInfo<llvm::SymbolsMapKey,void>,llvm::detail::DenseMapPair<llvm::SymbolsMapKey,llvm::MachO::Symbol *>,true>::AdvancePastEmptyBuckets(&v430);
    llvm::filter_iterator_base<llvm::MachO::SymbolSet::const_symbol_iterator,std::function<BOOL ()(llvm::MachO::Symbol const*)>,std::forward_iterator_tag>::findNextValid(&v430);
  }

  std::__function::__value_func<BOOL ()(llvm::MachO::Symbol const*)>::~__value_func[abi:nn200100](v416);
  std::__function::__value_func<BOOL ()(llvm::MachO::Symbol const*)>::~__value_func[abi:nn200100](&v432);
  std::__function::__value_func<BOOL ()(llvm::MachO::Symbol const*)>::~__value_func[abi:nn200100](&v422);
  std::__function::__value_func<BOOL ()(llvm::MachO::Symbol const*)>::~__value_func[abi:nn200100](&v418);
  v221 = v388;
  if (v388 != &v389)
  {
    while (1)
    {
      v222 = *(v221 + 7);
      LODWORD(v383) = v222;
      v423 = 0u;
      v424 = 0u;
      v421 = 0u;
      v422 = 0u;
      v419 = 0u;
      v420 = 0u;
      v418 = 0u;
      memset(v417, 0, sizeof(v417));
      llvm::MachO::ArchitectureSet::operator std::vector<llvm::MachO::Architecture>(&v383, &v430);
      if (v417[0].i64[0])
      {
        v417[0].i64[1] = v417[0].i64[0];
        operator delete(v417[0].i64[0]);
      }

      v417[0] = v430;
      v417[1].i64[0] = v431.i64[0];
      v223 = v385;
      if (v385 != &v386)
      {
        break;
      }

LABEL_511:
      v309 = 126 - 2 * __clz((v418 - v417[1].i64[1]) >> 4);
      if (v418 == v417[1].i64[1])
      {
        v310 = 0;
      }

      else
      {
        v310 = v309;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,FlowStringRef *,false>(v417[1].i64[1], v418, v310, 1);
      v311 = 126 - 2 * __clz((*(&v419 + 1) - v419) >> 4);
      if (*(&v419 + 1) == v419)
      {
        v312 = 0;
      }

      else
      {
        v312 = v311;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,FlowStringRef *,false>(v419, *(&v419 + 1), v312, 1);
      v313 = 126 - 2 * __clz((v421 - *(&v420 + 1)) >> 4);
      if (v421 == *(&v420 + 1))
      {
        v314 = 0;
      }

      else
      {
        v314 = v313;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,FlowStringRef *,false>(*(&v420 + 1), v421, v314, 1);
      v315 = 126 - 2 * __clz((*(&v422 + 1) - v422) >> 4);
      if (*(&v422 + 1) == v422)
      {
        v316 = 0;
      }

      else
      {
        v316 = v315;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,FlowStringRef *,false>(v422, *(&v422 + 1), v316, 1);
      v317 = 126 - 2 * __clz((v424 - *(&v423 + 1)) >> 4);
      if (v424 == *(&v423 + 1))
      {
        v318 = 0;
      }

      else
      {
        v318 = v317;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,FlowStringRef *,false>(*(&v423 + 1), v424, v318, 1);
      v319 = v411;
      if (v411 >= *(&v411 + 1))
      {
        v321 = 0x8E38E38E38E38E39 * ((v411 - *(&v410 + 1)) >> 4);
        v322 = v321 + 1;
        if ((v321 + 1) > 0x1C71C71C71C71C7)
        {
          std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
        }

        if (0x1C71C71C71C71C72 * ((*(&v411 + 1) - *(&v410 + 1)) >> 4) > v322)
        {
          v322 = 0x1C71C71C71C71C72 * ((*(&v411 + 1) - *(&v410 + 1)) >> 4);
        }

        if (0x8E38E38E38E38E39 * ((*(&v411 + 1) - *(&v410 + 1)) >> 4) >= 0xE38E38E38E38E3)
        {
          v323 = 0x1C71C71C71C71C7;
        }

        else
        {
          v323 = v322;
        }

        v431.i64[0] += 144;
        v320 = v411;
      }

      else
      {
        v320 = v319 + 144;
      }

      *&v411 = v320;
      if (*(&v423 + 1))
      {
        *&v424 = *(&v423 + 1);
        operator delete(*(&v423 + 1));
      }

      if (v422)
      {
        *(&v422 + 1) = v422;
        operator delete(v422);
      }

      if (*(&v420 + 1))
      {
        *&v421 = *(&v420 + 1);
        operator delete(*(&v420 + 1));
      }

      if (v419)
      {
        *(&v419 + 1) = v419;
        operator delete(v419);
      }

      if (v417[1].i64[1])
      {
        *&v418 = v417[1].i64[1];
        operator delete(v417[1].i64[1]);
      }

      if (v417[0].i64[0])
      {
        v417[0].i64[1] = v417[0].i64[0];
        operator delete(v417[0].i64[0]);
      }

      v324 = v221[1];
      if (v324)
      {
        do
        {
          v325 = v324;
          v324 = *v324;
        }

        while (v324);
      }

      else
      {
        do
        {
          v325 = v221[2];
          v192 = *v325 == v221;
          v221 = v325;
        }

        while (!v192);
      }

      v221 = v325;
      if (v325 == &v389)
      {
        goto LABEL_553;
      }
    }

    while (1)
    {
      if (*(v223 + 10) == v222)
      {
        v224 = v223[4];
        v225 = *(v224 + 152);
        if (v225 > 1)
        {
          if (v225 == 2)
          {
            if (*(v382 + 48) == 32)
            {
              v235 = *v224;
              v236 = v421;
              if (v421 >= *(&v421 + 1))
              {
                v264 = (v421 - *(&v420 + 1)) >> 4;
                if ((v264 + 1) >> 60)
                {
                  goto LABEL_641;
                }

                v265 = (*(&v421 + 1) - *(&v420 + 1)) >> 3;
                if (v265 <= v264 + 1)
                {
                  v265 = v264 + 1;
                }

                if (*(&v421 + 1) - *(&v420 + 1) >= 0x7FFFFFFFFFFFFFF0uLL)
                {
                  v266 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v266 = v265;
                }

                if (v266)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<FlowStringRef>>(v266);
                }

                *(16 * v264) = v235;
                v237 = 16 * v264 + 16;
                v300 = (16 * v264 - (v421 - *(&v420 + 1)));
                memcpy(v300, *(&v420 + 1), v421 - *(&v420 + 1));
                v301 = *(&v420 + 1);
                *(&v420 + 1) = v300;
                v421 = v237;
                if (v301)
                {
                  operator delete(v301);
                }
              }

              else
              {
                *v421 = v235;
                v237 = v236 + 16;
              }

              *&v421 = v237;
              goto LABEL_500;
            }

            v384 = *v224;
            llvm::StringRef::str(&v384, v415);
            v250 = std::string::insert(v415, 0, "_OBJC_EHTYPE_$_");
            v431.i64[0] = v250->__r_.__value_.__r.__words[2];
            v430 = *&v250->__r_.__value_.__l.__data_;
            v250->__r_.__value_.__l.__size_ = 0;
            v250->__r_.__value_.__r.__words[2] = 0;
            v250->__r_.__value_.__r.__words[0] = 0;
            v251 = v431.i8[7];
            if (v431.i8[7] >= 0)
            {
              v252 = v431.u8[7];
            }

            else
            {
              v252 = v430.u64[1];
            }

            if (v252)
            {
              if (v431.i8[7] >= 0)
              {
                v253 = &v430;
              }

              else
              {
                v253 = v430.i64[0];
              }

              v254 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(&v391, v252, 0);
              memcpy(v254, v253, v252);
            }

            else
            {
              v254 = 0;
            }

            v282 = v418;
            if (v418 >= *(&v418 + 1))
            {
              v284 = (v418 - v417[1].i64[1]) >> 4;
              v285 = v284 + 1;
              if ((v284 + 1) >> 60)
              {
                goto LABEL_641;
              }

              v286 = *(&v418 + 1) - v417[1].i64[1];
              if ((*(&v418 + 1) - v417[1].i64[1]) >> 3 > v285)
              {
                v285 = v286 >> 3;
              }

              if (v286 >= 0x7FFFFFFFFFFFFFF0)
              {
                v287 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v287 = v285;
              }

              if (v287)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<FlowStringRef>>(v287);
              }

              v306 = (16 * v284);
              *v306 = v254;
              v306[1] = v252;
              v283 = 16 * v284 + 16;
              v307 = (16 * v284 - (v418 - v417[1].i64[1]));
              memcpy(v307, v417[1].i64[1], v418 - v417[1].i64[1]);
              v308 = v417[1].i64[1];
              v417[1].i64[1] = v307;
              v418 = v283;
              if (v308)
              {
                operator delete(v308);
              }
            }

            else
            {
              *v418 = v254;
              *(v282 + 8) = v252;
              v283 = v282 + 16;
            }

            *&v418 = v283;
            if (v251 < 0)
            {
              goto LABEL_484;
            }

            goto LABEL_485;
          }

          if (v225 == 3)
          {
            if (*(v382 + 48) == 32)
            {
              v229 = *v224;
              v230 = *(&v422 + 1);
              if (*(&v422 + 1) >= v423)
              {
                v258 = (*(&v422 + 1) - v422) >> 4;
                if ((v258 + 1) >> 60)
                {
                  goto LABEL_641;
                }

                v259 = (v423 - v422) >> 3;
                if (v259 <= v258 + 1)
                {
                  v259 = v258 + 1;
                }

                if (v423 - v422 >= 0x7FFFFFFFFFFFFFF0uLL)
                {
                  v260 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v260 = v259;
                }

                if (v260)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<FlowStringRef>>(v260);
                }

                *(16 * v258) = v229;
                v231 = 16 * v258 + 16;
                v290 = (16 * v258 - (*(&v422 + 1) - v422));
                memcpy(v290, v422, *(&v422 + 1) - v422);
                v291 = v422;
                *&v422 = v290;
                *(&v422 + 1) = v231;
                *&v423 = 0;
                if (v291)
                {
                  operator delete(v291);
                }
              }

              else
              {
                **(&v422 + 1) = v229;
                v231 = v230 + 16;
              }

              *(&v422 + 1) = v231;
              goto LABEL_500;
            }

            v384 = *v224;
            llvm::StringRef::str(&v384, v415);
            v243 = std::string::insert(v415, 0, "_");
            v431.i64[0] = v243->__r_.__value_.__r.__words[2];
            v430 = *&v243->__r_.__value_.__l.__data_;
            v243->__r_.__value_.__l.__size_ = 0;
            v243->__r_.__value_.__r.__words[2] = 0;
            v243->__r_.__value_.__r.__words[0] = 0;
            v244 = v431.i8[7];
            if (v431.i8[7] >= 0)
            {
              v245 = v431.u8[7];
            }

            else
            {
              v245 = v430.u64[1];
            }

            if (v245)
            {
              if (v431.i8[7] >= 0)
              {
                v246 = &v430;
              }

              else
              {
                v246 = v430.i64[0];
              }

              v247 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(&v391, v245, 0);
              memcpy(v247, v246, v245);
            }

            else
            {
              v247 = 0;
            }

            v276 = *(&v422 + 1);
            if (*(&v422 + 1) >= v423)
            {
              v278 = (*(&v422 + 1) - v422) >> 4;
              v279 = v278 + 1;
              if ((v278 + 1) >> 60)
              {
                goto LABEL_641;
              }

              v280 = v423 - v422;
              if ((v423 - v422) >> 3 > v279)
              {
                v279 = v280 >> 3;
              }

              if (v280 >= 0x7FFFFFFFFFFFFFF0)
              {
                v281 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v281 = v279;
              }

              if (v281)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<FlowStringRef>>(v281);
              }

              v295 = (16 * v278);
              *v295 = v247;
              v295[1] = v245;
              v277 = 16 * v278 + 16;
              v296 = (16 * v278 - (*(&v422 + 1) - v422));
              memcpy(v296, v422, *(&v422 + 1) - v422);
              v297 = v422;
              *&v422 = v296;
              *(&v422 + 1) = v277;
              *&v423 = 0;
              if (v297)
              {
                operator delete(v297);
              }
            }

            else
            {
              **(&v422 + 1) = v247;
              *(v276 + 8) = v245;
              v277 = v276 + 16;
            }

            *(&v422 + 1) = v277;
            if (v244 < 0)
            {
              goto LABEL_484;
            }

            goto LABEL_485;
          }
        }

        else
        {
          if (!*(v224 + 152))
          {
            v232 = *v224;
            if ((*(v224 + 153) & 4) != 0)
            {
              v248 = v424;
              if (v424 >= *(&v424 + 1))
              {
                v267 = (v424 - *(&v423 + 1)) >> 4;
                if ((v267 + 1) >> 60)
                {
                  goto LABEL_641;
                }

                v268 = (*(&v424 + 1) - *(&v423 + 1)) >> 3;
                if (v268 <= v267 + 1)
                {
                  v268 = v267 + 1;
                }

                if (*(&v424 + 1) - *(&v423 + 1) >= 0x7FFFFFFFFFFFFFF0uLL)
                {
                  v269 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v269 = v268;
                }

                if (v269)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<FlowStringRef>>(v269);
                }

                *(16 * v267) = v232;
                v249 = 16 * v267 + 16;
                v302 = (16 * v267 - (v424 - *(&v423 + 1)));
                memcpy(v302, *(&v423 + 1), v424 - *(&v423 + 1));
                v303 = *(&v423 + 1);
                *(&v423 + 1) = v302;
                v424 = v249;
                if (v303)
                {
                  operator delete(v303);
                }
              }

              else
              {
                *v424 = v232;
                v249 = v248 + 16;
              }

              *&v424 = v249;
            }

            else
            {
              v233 = v418;
              if (v418 >= *(&v418 + 1))
              {
                v261 = (v418 - v417[1].i64[1]) >> 4;
                if ((v261 + 1) >> 60)
                {
                  goto LABEL_641;
                }

                v262 = (*(&v418 + 1) - v417[1].i64[1]) >> 3;
                if (v262 <= v261 + 1)
                {
                  v262 = v261 + 1;
                }

                if (*(&v418 + 1) - v417[1].i64[1] >= 0x7FFFFFFFFFFFFFF0uLL)
                {
                  v263 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v263 = v262;
                }

                if (v263)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<FlowStringRef>>(v263);
                }

                *(16 * v261) = v232;
                v234 = 16 * v261 + 16;
                v298 = (16 * v261 - (v418 - v417[1].i64[1]));
                memcpy(v298, v417[1].i64[1], v418 - v417[1].i64[1]);
                v299 = v417[1].i64[1];
                v417[1].i64[1] = v298;
                v418 = v234;
                if (v299)
                {
                  operator delete(v299);
                }
              }

              else
              {
                *v418 = v232;
                v234 = v233 + 16;
              }

              *&v418 = v234;
            }

            goto LABEL_500;
          }

          if (v225 == 1)
          {
            if (*(v382 + 48) == 32)
            {
              v226 = *v224;
              v227 = *(&v419 + 1);
              if (*(&v419 + 1) >= v420)
              {
                v255 = (*(&v419 + 1) - v419) >> 4;
                if ((v255 + 1) >> 60)
                {
                  goto LABEL_641;
                }

                v256 = (v420 - v419) >> 3;
                if (v256 <= v255 + 1)
                {
                  v256 = v255 + 1;
                }

                if (v420 - v419 >= 0x7FFFFFFFFFFFFFF0uLL)
                {
                  v257 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v257 = v256;
                }

                if (v257)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<FlowStringRef>>(v257);
                }

                *(16 * v255) = v226;
                v228 = 16 * v255 + 16;
                v288 = (16 * v255 - (*(&v419 + 1) - v419));
                memcpy(v288, v419, *(&v419 + 1) - v419);
                v289 = v419;
                *&v419 = v288;
                *(&v419 + 1) = v228;
                *&v420 = 0;
                if (v289)
                {
                  operator delete(v289);
                }
              }

              else
              {
                **(&v419 + 1) = v226;
                v228 = v227 + 16;
              }

              *(&v419 + 1) = v228;
              goto LABEL_500;
            }

            v384 = *v224;
            llvm::StringRef::str(&v384, v415);
            v238 = std::string::insert(v415, 0, "_");
            v431.i64[0] = v238->__r_.__value_.__r.__words[2];
            v430 = *&v238->__r_.__value_.__l.__data_;
            v238->__r_.__value_.__l.__size_ = 0;
            v238->__r_.__value_.__r.__words[2] = 0;
            v238->__r_.__value_.__r.__words[0] = 0;
            v239 = v431.i8[7];
            if (v431.i8[7] >= 0)
            {
              v240 = v431.u8[7];
            }

            else
            {
              v240 = v430.u64[1];
            }

            if (v240)
            {
              if (v431.i8[7] >= 0)
              {
                v241 = &v430;
              }

              else
              {
                v241 = v430.i64[0];
              }

              v242 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(&v391, v240, 0);
              memcpy(v242, v241, v240);
            }

            else
            {
              v242 = 0;
            }

            v270 = *(&v419 + 1);
            if (*(&v419 + 1) >= v420)
            {
              v272 = (*(&v419 + 1) - v419) >> 4;
              v273 = v272 + 1;
              if ((v272 + 1) >> 60)
              {
                goto LABEL_641;
              }

              v274 = v420 - v419;
              if ((v420 - v419) >> 3 > v273)
              {
                v273 = v274 >> 3;
              }

              if (v274 >= 0x7FFFFFFFFFFFFFF0)
              {
                v275 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v275 = v273;
              }

              if (v275)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<FlowStringRef>>(v275);
              }

              v292 = (16 * v272);
              *v292 = v242;
              v292[1] = v240;
              v271 = 16 * v272 + 16;
              v293 = (16 * v272 - (*(&v419 + 1) - v419));
              memcpy(v293, v419, *(&v419 + 1) - v419);
              v294 = v419;
              *&v419 = v293;
              *(&v419 + 1) = v271;
              *&v420 = 0;
              if (v294)
              {
                operator delete(v294);
              }
            }

            else
            {
              **(&v419 + 1) = v242;
              *(v270 + 8) = v240;
              v271 = v270 + 16;
            }

            *(&v419 + 1) = v271;
            if (v239 < 0)
            {
LABEL_484:
              operator delete(v430.i64[0]);
            }

LABEL_485:
            if ((v415[23] & 0x80000000) != 0)
            {
              operator delete(*v415);
            }
          }
        }
      }

LABEL_500:
      v304 = v223[1];
      if (v304)
      {
        do
        {
          v305 = v304;
          v304 = *v304;
        }

        while (v304);
      }

      else
      {
        do
        {
          v305 = v223[2];
          v192 = *v305 == v223;
          v223 = v305;
        }

        while (!v192);
      }

      v223 = v305;
      if (v305 == &v386)
      {
        goto LABEL_511;
      }
    }
  }

LABEL_553:
  std::__tree<std::__value_type<llvm::orc::ExecutorAddr,unsigned long long>,std::__map_value_compare<llvm::orc::ExecutorAddr,std::__value_type<llvm::orc::ExecutorAddr,unsigned long long>,std::less<llvm::orc::ExecutorAddr>,true>,std::allocator<std::__value_type<llvm::orc::ExecutorAddr,unsigned long long>>>::destroy(v386);
  std::__tree<std::__value_type<llvm::orc::ExecutorAddr,unsigned long long>,std::__map_value_compare<llvm::orc::ExecutorAddr,std::__value_type<llvm::orc::ExecutorAddr,unsigned long long>,std::less<llvm::orc::ExecutorAddr>,true>,std::allocator<std::__value_type<llvm::orc::ExecutorAddr,unsigned long long>>>::destroy(v389);
  v4 = v380;
LABEL_554:
  v413 = &v391;
  llvm::yaml::IO::processKey<std::vector<llvm::MachO::Architecture>,llvm::yaml::EmptyContext>(v4, v396);
  memset(v415, 0, 24);
  v326 = a1;
  if (a1 == 8)
  {
    llvm::yaml::IO::processKey<llvm::SmallSet<llvm::MachO::PlatformType,3u,std::less<llvm::MachO::PlatformType>>,llvm::yaml::EmptyContext>(v4, v413 + 120);
  }

  else
  {
    if (!(*(*v4 + 56))(v4) || *v415 != *&v415[8])
    {
      *&v384 = 0;
      LOBYTE(v383) = 0;
      if ((*(*v4 + 120))(v4, "uuids", 0, 0, &v383, &v384))
      {
        v327 = (*(*v4 + 64))(v4);
        if ((*(*v4 + 16))(v4))
        {
          v327 = -1431655765 * ((*&v415[8] - *v415) >> 4);
        }

        if (v327)
        {
          v328 = 0;
          v329 = 0;
          v330 = 24;
          v331 = v327;
          do
          {
            v385 = 0;
            if ((*(*v380 + 72))(v380, v329, &v385))
            {
              v332 = *&v415[8];
              v333 = *v415;
              v334 = 0xAAAAAAAAAAAAAAABLL * ((*&v415[8] - *v415) >> 4);
              if (v334 <= v329)
              {
                v335 = v329 + 1;
                if (0xAAAAAAAAAAAAAAABLL * ((*&v415[16] - *&v415[8]) >> 4) < v329 + 1 - v334)
                {
                  if (0x5555555555555556 * ((*&v415[16] - *v415) >> 4) > v335)
                  {
                    v335 = 0x5555555555555556 * ((*&v415[16] - *v415) >> 4);
                  }

                  if (0xAAAAAAAAAAAAAAABLL * ((*&v415[16] - *v415) >> 4) >= 0x2AAAAAAAAAAAAAALL)
                  {
                    v336 = 0x555555555555555;
                  }

                  else
                  {
                    v336 = v335;
                  }

                  *&v418 = v415;
                  std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<llvm::MachO::Target,std::string>>>(v415, v336);
                }

                v337 = 48 - -48 * ((v328 - (*&v415[8] - *v415)) / 0x30uLL);
                bzero(*&v415[8], v337);
                *&v415[8] = v332 + v337;
                v333 = *v415;
              }

              if ((*(*v380 + 16))(v380))
              {
                v417[0].i64[0] = &v417[1].i64[1];
                *(v417 + 8) = xmmword_2750C1290;
                v430.i32[2] = 0;
                v433 = 0;
                v434 = 0;
                v435 = 1;
                v432 = 0;
                v431 = 0uLL;
                v430.i64[0] = &unk_2883EB968;
                v436 = v417;
                llvm::raw_ostream::SetUnbuffered(&v430);
                v338 = v436->i64[1];
                v388 = v436->i64[0];
                v389 = v338;
                (*(*v380 + 216))(v380, &v388, 1);
                llvm::raw_ostream::~raw_ostream(&v430);
                if (v417[0].i64[0] != &v417[1].u64[1])
                {
                  free(v417[0].i64[0]);
                }
              }

              else
              {
                v339 = v333 + v330;
                v417[0] = 0uLL;
                (*(*v380 + 216))(v380, v417, 1);
                *(v339 - 24) = 0;
                *(v339 - 16) = 0;
                *(v339 - 8) = 0;
                if (*(v333 + v330 + 23) < 0)
                {
                  operator delete(*v339);
                }

                *v339 = 0;
                *(v339 + 8) = 0;
                *(v339 + 16) = 0;
              }

              (*(*v380 + 80))(v380, v385);
            }

            ++v329;
            v330 += 48;
            v328 += 48;
          }

          while (v331 != v329);
        }

        v4 = v380;
        (*(*v380 + 88))(v380);
        (*(*v4 + 128))(v4, v384);
        v326 = a1;
      }
    }

    llvm::yaml::IO::processKey<llvm::SmallSet<llvm::MachO::PlatformType,3u,std::less<llvm::MachO::PlatformType>>,llvm::yaml::EmptyContext>(v4, v413 + 120);
    v417[0].i32[0] = 0;
    llvm::yaml::IO::processKeyWithDefault<TBDFlags,llvm::yaml::EmptyContext>(v4, v413 + 52, v417);
  }

  llvm::yaml::IO::processKey<llvm::StringRef,llvm::yaml::EmptyContext>(v4, "install-name", (v413 + 11), 1);
  v417[0].i32[0] = 0x10000;
  llvm::yaml::IO::processKeyWithDefault<llvm::MachO::PackedVersion,llvm::yaml::EmptyContext>(v4, "current-version", (v413 + 12), v417);
  v417[0].i32[0] = 0x10000;
  llvm::yaml::IO::processKeyWithDefault<llvm::MachO::PackedVersion,llvm::yaml::EmptyContext>(v4, "compatibility-version", (v413 + 196), v417);
  v417[0].i8[0] = 0;
  if (v326 == 32)
  {
    v340 = "swift-abi-version";
  }

  else
  {
    v340 = "swift-version";
  }

  llvm::yaml::IO::processKeyWithDefault<SwiftVersion,llvm::yaml::EmptyContext>(v4, v340, (v413 + 200), v417);
  v341 = v413;
  v417[0].i64[0] = 0;
  v430.i8[0] = 0;
  v342 = (*(*v4 + 16))(v4);
  v344 = *(v341 + 51);
  v343 = v341 + 51;
  v345 = v326 != 8;
  if (v344 == v345)
  {
    v346 = v342;
  }

  else
  {
    v346 = 0;
  }

  if ((*(*v4 + 120))(v4, "objc-constraint", 0, v346, &v430, v417))
  {
    (*(*v4 + 160))(v4);
    llvm::yaml::ScalarEnumerationTraits<llvm::MachO::ObjCConstraintType,void>::enumeration(v4, v343);
    (*(*v4 + 184))(v4);
    (*(*v4 + 128))(v4, v417[0].i64[0]);
  }

  else if (v430.u8[0] == 1)
  {
    *v343 = v345;
  }

  v347 = v413;
  if (v326 == 8)
  {
  }

  else
  {
    if ((*(*v4 + 16))(v4))
    {
      v348 = *(v347 + 28) == 0;
    }

    else
    {
      v348 = 0;
    }

    v417[0].i64[0] = 0;
    v430.i8[0] = 0;
    if ((*(*v4 + 120))(v4, "parent-umbrella", 0, v348, &v430, v417))
    {
      llvm::yaml::yamlize<llvm::StringRef>(v4, v347 + 216);
      (*(*v4 + 128))(v4, v417[0].i64[0]);
    }

    else if (v430.u8[0] == 1)
    {
      *(v347 + 27) = 0;
      *(v347 + 28) = 0;
    }

    v349 = v413;
    if (!(*(*v4 + 56))(v4) || *(v349 + 32) != *(v349 + 33))
    {
      v388 = 0;
      LOBYTE(v385) = 0;
      if ((*(*v4 + 120))(v4, "undefineds", 0, 0, &v385, &v388))
      {
        v350 = (*(*v4 + 24))(v4);
        v351 = v4;
        v352 = v350;
        if ((*(*v351 + 16))(v351))
        {
          v352 = 954437177 * ((*(v349 + 33) - *(v349 + 32)) >> 4);
        }

        if (v352)
        {
          v353 = 0;
          v354 = 144 * v352;
          v355 = 1;
          do
          {
            v430.i64[0] = 0;
            if ((*(*v380 + 32))(v380, v355 - 1, &v430))
            {
              v356 = *(v349 + 32);
              v357 = *(v349 + 33);
              v358 = v357 - v356;
              v359 = 0x8E38E38E38E38E39 * ((v357 - v356) >> 4);
              if (v359 <= v355 - 1)
              {
                v360 = *(v349 + 34);
                if (0x8E38E38E38E38E39 * ((v360 - v357) >> 4) >= v355 - v359)
                {
                  bzero(*(v349 + 33), 144 - -144 * ((v353 - v358) / 0x90uLL));
                  *(v349 + 33) = v357 + 144 - -144 * ((v353 - v358) / 0x90uLL);
                }

                else
                {
                  v361 = 0x8E38E38E38E38E39 * ((v360 - v356) >> 4);
                  v362 = 2 * v361;
                  if (2 * v361 <= v355)
                  {
                    v362 = v355;
                  }

                  if (v361 >= 0xE38E38E38E38E3)
                  {
                    v363 = 0x1C71C71C71C71C7;
                  }

                  else
                  {
                    v363 = v362;
                  }

                  v364 = v417[1].i64[0];
                  bzero(v417[1].i64[0], 144 * ((v353 - v358) / 0x90uLL) + 144);
                  v417[1].i64[0] = v364 + 144 * ((v353 - v358) / 0x90uLL) + 144;
                }
              }

              v365 = (*(v349 + 32) + v353);
              (*(*v380 + 104))(v380);
              v366 = v380[1];
              llvm::yaml::IO::processKey<std::vector<llvm::MachO::Architecture>,llvm::yaml::EmptyContext>(v380, v365);
              llvm::yaml::IO::mapOptionalWithContext<std::vector<FlowStringRef>,llvm::yaml::EmptyContext>(v380, "symbols", v365 + 3);
              llvm::yaml::IO::mapOptionalWithContext<std::vector<FlowStringRef>,llvm::yaml::EmptyContext>(v380, "objc-classes", v365 + 6);
              if (*(v366 + 48) == 32)
              {
                llvm::yaml::IO::mapOptionalWithContext<std::vector<FlowStringRef>,llvm::yaml::EmptyContext>(v380, "objc-eh-types", v365 + 9);
              }

              llvm::yaml::IO::mapOptionalWithContext<std::vector<FlowStringRef>,llvm::yaml::EmptyContext>(v380, "objc-ivars", v365 + 12);
              llvm::yaml::IO::mapOptionalWithContext<std::vector<FlowStringRef>,llvm::yaml::EmptyContext>(v380, "weak-ref-symbols", v365 + 15);
              (*(*v380 + 112))(v380);
              (*(*v380 + 40))(v380, v430.i64[0]);
            }

            ++v355;
            v353 += 144;
          }

          while (v354 != v353);
        }

        (*(*v380 + 48))(v380);
        (*(*v380 + 128))(v380, v388);
      }
    }
  }

  v417[0].i64[0] = v415;
  std::vector<std::pair<llvm::MachO::Target,std::string>>::__destroy_vector::operator()[abi:nn200100](v417);
  if (((*(*v412 + 16))(v412) & 1) == 0)
  {
    v367 = v412[1];
    operator new();
  }

  v368 = v413;
  v369 = *(v413 + 32);
  if (v369)
  {
    v370 = *(v413 + 33);
    v371 = *(v413 + 32);
    if (v370 != v369)
    {
      do
      {
        v370 -= 144;
      }

      while (v370 != v369);
      v371 = *(v368 + 256);
    }

    *(v368 + 264) = v369;
    operator delete(v371);
  }

  v372 = *(v368 + 232);
  if (v372)
  {
    v373 = *(v368 + 240);
    v374 = *(v368 + 232);
    if (v373 != v372)
    {
      do
      {
      }

      while (v373 != v372);
      v374 = *(v368 + 232);
    }

    *(v368 + 240) = v372;
    operator delete(v374);
  }

  std::__tree<std::__value_type<llvm::StringRef,llvm::StringRef>,std::__map_value_compare<llvm::StringRef,std::__value_type<llvm::StringRef,llvm::StringRef>,std::less<llvm::StringRef>,true>,std::allocator<std::__value_type<llvm::StringRef,llvm::StringRef>>>::destroy(v368 + 152, *(v368 + 160));
  v375 = *(v368 + 120);
  if (v375 != (v368 + 136))
  {
    free(v375);
  }

  v376 = *(v368 + 96);
  if (v376)
  {
    *(v368 + 104) = v376;
    operator delete(v376);
  }

  result = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(v368);
  v378 = *MEMORY[0x277D85DE8];
  return result;
}