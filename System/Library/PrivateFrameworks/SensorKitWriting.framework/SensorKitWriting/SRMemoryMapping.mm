@interface SRMemoryMapping
+ (void)initialize;
- (BOOL)isValidWriteToDestinationAddress:(unint64_t)address withLength:(uint64_t)length bytes:;
- (id)initWithSize:(int)size protection:(int)protection advice:(uint64_t)advice offset:;
- (uint64_t)mapWithFileHandle:(uint64_t)result;
- (void)appendBytes:(unint64_t)bytes length:;
- (void)dealloc;
- (void)sync;
@end

@implementation SRMemoryMapping

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    SRLogMemoryMapping = os_log_create("com.apple.SensorKit", "SRMemoryMapping");
  }
}

- (id)initWithSize:(int)size protection:(int)protection advice:(uint64_t)advice offset:
{
  if (result)
  {
    v9.receiver = result;
    v9.super_class = SRMemoryMapping;
    result = objc_msgSendSuper2(&v9, sel_init);
    if (result)
    {
      *(result + 6) = a2;
      *(result + 2) = size;
      *(result + 3) = protection;
      *(result + 4) = advice;
    }
  }

  return result;
}

- (void)dealloc
{
  v17 = *MEMORY[0x277D85DE8];
  if (self)
  {
    mappedAddress = self->_mappedAddress;
    if (mappedAddress + 1 >= 2)
    {
      v4 = SRLogMemoryMapping;
      if (os_log_type_enabled(SRLogMemoryMapping, OS_LOG_TYPE_INFO))
      {
        *buf = 134349056;
        v12 = mappedAddress;
        _os_log_impl(&dword_26561F000, v4, OS_LOG_TYPE_INFO, "Unmapping %{public}p", buf, 0xCu);
      }

      pageAlignedSize = self->_pageAlignedSize;
      if (munmap(mappedAddress, pageAlignedSize))
      {
        v7 = SRLogMemoryMapping;
        if (os_log_type_enabled(SRLogMemoryMapping, OS_LOG_TYPE_INFO))
        {
          v8 = *__error();
          *buf = 134349568;
          v12 = mappedAddress;
          v13 = 2048;
          v14 = pageAlignedSize;
          v15 = 1026;
          v16 = v8;
          _os_log_impl(&dword_26561F000, v7, OS_LOG_TYPE_INFO, "Unable to unmap %{public}p size %zu because %{public, darwin.errno}d", buf, 0x1Cu);
          v7 = SRLogMemoryMapping;
        }

        if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          v9 = *__error();
          *buf = 134349568;
          v12 = mappedAddress;
          v13 = 2048;
          v14 = pageAlignedSize;
          v15 = 1026;
          v16 = v9;
          _os_log_fault_impl(&dword_26561F000, v7, OS_LOG_TYPE_FAULT, "Unable to unmap %{public}p size %zu because %{public, darwin.errno}d", buf, 0x1Cu);
        }

        abort();
      }

      self->_mappedAddress = 0;
    }
  }

  v10.receiver = self;
  v10.super_class = SRMemoryMapping;
  [(SRMemoryMapping *)&v10 dealloc];
  v6 = *MEMORY[0x277D85DE8];
}

- (uint64_t)mapWithFileHandle:(uint64_t)result
{
  v20 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v3 = result;
    v4 = *(result + 32);
    v5 = NSRoundDownToMultipleOfPageSize(v4);
    v6 = v4 - v5;
    v7 = NSRoundUpToMultipleOfPageSize(*(v3 + 48) + v4 - v5);
    v8 = mmap(0, v7, *(v3 + 8), 1, [a2 fileDescriptor], v5);
    if (v8 == -1)
    {
      v12 = SRLogMemoryMapping;
      result = os_log_type_enabled(SRLogMemoryMapping, OS_LOG_TYPE_FAULT);
      if (result)
      {
        v14 = *__error();
        v16 = 138543618;
        v17 = a2;
        v18 = 1026;
        v19 = v14;
        _os_log_fault_impl(&dword_26561F000, v12, OS_LOG_TYPE_FAULT, "Unable to mmap storage file %{public}@ because %{public, darwin.errno}d", &v16, 0x12u);
        result = 0;
      }
    }

    else
    {
      *(v3 + 56) = v7;
      *(v3 + 40) = v8;
      v9 = &v8[v6];
      *(v3 + 16) = &v8[v6];
      v10 = *(v3 + 12);
      if (v10 != 2)
      {
        v9 += *(v3 + 48);
      }

      *(v3 + 24) = v9;
      if (madvise(v8, v7, v10) < 0)
      {
        v11 = SRLogMemoryMapping;
        if (os_log_type_enabled(SRLogMemoryMapping, OS_LOG_TYPE_FAULT))
        {
          v15 = *__error();
          v16 = 67240192;
          LODWORD(v17) = v15;
          _os_log_fault_impl(&dword_26561F000, v11, OS_LOG_TYPE_FAULT, "Failed to madvise() because %{public, darwin.errno}d", &v16, 8u);
        }
      }

      result = 1;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)sync
{
  v10 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v2 = *(self + 40);
    if (v2 + 1 >= 2)
    {
      v6 = self + 16;
      v4 = *(self + 16);
      v5 = *(v6 + 8);
      if (v5 != v4)
      {
        if (msync(v2, v5 - v4, 16))
        {
          v7 = SRLogMemoryMapping;
          if (os_log_type_enabled(SRLogMemoryMapping, OS_LOG_TYPE_ERROR))
          {
            v8 = *__error();
            v9[0] = 67240192;
            v9[1] = v8;
            _os_log_error_impl(&dword_26561F000, v7, OS_LOG_TYPE_ERROR, "Failed to msync because %{public, darwin.errno}d", v9, 8u);
          }
        }
      }
    }
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (BOOL)isValidWriteToDestinationAddress:(unint64_t)address withLength:(uint64_t)length bytes:
{
  v22 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v4 = result;
    result = 0;
    if (length)
    {
      if ((*(v4 + 8) & 2) != 0)
      {
        v5 = *(v4 + 40);
        if ((v5 + 1) < 2)
        {
LABEL_5:
          result = 0;
          goto LABEL_6;
        }

        v8 = *(v4 + 24);
        if (__CFADD__(v8, address))
        {
          v9 = SRLogMemoryMapping;
          result = os_log_type_enabled(SRLogMemoryMapping, OS_LOG_TYPE_ERROR);
          if (!result)
          {
            goto LABEL_6;
          }

          v16 = 134349056;
          addressCopy = address;
          _os_log_error_impl(&dword_26561F000, v9, OS_LOG_TYPE_ERROR, "%{public}zu is too large to write", &v16, 0xCu);
          goto LABEL_5;
        }

        v11 = v5 + *(v4 + 56);
        if (a2 + address > v11)
        {
          v12 = SRLogMemoryMapping;
          result = os_log_type_enabled(SRLogMemoryMapping, OS_LOG_TYPE_FAULT);
          if (!result)
          {
            goto LABEL_6;
          }

          v16 = 134349568;
          addressCopy = a2;
          v18 = 2050;
          addressCopy2 = address;
          v20 = 2050;
          v21 = v11;
          _os_log_fault_impl(&dword_26561F000, v12, OS_LOG_TYPE_FAULT, "writing to %{public}p with length %{public}lu would go past end of file (%{public}p)", &v16, 0x20u);
          goto LABEL_5;
        }

        v13 = *(v4 + 16);
        if (v8 >= a2)
        {
          v14 = v13 >= a2;
          v15 = v13 == a2;
        }

        else
        {
          v14 = 1;
          v15 = 0;
        }

        result = v15 || !v14;
      }
    }
  }

LABEL_6:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)appendBytes:(unint64_t)bytes length:
{
  v15 = *MEMORY[0x277D85DE8];
  if (!self)
  {
    goto LABEL_6;
  }

  v6 = self[3];
  if (![(SRMemoryMapping *)self isValidWriteToDestinationAddress:v6 withLength:bytes bytes:a2])
  {
    goto LABEL_6;
  }

  v7 = self[6] - self[3] + self[2];
  if (v7 < bytes)
  {
    v8 = SRLogMemoryMapping;
    if (os_log_type_enabled(SRLogMemoryMapping, OS_LOG_TYPE_INFO))
    {
      v11 = 134349312;
      bytesCopy = bytes;
      v13 = 2050;
      v14 = v7;
      _os_log_impl(&dword_26561F000, v8, OS_LOG_TYPE_INFO, "More bytes requested %{public}zu than the capacity %{public}zu. Client should call -freeSpace: to avoid this", &v11, 0x16u);
    }

LABEL_6:
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  self[3] = &v6[bytes];
  v10 = *MEMORY[0x277D85DE8];

  memcpy(v6, a2, bytes);
}

@end