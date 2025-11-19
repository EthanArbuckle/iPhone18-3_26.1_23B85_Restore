void sub_260E8ACFC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

id _IOSurfacePropertyDictionaryForRect(double a1, double a2, double a3, double a4)
{
  AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
  v8 = a4;
  LODWORD(v4) = llroundf(v8);
  v26 = MEMORY[0x277CBEAC0];
  v25 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v24 = *MEMORY[0x277CD2A40];
  v9 = a3;
  LODWORD(v10) = llroundf(v9);
  v11 = [MEMORY[0x277CCABB0] numberWithInt:v10];
  v23 = *MEMORY[0x277CD2B88];
  v12 = [MEMORY[0x277CCABB0] numberWithInt:v4];
  v13 = *MEMORY[0x277CD2A28];
  v14 = [MEMORY[0x277CCABB0] numberWithLong:AlignedBytesPerRow];
  v15 = *MEMORY[0x277CD2968];
  v16 = [MEMORY[0x277CCABB0] numberWithLong:AlignedBytesPerRow * v4];
  v17 = *MEMORY[0x277CD2948];
  v18 = [MEMORY[0x277CCABB0] numberWithInt:4];
  v19 = *MEMORY[0x277CD2960];
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1111970369];
  v21 = [v26 dictionaryWithObjectsAndKeys:{v25, v24, v11, v23, v12, v13, v14, v15, v16, v17, v18, v19, v20, *MEMORY[0x277CD2A70], 0}];

  return v21;
}