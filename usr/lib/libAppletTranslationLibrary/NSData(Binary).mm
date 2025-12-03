@interface NSData(Binary)
- (unint64_t)readBinaryValueAtBit:()Binary numberOfBits:;
@end

@implementation NSData(Binary)

- (unint64_t)readBinaryValueAtBit:()Binary numberOfBits:
{
  v27 = *MEMORY[0x277D85DE8];
  if (a4 >= 0x41)
  {
    v5 = ATLLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v21 = 134217984;
      v22 = a4;
      _os_log_impl(&dword_22EEF5000, v5, OS_LOG_TYPE_ERROR, "The total parameter must not exceed 64 bits, got %lui", &v21, 0xCu);
    }

LABEL_9:
    result = 0;
    goto LABEL_16;
  }

  v8 = 8 * [self length];
  if (v8 < a4 + a3)
  {
    v9 = ATLLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v21 = 134218496;
      v22 = v8;
      v23 = 2048;
      v24 = a3;
      v25 = 2048;
      v26 = a4;
      _os_log_impl(&dword_22EEF5000, v9, OS_LOG_TYPE_ERROR, "Bit position and total exceed capacity. bitLimit=%lui, position=%lui, total=%lui", &v21, 0x20u);
    }

    goto LABEL_9;
  }

  v11 = a4 + a3 - 1;
  v12 = v11 >> 3;
  v13 = ~v11 & 7;
  v14 = exp2(a4) - 1;
  bytes = [self bytes];
  if (v12 - (a3 >> 3) == -1)
  {
    v16 = 0;
  }

  else
  {
    v16 = 0;
    v17 = (bytes + (a3 >> 3));
    v18 = v12 - (a3 >> 3) + 1;
    do
    {
      v19 = *v17++;
      v16 = v19 | (v16 << 8);
      --v18;
    }

    while (v18);
  }

  result = (v16 >> v13) & v14;
LABEL_16:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

@end