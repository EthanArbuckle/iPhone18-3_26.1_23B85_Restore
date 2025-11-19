uint64_t TSCEFormulaCreationMagic::COLUMN@<X0>(const char *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_221184BB4;
  v8[3] = &unk_278460290;
  v9 = 22;
  result = objc_msgSend_copy(v8, a1, a2, a3, a4);
  *a5 = result;
  return result;
}

void TSCEFormulaCreationMagic::COLUMN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(22, &v5, a3);
}

void TSCEFormulaCreationMagic::COLUMNS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(23, &v5, a3);
}

void TSCEFormulaCreationMagic::COLUMNS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(23, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::COMBIN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(24, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::CONCAT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(329, &v5, a3);
}

void TSCEFormulaCreationMagic::CONCATENATE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(25, &v5, a3);
}

void TSCEFormulaCreationMagic::CONCATENATE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(25, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::CONFIDENCE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(26, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::CONVERT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(255, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::CORREL(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(27, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::COS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(28, &v5, a3);
}

void TSCEFormulaCreationMagic::COSH(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(29, &v5, a3);
}

void TSCEFormulaCreationMagic::COUNT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(30, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::COUNTA(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(31, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::COUNTBLANK(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(32, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::COUNTIF(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(33, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::COUNTIF(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(33, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::COUNTIFS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(233, &v5, a3);
}

void TSCEFormulaCreationMagic::COUNTIFS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(233, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::COUNTMATCHES(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(317, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::COUPDAYBS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(34, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::COUPDAYS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(35, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::COUPDAYSNC(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(36, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::COUPNUM(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(37, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::COVAR(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(38, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::CRITBINOM(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(251, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::CUMIPMT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(201, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::CUMPRINC(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(202, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::DAYS360(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(261, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::DB(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(42, &v21, &v20, &v19, &v18, &v17, a7);
}

void TSCEFormulaCreationMagic::DDB(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(43, &v21, &v20, &v19, &v18, &v17, a7);
}

void TSCEFormulaCreationMagic::DEC2BIN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(265, &v5, a3);
}

void TSCEFormulaCreationMagic::DEC2HEX(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(264, &v5, a3);
}

void TSCEFormulaCreationMagic::DEC2OCT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(266, &v5, a3);
}

void TSCEFormulaCreationMagic::DEGREES(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(44, &v5, a3);
}

void TSCEFormulaCreationMagic::DELTA(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(223, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::DEVSQ(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(221, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::DISC(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(45, &v21, &v20, &v19, &v18, &v17, a7);
}

void TSCEFormulaCreationMagic::DOLLAR(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(46, &v5, a3);
}

void TSCEFormulaCreationMagic::DUR2DAYS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(210, &v5, a3);
}

void TSCEFormulaCreationMagic::DUR2HOURS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(207, &v5, a3);
}

void TSCEFormulaCreationMagic::DUR2MILLISECONDS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(277, &v5, a3);
}

void TSCEFormulaCreationMagic::DUR2MINUTES(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(208, &v5, a3);
}

void TSCEFormulaCreationMagic::DUR2SECONDS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(209, &v5, a3);
}

void TSCEFormulaCreationMagic::DUR2WEEKS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(211, &v5, a3);
}

void TSCEFormulaCreationMagic::DURATION(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(212, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::EFFECT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(185, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::EOMONTH(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(203, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::ERF(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(196, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::ERFC(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(197, &v5, a3);
}

void TSCEFormulaCreationMagic::EVEN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(48, &v5, a3);
}

void TSCEFormulaCreationMagic::EXP(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(50, &v5, a3);
}

void TSCEFormulaCreationMagic::EXPONDIST(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(213, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::FACT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(51, &v5, a3);
}

void TSCEFormulaCreationMagic::FACTDOUBLE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(224, &v5, a3);
}

void TSCEFormulaCreationMagic::FDIST(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(244, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::FIND(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(53, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::FINV(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(257, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::FIXED(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(54, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::FORECAST(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, TSCEFormulaCreator a8@<0:X7>, uint64_t *a9@<X8>)
{
  v22 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0, a8.var0);
  v29 = v22;
  v16 = MEMORY[0x223DA1C10](*a2.var0);
  v28 = v16;
  v17 = MEMORY[0x223DA1C10](*a3.var0);
  v27 = v17;
  v18 = MEMORY[0x223DA1C10](*a4.var0);
  v26 = v18;
  v19 = MEMORY[0x223DA1C10](*a5.var0);
  v25 = v19;
  v20 = MEMORY[0x223DA1C10](*a6.var0);
  v24 = v20;
  v21 = MEMORY[0x223DA1C10](*a7.var0);
  v23 = v21;
  TSCEFormulaCreationMagic::function_7arg(56, &v29, &v28, &v27, &v26, &v25, &v24, &v23, a9);
}

void TSCEFormulaCreationMagic::FORMULATEXT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(323, &v5, a3);
}

void TSCEFormulaCreationMagic::FREQUENCY(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(222, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::FV(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(57, &v21, &v20, &v19, &v18, &v17, a7);
}

void TSCEFormulaCreationMagic::GAMMADIST(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(229, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::GAMMAINV(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(230, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::GAMMALN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(227, &v5, a3);
}

void TSCEFormulaCreationMagic::GCD(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(58, &v5, a3);
}

void TSCEFormulaCreationMagic::GCD(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(58, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::GEOMEAN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(263, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::GESTEP(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(225, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::GETPIVOTDATA(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(325, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::GETPIVOTDATA(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(325, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::GETPIVOTDATA(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(325, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::GETPIVOTDATA(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, TSCEFormulaCreator a8@<0:X7>, uint64_t *a9@<X8>, TSCEFormulaCreator a10)
{
  v25 = MEMORY[0x223DA1C10](*this);
  v33 = v25;
  v18 = MEMORY[0x223DA1C10](*a2.var0);
  v32 = v18;
  v19 = MEMORY[0x223DA1C10](*a3.var0);
  v31 = v19;
  v20 = MEMORY[0x223DA1C10](*a4.var0);
  v30 = v20;
  v21 = MEMORY[0x223DA1C10](*a5.var0);
  v29 = v21;
  v22 = MEMORY[0x223DA1C10](*a6.var0);
  v28 = v22;
  v23 = MEMORY[0x223DA1C10](*a7.var0);
  v27 = v23;
  v24 = MEMORY[0x223DA1C10](*a8.var0);
  v26 = v24;
  TSCEFormulaCreationMagic::function_8arg(325, &v33, &v32, &v31, &v30, &v29, &v28, &v27, a9, &v26);
}

void TSCEFormulaCreationMagic::HARMEAN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(262, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::HEX2BIN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(273, &v5, a3);
}

void TSCEFormulaCreationMagic::HEX2DEC(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(274, &v5, a3);
}

void TSCEFormulaCreationMagic::HEX2OCT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(275, &v5, a3);
}

void TSCEFormulaCreationMagic::HLOOKUP(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(59, &v5, a3);
}

void TSCEFormulaCreationMagic::HLOOKUP(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(59, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::HOUR(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(60, &v5, a3);
}

void TSCEFormulaCreationMagic::IFERROR(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(235, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::INDEX(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(63, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::INDEX(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(63, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::INT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(65, &v5, a3);
}

void TSCEFormulaCreationMagic::INTERCEPT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(66, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::INTERSECT_RANGES(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(280, &v5, a3);
}

void TSCEFormulaCreationMagic::INTRATE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(199, &v21, &v20, &v19, &v18, &v17, a7);
}

void TSCEFormulaCreationMagic::IPMT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(67, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::IRR(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, TSCEFormulaCreator a8@<0:X7>, uint64_t *a9@<X8>)
{
  v22 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0, a8.var0);
  v29 = v22;
  v16 = MEMORY[0x223DA1C10](*a2.var0);
  v28 = v16;
  v17 = MEMORY[0x223DA1C10](*a3.var0);
  v27 = v17;
  v18 = MEMORY[0x223DA1C10](*a4.var0);
  v26 = v18;
  v19 = MEMORY[0x223DA1C10](*a5.var0);
  v25 = v19;
  v20 = MEMORY[0x223DA1C10](*a6.var0);
  v24 = v20;
  v21 = MEMORY[0x223DA1C10](*a7.var0);
  v23 = v21;
  TSCEFormulaCreationMagic::function_7arg(68, &v29, &v28, &v27, &v26, &v25, &v24, &v23, a9);
}

void TSCEFormulaCreationMagic::ISDATE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(306, &v5, a3);
}

void TSCEFormulaCreationMagic::ISERROR(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v5 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v6 = v5;
  TSCEFormulaCreationMagic::function_1arg(70, &v6, a4);
}

void TSCEFormulaCreationMagic::ISEVEN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(71, &v5, a3);
}

void TSCEFormulaCreationMagic::ISNUMBER(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(304, &v5, a3);
}

void TSCEFormulaCreationMagic::ISNUMBERORDATE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(373, &v5, a3);
}

void TSCEFormulaCreationMagic::ISODD(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(72, &v5, a3);
}

void TSCEFormulaCreationMagic::ISTEXT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(305, &v5, a3);
}

void TSCEFormulaCreationMagic::ISPMT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(73, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::LARGE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(74, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::LCM(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(75, &v5, a3);
}

void TSCEFormulaCreationMagic::LCM(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(75, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::LINEST(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(276, &v5, a3);
}

void TSCEFormulaCreationMagic::LN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(78, &v5, a3);
}

void TSCEFormulaCreationMagic::LOG(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(79, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::LOG10(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(80, &v5, a3);
}

void TSCEFormulaCreationMagic::LOGINV(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(240, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::LOGNORMDIST(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(239, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::LOOKUP(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(81, &v5, a3);
}

void TSCEFormulaCreationMagic::LOOKUP(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(81, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::MATCH(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(83, &v5, a3);
}

void TSCEFormulaCreationMagic::MATCH(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(83, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::MATCH(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(83, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::_MAX(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(84, &v5, a3);
}

void TSCEFormulaCreationMagic::_MAX(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(84, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::_MAX(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(84, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::MAXA(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(85, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::MAXIFS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(309, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::MAXIFS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(309, &v21, &v20, &v19, &v18, &v17, a7);
}

void TSCEFormulaCreationMagic::MEDIAN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(86, &v5, a3);
}

void TSCEFormulaCreationMagic::MEDIAN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(86, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::_MIN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(88, &v5, a3);
}

void TSCEFormulaCreationMagic::_MIN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(88, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::_MIN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(88, &v21, &v20, &v19, &v18, &v17, a7);
}

void TSCEFormulaCreationMagic::MINA(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(89, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::MINIFS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(310, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::MINIFS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(310, &v21, &v20, &v19, &v18, &v17, a7);
}

void TSCEFormulaCreationMagic::MINUTE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(90, &v5, a3);
}

void TSCEFormulaCreationMagic::MIRR(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, TSCEFormulaCreator a8@<0:X7>, uint64_t *a9@<X8>)
{
  v22 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0, a8.var0);
  v29 = v22;
  v16 = MEMORY[0x223DA1C10](*a2.var0);
  v28 = v16;
  v17 = MEMORY[0x223DA1C10](*a3.var0);
  v27 = v17;
  v18 = MEMORY[0x223DA1C10](*a4.var0);
  v26 = v18;
  v19 = MEMORY[0x223DA1C10](*a5.var0);
  v25 = v19;
  v20 = MEMORY[0x223DA1C10](*a6.var0);
  v24 = v20;
  v21 = MEMORY[0x223DA1C10](*a7.var0);
  v23 = v21;
  TSCEFormulaCreationMagic::function_7arg(91, &v29, &v28, &v27, &v26, &v25, &v24, &v23, a9);
}

void TSCEFormulaCreationMagic::MOD(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(92, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::MODE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(93, &v21, &v20, &v19, &v18, &v17, a7);
}

void TSCEFormulaCreationMagic::MROUND(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(95, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::MULTINOMIAL(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(250, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::NEGBINOMDIST(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(243, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::NETWORKDAYS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(260, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::NOMINAL(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(186, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::NORMDIST(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(187, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::NORMINV(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(189, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::NORMSDIST(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(188, &v5, a3);
}

void TSCEFormulaCreationMagic::NORMSINV(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(190, &v5, a3);
}

void TSCEFormulaCreationMagic::NOW(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(97, &v5, a3);
}

void TSCEFormulaCreationMagic::NPER(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(98, &v21, &v20, &v19, &v18, &v17, a7);
}

void TSCEFormulaCreationMagic::NPV(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, TSCEFormulaCreator a8@<0:X7>, uint64_t *a9@<X8>)
{
  v22 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0, a8.var0);
  v29 = v22;
  v16 = MEMORY[0x223DA1C10](*a2.var0);
  v28 = v16;
  v17 = MEMORY[0x223DA1C10](*a3.var0);
  v27 = v17;
  v18 = MEMORY[0x223DA1C10](*a4.var0);
  v26 = v18;
  v19 = MEMORY[0x223DA1C10](*a5.var0);
  v25 = v19;
  v20 = MEMORY[0x223DA1C10](*a6.var0);
  v24 = v20;
  v21 = MEMORY[0x223DA1C10](*a7.var0);
  v23 = v21;
  TSCEFormulaCreationMagic::function_7arg(99, &v29, &v28, &v27, &v26, &v25, &v24, &v23, a9);
}

void TSCEFormulaCreationMagic::NUMTOBASE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(253, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::OCT2BIN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(270, &v5, a3);
}

void TSCEFormulaCreationMagic::OCT2DEC(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(271, &v5, a3);
}

void TSCEFormulaCreationMagic::OCT2HEX(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(272, &v5, a3);
}

void TSCEFormulaCreationMagic::ODD(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(100, &v5, a3);
}

void TSCEFormulaCreationMagic::OFFSET(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(101, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::OFFSET(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(101, &v21, &v20, &v19, &v18, &v17, a7);
}

void TSCEFormulaCreationMagic::OR(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(102, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::PERCENTILE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(103, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::PERCENTRANK(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(226, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::PERMUT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(245, &v9, &v8, a4);
}

uint64_t TSCEFormulaCreationMagic::PI@<X0>(const char *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_221184BB4;
  v8[3] = &unk_278460290;
  v9 = 104;
  result = objc_msgSend_copy(v8, a1, a2, a3, a4);
  *a5 = result;
  return result;
}

void TSCEFormulaCreationMagic::PMT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(105, &v21, &v20, &v19, &v18, &v17, a7);
}

void TSCEFormulaCreationMagic::POISSON(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(106, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::POLYNOMIAL(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(287, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::POWER(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(107, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::PPMT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(108, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::PRICE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, TSCEFormulaCreator a8@<0:X7>, uint64_t *a9@<X8>)
{
  v22 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0, a8.var0);
  v29 = v22;
  v16 = MEMORY[0x223DA1C10](*a2.var0);
  v28 = v16;
  v17 = MEMORY[0x223DA1C10](*a3.var0);
  v27 = v17;
  v18 = MEMORY[0x223DA1C10](*a4.var0);
  v26 = v18;
  v19 = MEMORY[0x223DA1C10](*a5.var0);
  v25 = v19;
  v20 = MEMORY[0x223DA1C10](*a6.var0);
  v24 = v20;
  v21 = MEMORY[0x223DA1C10](*a7.var0);
  v23 = v21;
  TSCEFormulaCreationMagic::function_7arg(109, &v29, &v28, &v27, &v26, &v25, &v24, &v23, a9);
}

void TSCEFormulaCreationMagic::PRICEDISC(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(110, &v21, &v20, &v19, &v18, &v17, a7);
}

void TSCEFormulaCreationMagic::PRICEMAT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(111, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::PROB(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(112, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::PRODUCT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(113, &v5, a3);
}

void TSCEFormulaCreationMagic::PRODUCT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(113, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::PROPER(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(114, &v5, a3);
}

void TSCEFormulaCreationMagic::PV(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(115, &v21, &v20, &v19, &v18, &v17, a7);
}

void TSCEFormulaCreationMagic::QUARTILE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(249, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::QUOTIENT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(116, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::RADIANS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(117, &v5, a3);
}

uint64_t TSCEFormulaCreationMagic::RAND@<X0>(const char *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_221184BB4;
  v8[3] = &unk_278460290;
  v9 = 118;
  result = objc_msgSend_copy(v8, a1, a2, a3, a4);
  *a5 = result;
  return result;
}

void TSCEFormulaCreationMagic::RANDBETWEEN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(119, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::RANK(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(120, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::RANK(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(120, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::RATE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(121, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::RECEIVED(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(200, &v21, &v20, &v19, &v18, &v17, a7);
}

uint64_t TSCEFormulaCreationMagic::REFERENCE_NAME@<X0>(const char *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_221184BB4;
  v8[3] = &unk_278460290;
  v9 = 322;
  result = objc_msgSend_copy(v8, a1, a2, a3, a4);
  *a5 = result;
  return result;
}

void TSCEFormulaCreationMagic::REFERENCE_NAME(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(322, &v5, a3);
}

void TSCEFormulaCreationMagic::REFERENCE_NAME(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(322, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::REFERENCE_NAME(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(322, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::REPLACE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(122, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::REGEX(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(321, &v5, a3);
}

void TSCEFormulaCreationMagic::REGEX(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(321, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::REGEX_EXTRACT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(324, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::REGEX_EXTRACT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(324, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::REGEX_EXTRACT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(324, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::REPT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(123, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::ROMAN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(125, &v9, &v8, a4);
}

uint64_t TSCEFormulaCreationMagic::ROW@<X0>(const char *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_221184BB4;
  v8[3] = &unk_278460290;
  v9 = 129;
  result = objc_msgSend_copy(v8, a1, a2, a3, a4);
  *a5 = result;
  return result;
}

void TSCEFormulaCreationMagic::ROW(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(129, &v5, a3);
}

void TSCEFormulaCreationMagic::ROWS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(130, &v5, a3);
}

void TSCEFormulaCreationMagic::ROWS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(130, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::SEARCH(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(131, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::SECOND(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(132, &v5, a3);
}

uint64_t TSCEFormulaCreationMagic::SEQUENCE@<X0>(const char *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_221184BB4;
  v8[3] = &unk_278460290;
  v9 = 338;
  result = objc_msgSend_copy(v8, a1, a2, a3, a4);
  *a5 = result;
  return result;
}

void TSCEFormulaCreationMagic::SEQUENCE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(338, &v5, a3);
}

void TSCEFormulaCreationMagic::SEQUENCE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(338, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::SEQUENCE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(338, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::SEQUENCE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(338, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::SERIESSUM(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(286, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::SHOW(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v13 = v4;
  TSUDecimal::operator=();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2211846E4;
  v14[3] = &unk_2784601E0;
  v14[4] = v10;
  v14[5] = v11;
  v9 = objc_msgSend_copy(v14, v5, v6, v7, v8);
  v12 = v9;
  TSCEFormulaCreationMagic::function_2arg(341, &v13, &v12, a3);
}

void TSCEFormulaCreationMagic::SIGN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(133, &v5, a3);
}

void TSCEFormulaCreationMagic::SIN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(134, &v5, a3);
}

void TSCEFormulaCreationMagic::SINH(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(135, &v5, a3);
}

void TSCEFormulaCreationMagic::SLN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(136, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::SLOPE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(137, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::SMALL(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(138, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::SQRT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(139, &v5, a3);
}

void TSCEFormulaCreationMagic::SQRTPI(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(219, &v5, a3);
}

void TSCEFormulaCreationMagic::STANDARDIZE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(198, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::STDEV(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(140, &v5, a3);
}

void TSCEFormulaCreationMagic::STDEV(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(140, &v21, &v20, &v19, &v18, &v17, a7);
}

void TSCEFormulaCreationMagic::STDEVA(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(141, &v21, &v20, &v19, &v18, &v17, a7);
}

void TSCEFormulaCreationMagic::STDEVP(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(142, &v5, a3);
}

void TSCEFormulaCreationMagic::STDEVP(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(142, &v21, &v20, &v19, &v18, &v17, a7);
}

void TSCEFormulaCreationMagic::STDEVPA(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(143, &v21, &v20, &v19, &v18, &v17, a7);
}

void TSCEFormulaCreationMagic::STRIPDURATION(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(278, &v5, a3);
}

void TSCEFormulaCreationMagic::SUBSTITUTE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(144, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::SUBSTITUTE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(144, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::SUBTOTAL(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(316, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::SUMIF(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(145, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::SUMIF(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, TSCEFormulaCreator a8@<0:X7>, uint64_t *a9@<X8>)
{
  v22 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0, a8.var0);
  v29 = v22;
  v16 = MEMORY[0x223DA1C10](*a2.var0);
  v28 = v16;
  v17 = MEMORY[0x223DA1C10](*a3.var0);
  v27 = v17;
  v18 = MEMORY[0x223DA1C10](*a4.var0);
  v26 = v18;
  v19 = MEMORY[0x223DA1C10](*a5.var0);
  v25 = v19;
  v20 = MEMORY[0x223DA1C10](*a6.var0);
  v24 = v20;
  v21 = MEMORY[0x223DA1C10](*a7.var0);
  v23 = v21;
  TSCEFormulaCreationMagic::function_7arg(145, &v29, &v28, &v27, &v26, &v25, &v24, &v23, a9);
}

void TSCEFormulaCreationMagic::SUMIFS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(231, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::SUMIFS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(231, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::SUMPRODUCT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(146, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::SUMSQ(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(147, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::SUMX2MY2(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(216, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::SUMX2PY2(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(217, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::SUMXMY2(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(218, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::SYD(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(148, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::T(T *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(149, &v5, a3);
}

void TSCEFormulaCreationMagic::TAN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(150, &v5, a3);
}

void TSCEFormulaCreationMagic::TANH(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(151, &v5, a3);
}

void TSCEFormulaCreationMagic::TDIST(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(241, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::TEXTAFTER(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(320, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::TEXTAFTER(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(320, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::TEXTBEFORE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(318, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::TEXTBEFORE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(318, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::TEXTBETWEEN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(319, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::TEXTBETWEEN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(319, &v21, &v20, &v19, &v18, &v17, a7);
}

void TSCEFormulaCreationMagic::TEXTJOIN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(328, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::TEXTJOIN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(328, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::TEXTSPLIT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(347, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::TEXTSPLIT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(347, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::TEXTSPLIT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(347, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::TIME(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(152, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::TINV(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(254, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::TRIM(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(155, &v5, a3);
}

void TSCEFormulaCreationMagic::TRUNC(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(157, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::TTEST(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(248, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::VAR(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(160, &v5, a3);
}

void TSCEFormulaCreationMagic::VAR(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(160, &v21, &v20, &v19, &v18, &v17, a7);
}

void TSCEFormulaCreationMagic::VARA(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(161, &v21, &v20, &v19, &v18, &v17, a7);
}

void TSCEFormulaCreationMagic::VARP(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(162, &v5, a3);
}

void TSCEFormulaCreationMagic::VARP(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(162, &v21, &v20, &v19, &v18, &v17, a7);
}

void TSCEFormulaCreationMagic::VARPA(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(163, &v21, &v20, &v19, &v18, &v17, a7);
}

void TSCEFormulaCreationMagic::VDB(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, TSCEFormulaCreator a8@<0:X7>, uint64_t *a9@<X8>)
{
  v22 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0, a8.var0);
  v29 = v22;
  v16 = MEMORY[0x223DA1C10](*a2.var0);
  v28 = v16;
  v17 = MEMORY[0x223DA1C10](*a3.var0);
  v27 = v17;
  v18 = MEMORY[0x223DA1C10](*a4.var0);
  v26 = v18;
  v19 = MEMORY[0x223DA1C10](*a5.var0);
  v25 = v19;
  v20 = MEMORY[0x223DA1C10](*a6.var0);
  v24 = v20;
  v21 = MEMORY[0x223DA1C10](*a7.var0);
  v23 = v21;
  TSCEFormulaCreationMagic::function_7arg(164, &v29, &v28, &v27, &v26, &v25, &v24, &v23, a9);
}

void TSCEFormulaCreationMagic::VLOOKUP(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(165, &v5, a3);
}

void TSCEFormulaCreationMagic::WEEKNUM(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(206, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::WEIBULL(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(288, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::WORKDAY(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(204, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::XIRR(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(311, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::XNPV(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(312, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::YEARFRAC(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(214, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::YIELD(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, TSCEFormulaCreator a8@<0:X7>, uint64_t *a9@<X8>)
{
  v22 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0, a8.var0);
  v29 = v22;
  v16 = MEMORY[0x223DA1C10](*a2.var0);
  v28 = v16;
  v17 = MEMORY[0x223DA1C10](*a3.var0);
  v27 = v17;
  v18 = MEMORY[0x223DA1C10](*a4.var0);
  v26 = v18;
  v19 = MEMORY[0x223DA1C10](*a5.var0);
  v25 = v19;
  v20 = MEMORY[0x223DA1C10](*a6.var0);
  v24 = v20;
  v21 = MEMORY[0x223DA1C10](*a7.var0);
  v23 = v21;
  TSCEFormulaCreationMagic::function_7arg(191, &v29, &v28, &v27, &v26, &v25, &v24, &v23, a9);
}

void TSCEFormulaCreationMagic::YIELDDISC(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(192, &v21, &v20, &v19, &v18, &v17, a7);
}

void TSCEFormulaCreationMagic::YIELDMAT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(193, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::ZTEST(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(215, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::__CELLVALUETYPE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(327, &v5, a3);
}

void TSCEFormulaCreationMagic::__INTERACTIONTYPE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(326, &v5, a3);
}

void TSCEFormulaCreationMagic::__SPILL(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(337, &v5, a3);
}

void TSCEASTNodeArgInfo::TSCEASTNodeArgInfo(TSCEASTNodeArgInfo *this)
{
  this->var0 = 0;
  this->var2._lower = 0;
  this->var2._upper = 0;
  this->var3 = 0x7FFF7FFFFFFFLL;
  *this->var1 = -1;
  this->var1[2] = -1;
}

{
  this->var0 = 0;
  this->var2._lower = 0;
  this->var2._upper = 0;
  this->var3 = 0x7FFF7FFFFFFFLL;
  *this->var1 = -1;
  this->var1[2] = -1;
}

void TSCEASTNodeArgInfo::TSCEASTNodeArgInfo(TSCEASTNodeArgInfo *this, int a2, int a3, int a4)
{
  this->var2._lower = 0;
  this->var2._upper = 0;
  this->var3 = 0x7FFF7FFFFFFFLL;
  this->var0 = 0;
  this->var1[0] = a2;
  this->var1[1] = a3;
  this->var1[2] = a4;
}

{
  this->var2._lower = 0;
  this->var2._upper = 0;
  this->var3 = 0x7FFF7FFFFFFFLL;
  this->var0 = 0;
  this->var1[0] = a2;
  this->var1[1] = a3;
  this->var1[2] = a4;
}

uint64_t TSCEASTNodeArgInfo::positionForArg(TSCEASTNodeArgInfo *this, unsigned int a2)
{
  if (a2 > 2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return this->var1[a2];
  }
}

void TSCEFormulaCreator::TSCEFormulaCreator(TSCEFormulaCreator *this, double a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  this->var0 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22119D5D0;
  v9[3] = &unk_2784603F0;
  *&v9[4] = a2;
  v7 = objc_msgSend_copy(v9, a3, a4, a5, a6);
  var0 = this->var0;
  this->var0 = v7;
}

void TSCEFormulaCreator::TSCEFormulaCreator(TSCEFormulaCreator *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  this->var0 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22119D6B4;
  v8[3] = &unk_278460410;
  v9 = a2;
  v6 = objc_msgSend_copy(v8, a2, a3, a4, a5);
  var0 = this->var0;
  this->var0 = v6;
}

uint64_t *TSCEFormulaCreator::TSCEFormulaCreator(uint64_t *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = 0;
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSCEFormulaCreator::TSCEFormulaCreator(std::nullptr_t)", a4, a5);
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaCreator.mm", v9, v10);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 2536, 0, "Passing NULL as an arg to TSCEFormulaCreator() - it doesn't like that");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
  v21 = objc_msgSend_copy(&unk_2834A28F0, v17, v18, v19, v20);
  v22 = *a1;
  *a1 = v21;

  return a1;
}

void **TSCEFormulaCreator::operator=(void **a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_copy(*a2, a2, a3, a4, a5);
  v7 = *a1;
  *a1 = v6;

  return a1;
}

uint64_t TSCEFormulaCreator::operator-@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22119D918;
  v8[3] = &unk_278460450;
  v8[4] = a1;
  result = objc_msgSend_copy(v8, a2, a3, a4, a5);
  *a6 = result;
  return result;
}

unint64_t sub_22119D918(uint64_t a1, TSCEASTNodeArray *a2)
{
  (*(**(a1 + 32) + 16))();

  return TSCEASTTagOnlyElement::appendTagOnlyElement(a2, 13, v3, v4, v5);
}

uint64_t sub_22119D9CC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2210BC26C(result, a4);
  }

  return result;
}

void sub_22119DA34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_22107C2C0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_22119DA54(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *a4 = 0;
      v7 = *v6++;
      v8 = MEMORY[0x223DA1C10](v7);
      v9 = *a4;
      *a4++ = v8;
    }

    while (v6 != a3);
  }

  return a4;
}

id sub_22119DAB0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_functionIndex(a2, a2, a3, a4, a5);
  if (v7 > 299)
  {
    switch(v7)
    {
      case 300:
        goto LABEL_5;
      case 301:
        v11 = sub_221219ABC(a1);
        goto LABEL_10;
      case 302:
LABEL_5:
        v11 = sub_221219A78(a1);
LABEL_10:
        v17 = v11;
        v18 = 2;
        goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v7 == 298)
  {
    v16 = sub_2212199B4(a1);
    goto LABEL_12;
  }

  if (v7 == 299)
  {
    v16 = sub_2212199F8(a1);
LABEL_12:
    v17 = v16;
    v18 = 1;
    goto LABEL_14;
  }

LABEL_13:
  v19 = MEMORY[0x277D81150];
  v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "NSString *localizedModeName(TSCEStockAttribute, TSCEFunctionSpec *__unsafe_unretained)", v9, v10);
  v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERemoteDataFunctions.mm", v22, v23);
  v29 = objc_msgSend_functionName(a2, v25, v26, v27, v28);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v30, v20, v24, 69, 0, "Unexpected function %@!", v29);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
  v17 = -1;
  v18 = -1;
LABEL_14:
  v35 = objc_msgSend_currentLocale(MEMORY[0x277D81228], v12, v13, v14, v15);
  v40 = objc_msgSend_functionName(a2, v36, v37, v38, v39);
  v42 = objc_msgSend_localizedModeNameForArgument_modeIndex_ofFunction_(v35, v41, v18, v17, v40);

  return v42;
}

id sub_22119DC84(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v10 = objc_msgSend_calcEngine(v5, v6, v7, v8, v9);
  v249 = objc_msgSend_remoteDataStore(v10, v11, v12, v13, v14);

  v15 = **a3;
  v16 = *(*a3 + 8);
  v262[0] = 0;
  v18 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v15, v17, v5, a2, 0, v262);
  v19 = v262[0];
  v250 = objc_msgSend_uppercaseString(v18, v20, v21, v22, v23);

  v261 = v19;
  v25 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v16, v24, v5, a2, 1, &v261);
  v26 = v261;

  v31 = objc_msgSend_uppercaseString(v25, v27, v28, v29, v30);

  if (v26)
  {
    v35 = objc_msgSend_raiseErrorOrConvert_(v5, v32, v26, v33, v34);
    goto LABEL_40;
  }

  v247 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v32, @"%@%@=X", v33, v34, v250, v31);
  v40 = objc_msgSend_functionIndex(a2, v36, v37, v38, v39);
  v41 = *a3;
  v42 = *(a3 + 8) - *a3;
  if (v40 != 301)
  {
    if (v42 < 0x11)
    {
      v58 = 0;
      goto LABEL_16;
    }

    v248 = v41[2];
    if (objc_msgSend_isTokenOrEmptyArg(v248, v51, v52, v53, v54))
    {
      v58 = 0;
LABEL_11:

LABEL_16:
      v59 = sub_221219A58(v58);
      v248 = 0;
      v252 = 0x7FFFFFFFFFFFFFFFLL;
      v253 = 0x7FFFFFFFFFFFFFFFLL;
      v251 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_17;
    }

    v58 = 0;
    v122 = objc_msgSend_deepType_(v248, v55, v5, v56, v57);
    if (v122 > 6)
    {
      if (v122 == 7)
      {
        v255 = 0;
        v174 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v248, v106, v5, a2, 2, &v255);
        v26 = v255;
        v168 = objc_msgSend_lowercaseString(v174, v175, v176, v177, v178);

        if (v26)
        {
          v173 = objc_msgSend_raiseErrorOrConvert_(v5, v179, v26, v181, v182);
          goto LABEL_57;
        }

        v220 = objc_msgSend_locale(v5, v179, v180, v181, v182);
        v58 = sub_22128EE4C(v168, v220);

        if (v58 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v254 = 0;
          v222 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v248, v221, v5, a2, 2, &v254);
          v26 = v254;
          v227 = objc_msgSend_integer(v222, v223, v224, v225, v226);

          if (v26)
          {
            v173 = objc_msgSend_raiseErrorOrConvert_(v5, v228, v26, v230, v231);
            goto LABEL_57;
          }

          if (v227 >= 0xB)
          {
            v232 = objc_msgSend_invalidLiveCurrencyAttributeError(TSCEError, v228, v229, v230, v231);
            v236 = objc_msgSend_raiseErrorOrConvert_(v5, v237, v232, v238, v239);
            goto LABEL_77;
          }

          v58 = v227;
        }

        goto LABEL_82;
      }

      if (v122 == 10)
      {
        goto LABEL_11;
      }
    }

    else
    {
      if (!v122)
      {
        goto LABEL_11;
      }

      if (v122 == 5)
      {
        v256 = 0;
        v123 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v248, v106, v5, a2, 2, &v256);
        v26 = v256;
        v128 = objc_msgSend_integer(v123, v124, v125, v126, v127);

        if (v26)
        {
          v121 = objc_msgSend_raiseErrorOrConvert_(v5, v129, v26, v131, v132);
          goto LABEL_34;
        }

        if (v128 >= 0xB)
        {
          v134 = objc_msgSend_invalidLiveCurrencyAttributeError(TSCEError, v129, v130, v131, v132);
          v204 = objc_msgSend_raiseErrorOrConvert_(v5, v205, v134, v206, v207);
LABEL_64:
          v35 = v204;
          goto LABEL_50;
        }

        v58 = v128;
LABEL_82:
        if (v58 - 9 <= 1)
        {
          v240 = sub_221219A58(v58);
          v134 = sub_221219B30(v240);
          v137 = objc_msgSend_disallowedStockModeError_(TSCEError, v241, v134, v242, v243);
          v141 = objc_msgSend_raiseErrorOrConvert_(v5, v244, v137, v245, v246);
          goto LABEL_49;
        }

        goto LABEL_11;
      }
    }

LABEL_48:
    v134 = objc_msgSend_functionName(a2, v106, v107, v108, v109);
    v137 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v135, v134, 2, v136);
    v141 = objc_msgSend_raiseErrorOrConvert_(v5, v138, v137, v139, v140);
LABEL_49:
    v35 = v141;

LABEL_50:
    goto LABEL_38;
  }

  if (v42 >= 0x11)
  {
    v248 = v41[2];
    if (objc_msgSend_isTokenOrEmptyArg(v248, v43, v44, v45, v46))
    {
      v50 = 0;
LABEL_7:

      goto LABEL_13;
    }

    v50 = 0;
    v110 = objc_msgSend_deepType_(v248, v47, v5, v48, v49);
    if (v110 <= 6)
    {
      if (!v110)
      {
        goto LABEL_7;
      }

      if (v110 == 5)
      {
        v260 = 0;
        v111 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v248, v106, v5, a2, 2, &v260);
        v26 = v260;
        v116 = objc_msgSend_integer(v111, v112, v113, v114, v115);

        if (v26)
        {
          v121 = objc_msgSend_raiseErrorOrConvert_(v5, v117, v26, v119, v120);
LABEL_34:
          v35 = v121;
          goto LABEL_39;
        }

        if (v116 < 4)
        {
          v50 = v116;
          goto LABEL_7;
        }

        v134 = objc_msgSend_invalidHistoricalCurrencyAttributeError(TSCEError, v117, v118, v119, v120);
        v204 = objc_msgSend_raiseErrorOrConvert_(v5, v201, v134, v202, v203);
        goto LABEL_64;
      }

      goto LABEL_48;
    }

    if (v110 != 7)
    {
      if (v110 == 10)
      {
        goto LABEL_7;
      }

      goto LABEL_48;
    }

    v259 = 0;
    v163 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v248, v106, v5, a2, 2, &v259);
    v26 = v259;
    v168 = objc_msgSend_lowercaseString(v163, v164, v165, v166, v167);

    if (v26)
    {
      v173 = objc_msgSend_raiseErrorOrConvert_(v5, v169, v26, v171, v172);
LABEL_57:
      v35 = v173;
LABEL_58:

      goto LABEL_39;
    }

    v208 = objc_msgSend_locale(v5, v169, v170, v171, v172);
    v50 = sub_22128EE64(v168, v208);

    if (v50 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v258 = 0;
      v210 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v248, v209, v5, a2, 2, &v258);
      v26 = v258;
      v215 = objc_msgSend_integer(v210, v211, v212, v213, v214);

      if (v26)
      {
        v173 = objc_msgSend_raiseErrorOrConvert_(v5, v216, v26, v218, v219);
        goto LABEL_57;
      }

      if (v215 >= 4)
      {
        v232 = objc_msgSend_invalidHistoricalCurrencyAttributeError(TSCEError, v216, v217, v218, v219);
        v236 = objc_msgSend_raiseErrorOrConvert_(v5, v233, v232, v234, v235);
LABEL_77:
        v35 = v236;

        v26 = 0;
        goto LABEL_58;
      }

      v50 = v215;
    }

    goto LABEL_7;
  }

  v50 = 0;
LABEL_13:
  v59 = sub_221219A9C(v50);
  v60 = *(*a3 + 24);
  v257 = 0;
  v62 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v60, v61, v5, a2, 3, &v257);
  v26 = v257;
  v248 = v62;
  if (!v26)
  {
    if (!v62 || (objc_msgSend_timeIntervalSinceNow(v62, v63, v64, v65, v66), v101 > 0.0))
    {
      v102 = objc_msgSend_invalidHistoricalDateError(TSCEError, v63, v64, v65, v66);
      v35 = objc_msgSend_raiseErrorOrConvert_(v5, v103, v102, v104, v105);

      goto LABEL_23;
    }

    v252 = 0x7FFFFFFFFFFFFFFFLL;
    v253 = 0x7FFFFFFFFFFFFFFFLL;
    v251 = 0x7FFFFFFFFFFFFFFFLL;
    v142 = MEMORY[0x277CBEAA8];
    objc_msgSend_timeIntervalSinceReferenceDate(v62, v143, v144, v145, v146);
    v152 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v142, v148, v149, v150, v151, (86400 * vcvtmd_s64_f64(v147 / 86400.0)));
    if (!v152)
    {
      v183 = MEMORY[0x277D81150];
      v184 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v153, "TSCEValue *evaluateCurrencyFunction(TSCEEvaluationContext *__strong, TSCEFunctionSpec *__unsafe_unretained, const TSCEValueVector &)", v154, v155);
      v188 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v185, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERemoteDataFunctions.mm", v186, v187);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v183, v189, v184, v188, 244, 0, "Failed to transform date %@ for CURRENCYH function!", 0);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v190, v191, v192, v193);
      v73 = objc_msgSend_invalidHistoricalDateError(TSCEError, v194, v195, v196, v197);
      v35 = objc_msgSend_raiseErrorOrConvert_(v5, v198, v73, v199, v200);
LABEL_37:

LABEL_38:
      v26 = 0;
      goto LABEL_39;
    }

    v156 = v152;

    v161 = objc_msgSend_gregorianCalendar(TSCECalendar, v157, v158, v159, v160);
    objc_msgSend_extractComponentsFromDate_year_month_day_(v161, v162, v156, &v253, &v252, &v251);

    v248 = v156;
LABEL_17:
    v71 = objc_msgSend_functionIndex(a2, v67, v68, v69, v70);
    v73 = objc_msgSend_specifierWithFunctionIndex_symbol_attribute_year_month_day_(TSCERemoteDataSpecifier, v72, v71, v247, v59, v253, v252, v251);
    objc_msgSend_addRemoteDataSpecifierInterestedIn_(v5, v74, v73, v75, v76);
    v80 = objc_msgSend_valueForRemoteData_(v249, v77, v73, v78, v79);
    if ((objc_msgSend_isNil(v80, v81, v82, v83, v84) & 1) != 0 || objc_msgSend_isError(v80, v85, v86, v87, v88))
    {
      v89 = objc_msgSend_attribute(v73, v85, v86, v87, v88);
      v93 = sub_22119DAB0(v89, a2, v90, v91, v92);
      v97 = objc_msgSend_remoteDataUnavailableErrorWithAttribute_(TSCEError, v94, v93, v95, v96);
      v35 = objc_msgSend_raiseErrorOrConvert_(v5, v98, v97, v99, v100);
    }

    else
    {
      v35 = v80;
    }

    goto LABEL_37;
  }

  v35 = objc_msgSend_raiseErrorOrConvert_(v5, v63, v26, v65, v66);
LABEL_23:

LABEL_39:
LABEL_40:

  return v35;
}

id sub_22119E890(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (objc_msgSend_isNumberValue(v4, v5, v6, v7, v8))
  {
    v13 = objc_msgSend_number(v4, v9, v10, v11, v12);
    if (objc_msgSend_hasUnits(v13, v14, v15, v16, v17) && objc_msgSend_dimension(v13, v18, v19, v20, v21) == 4)
    {
      v26 = objc_msgSend_unit(v13, v22, v23, v24, v25);
      v30 = objc_msgSend_currencyCodeForUnit_(TSCEUnitRegistry, v27, v26, v28, v29);

      if (v30)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  v31 = objc_msgSend_locale(v3, v9, v10, v11, v12);
  v30 = objc_msgSend_currencyCode(v31, v32, v33, v34, v35);

LABEL_8:

  return v30;
}

id sub_22119F154(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v10 = objc_msgSend_calcEngine(v5, v6, v7, v8, v9);
  v15 = objc_msgSend_remoteDataStore(v10, v11, v12, v13, v14);

  v16 = **a3;
  v269 = 0;
  v18 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v16, v17, v5, a2, 0, &v269);
  v19 = v269;
  v24 = objc_msgSend_uppercaseString(v18, v20, v21, v22, v23);

  if (v19)
  {
    v29 = objc_msgSend_raiseErrorOrConvert_(v5, v25, v19, v27, v28);
    goto LABEL_31;
  }

  if (!objc_msgSend_length(v24, v25, v26, v27, v28))
  {
    v258 = objc_msgSend_functionName(a2, v30, v31, v32, v33);
    v53 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v51, v258, 1, v52);
    v57 = objc_msgSend_raiseErrorOrConvert_(v5, v54, v53, v55, v56);
    goto LABEL_12;
  }

  v34 = objc_msgSend_functionIndex(a2, v30, v31, v32, v33);
  v39 = *a3;
  v40 = *(a3 + 8) - *a3;
  if (v34 != 299)
  {
    if (v40 < 9 || (objc_msgSend_isTokenOrEmptyArg(v39[1], v35, v36, v37, v38) & 1) != 0)
    {
      v58 = 0;
LABEL_16:
      v42 = sub_221219994(v58);
      v260 = 0x7FFFFFFFFFFFFFFFLL;
      v261 = 0x7FFFFFFFFFFFFFFFLL;
      v258 = 0;
      v259 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_17;
    }

    v258 = *(*a3 + 8);
    v58 = 0;
    v136 = objc_msgSend_deepType_(v258, v133, v5, v134, v135);
    if (v136 > 6)
    {
      if (v136 != 7)
      {
        if (v136 != 10)
        {
          goto LABEL_53;
        }

        goto LABEL_50;
      }

      v263 = 0;
      v184 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v258, v117, v5, a2, 1, &v263);
      v19 = v263;
      v43 = objc_msgSend_lowercaseString(v184, v185, v186, v187, v188);

      if (v19)
      {
        v50 = objc_msgSend_raiseErrorOrConvert_(v5, v189, v19, v191, v192);
        goto LABEL_10;
      }

      v231 = objc_msgSend_locale(v5, v189, v190, v191, v192);
      v58 = sub_22128ECD4(v43, v231);

      if (v58 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v262 = 0;
        v233 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v258, v232, v5, a2, 1, &v262);
        v19 = v262;
        v238 = objc_msgSend_integer(v233, v234, v235, v236, v237);

        if (v19)
        {
          v50 = objc_msgSend_raiseErrorOrConvert_(v5, v239, v19, v241, v242);
          goto LABEL_10;
        }

        if (v238 >= 0x1A)
        {
          v247 = objc_msgSend_invalidLiveStockAttributeError(TSCEError, v239, v240, v241, v242);
          v29 = objc_msgSend_raiseErrorOrConvert_(v5, v248, v247, v249, v250);

          v19 = 0;
          goto LABEL_29;
        }

        v58 = v238;
      }
    }

    else
    {
      if (!v136)
      {
LABEL_50:

        goto LABEL_16;
      }

      if (v136 != 5)
      {
        goto LABEL_53;
      }

      v264 = 0;
      v137 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v258, v117, v5, a2, 1, &v264);
      v19 = v264;
      v142 = objc_msgSend_integer(v137, v138, v139, v140, v141);

      if (v19)
      {
        v132 = objc_msgSend_raiseErrorOrConvert_(v5, v143, v19, v145, v146);
        goto LABEL_44;
      }

      if (v142 >= 0x1A)
      {
        v211 = objc_msgSend_invalidLiveStockAttributeError(TSCEError, v143, v144, v145, v146);
        v215 = objc_msgSend_raiseErrorOrConvert_(v5, v216, v211, v217, v218);
        goto LABEL_66;
      }

      v58 = v142;
    }

    if (v58 <= 0x12 && ((1 << v58) & 0x66000) != 0)
    {
      v251 = sub_221219994(v58);
      v53 = sub_221219B30(v251);
      v71 = objc_msgSend_disallowedStockModeError_(TSCEError, v252, v53, v253, v254);
      v91 = objc_msgSend_raiseErrorOrConvert_(v5, v255, v71, v256, v257);
      goto LABEL_19;
    }

    goto LABEL_50;
  }

  if (v40 >= 9 && (objc_msgSend_isTokenOrEmptyArg(v39[1], v35, v36, v37, v38) & 1) == 0)
  {
    v258 = *(*a3 + 8);
    v41 = 0;
    v121 = objc_msgSend_deepType_(v258, v114, v5, v115, v116);
    if (v121 <= 6)
    {
      if (!v121)
      {
        goto LABEL_47;
      }

      if (v121 == 5)
      {
        v268 = 0;
        v122 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v258, v117, v5, a2, 1, &v268);
        v19 = v268;
        v127 = objc_msgSend_integer(v122, v123, v124, v125, v126);

        if (v19)
        {
          v132 = objc_msgSend_raiseErrorOrConvert_(v5, v128, v19, v130, v131);
LABEL_44:
          v29 = v132;
          goto LABEL_30;
        }

        if (v127 >= 5)
        {
          v211 = objc_msgSend_invalidHistoricalStockAttributeError(TSCEError, v128, v129, v130, v131);
          v215 = objc_msgSend_raiseErrorOrConvert_(v5, v212, v211, v213, v214);
LABEL_66:
          v29 = v215;

          goto LABEL_25;
        }

        v41 = v127;
LABEL_47:

        goto LABEL_8;
      }

LABEL_53:
      v53 = objc_msgSend_functionName(a2, v117, v118, v119, v120);
      v71 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v168, v53, 2, v169);
      v91 = objc_msgSend_raiseErrorOrConvert_(v5, v170, v71, v171, v172);
      goto LABEL_19;
    }

    if (v121 != 7)
    {
      if (v121 == 10)
      {
        goto LABEL_47;
      }

      goto LABEL_53;
    }

    v267 = 0;
    v173 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v258, v117, v5, a2, 1, &v267);
    v19 = v267;
    v178 = objc_msgSend_lowercaseString(v173, v174, v175, v176, v177);

    if (v19)
    {
      v183 = objc_msgSend_raiseErrorOrConvert_(v5, v179, v19, v181, v182);
LABEL_57:
      v29 = v183;
LABEL_58:

      goto LABEL_30;
    }

    v219 = objc_msgSend_locale(v5, v179, v180, v181, v182);
    v41 = sub_22128EE34(v178, v219);

    if (v41 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v266 = 0;
      v221 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v258, v220, v5, a2, 1, &v266);
      v19 = v266;
      v226 = objc_msgSend_integer(v221, v222, v223, v224, v225);

      if (v19)
      {
        v183 = objc_msgSend_raiseErrorOrConvert_(v5, v227, v19, v229, v230);
        goto LABEL_57;
      }

      if (v226 >= 5)
      {
        v243 = objc_msgSend_invalidHistoricalStockAttributeError(TSCEError, v227, v228, v229, v230);
        v29 = objc_msgSend_raiseErrorOrConvert_(v5, v244, v243, v245, v246);

        v19 = 0;
        goto LABEL_58;
      }

      v41 = v226;
    }

    goto LABEL_47;
  }

  v41 = 0;
LABEL_8:
  v42 = sub_2212199D8(v41);
  v43 = *(*a3 + 16);
  v265 = 0;
  v45 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v43, v44, v5, a2, 2, &v265);
  v19 = v265;
  v258 = v45;
  if (v19)
  {
    v50 = objc_msgSend_raiseErrorOrConvert_(v5, v46, v19, v48, v49);
LABEL_10:
    v29 = v50;
LABEL_29:

    goto LABEL_30;
  }

  if (!v45 || (objc_msgSend_timeIntervalSinceNow(v45, v46, v47, v48, v49), v108 > 0.0))
  {
    v109 = objc_msgSend_invalidHistoricalDateError(TSCEError, v46, v47, v48, v49);
    v29 = objc_msgSend_raiseErrorOrConvert_(v5, v110, v109, v111, v112);

    goto LABEL_29;
  }

  v260 = 0x7FFFFFFFFFFFFFFFLL;
  v261 = 0x7FFFFFFFFFFFFFFFLL;
  v259 = 0x7FFFFFFFFFFFFFFFLL;
  v147 = MEMORY[0x277CBEAA8];
  objc_msgSend_timeIntervalSinceReferenceDate(v45, v148, v149, v150, v151);
  v157 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v147, v153, v154, v155, v156, (86400 * vcvtmd_s64_f64(v152 / 86400.0)));
  if (v157)
  {
    v161 = v157;

    v166 = objc_msgSend_gregorianCalendar(TSCECalendar, v162, v163, v164, v165);
    objc_msgSend_extractComponentsFromDate_year_month_day_(v166, v167, v161, &v261, &v260, &v259);

    v258 = v161;
LABEL_17:
    v63 = objc_msgSend_functionIndex(a2, v59, v60, v61, v62);
    v53 = objc_msgSend_specifierWithFunctionIndex_symbol_attribute_year_month_day_(TSCERemoteDataSpecifier, v64, v63, v24, v42, v261, v260, v259);
    objc_msgSend_addRemoteDataSpecifierInterestedIn_(v5, v65, v53, v66, v67);
    v71 = objc_msgSend_valueForRemoteData_(v15, v68, v53, v69, v70);
    v76 = objc_msgSend_asErrorValue(v71, v72, v73, v74, v75);
    v81 = objc_msgSend_error(v76, v77, v78, v79, v80);
    isNotReadyError = objc_msgSend_isNotReadyError(v81, v82, v83, v84, v85);

    if (!isNotReadyError && ((objc_msgSend_isNil(v71, v87, v88, v89, v90) & 1) != 0 || objc_msgSend_isError(v71, v92, v93, v94, v95)))
    {
      v96 = objc_msgSend_attribute(v53, v92, v93, v94, v95);
      v100 = sub_22119DAB0(v96, a2, v97, v98, v99);
      v104 = objc_msgSend_remoteDataUnavailableErrorWithAttribute_(TSCEError, v101, v100, v102, v103);
      v29 = objc_msgSend_raiseErrorOrConvert_(v5, v105, v104, v106, v107);

      goto LABEL_23;
    }

    v91 = v71;
LABEL_19:
    v29 = v91;
LABEL_23:

    goto LABEL_24;
  }

  v193 = MEMORY[0x277D81150];
  v194 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v158, "TSCEValue *evaluateStockFunction(TSCEEvaluationContext *__strong, TSCEFunctionSpec *__unsafe_unretained, const TSCEValueVector &)", v159, v160);
  v198 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v195, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERemoteDataFunctions.mm", v196, v197);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v193, v199, v194, v198, 610, 0, "Failed to transform date %@ for STOCKH function!", 0);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v200, v201, v202, v203);
  v53 = objc_msgSend_invalidHistoricalDateError(TSCEError, v204, v205, v206, v207);
  v57 = objc_msgSend_raiseErrorOrConvert_(v5, v208, v53, v209, v210);
LABEL_12:
  v29 = v57;
LABEL_24:

LABEL_25:
  v19 = 0;
LABEL_30:

LABEL_31:

  return v29;
}

void sub_2211A0C90(uint64_t a1, void *a2)
{
  v12 = a2;
  objc_msgSend_setKeepObjectInMemory_(v12, v3, 1, v4, v5);
  v9 = objc_msgSend__groupForTileID_(*(a1 + 32), v6, *(a1 + 40), v7, v8);
  objc_msgSend_setReference_forTileID_(v9, v10, v12, *(a1 + 40), v11);
}

void sub_2211A0D20(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_willModifyForUpgrade(*(a1 + 32), a2, a3, a4, a5);
  v6 = *(a1 + 32);
  v12 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v7, 0, 1000000, v8);
  objc_msgSend_pruneTilesForRows_(v6, v9, v12, v10, v11);
}

__n128 sub_2211A0DA8(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_2211A0DCC(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_2211A0DF8(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_msgSend_setKeepObjectInMemory_(v3, v4, 1, v5, v6);
  v7 = sub_2211A6CD0((*(*(a1 + 32) + 8) + 48), (a1 + 40));
  v8 = v7[3];
  v7[3] = v3;
}

uint64_t sub_2211A0E74(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_willModifyForUpgrade(*(a1 + 32), a2, a3, a4, a5);
  v7 = *(a1 + 32);
  v8 = *(*(a1 + 40) + 8) + 48;
  v9 = *(*(a1 + 48) + 8) + 48;

  return MEMORY[0x2821F9670](v7, sel__upgradeFromTileIDMap_referenceMap_, v8, v9, v6);
}

BOOL sub_2211A1484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a2 == *a3)
  {
    return *(a2 + 8) < *(a3 + 8);
  }

  else
  {
    return *a2 < *a3;
  }
}

void sub_2211A14AC(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = (*(a1 + 48) + a3);
  v21 = v5;
  v9 = objc_msgSend__tileForID_createIfMissing_(*(a1 + 32), v7, v6 >> 8, 1, v8);
  objc_msgSend_spliceRowInfo_atTileRowIndex_overwrite_(v9, v10, v21, v6, 1);
  if ((objc_msgSend_bncStorageBufferExists(v21, v11, v12, v13, v14) & 1) == 0)
  {
    objc_msgSend_setLastSavedInBNC_(v9, v15, 0, v16, v17);
  }

  if (objc_msgSend_containsIndex_(*(a1 + 40), v15, v6, v16, v17))
  {
    *(*(a1 + 32) + 160) = 1;
    if (*MEMORY[0x277D81408] != -1)
    {
      sub_2216F6D0C();
    }
  }

  objc_msgSend_addIndex_(*(a1 + 40), v18, v6, v19, v20);
}

void sub_2211A15C8()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_2211A160C()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_2211A1988(void *a1, void *a2, int a3)
{
  v25 = a2;
  v7 = a1[5];
  v8 = *(v7 + 40);
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = *(v7 + 32);
  v10 = *v8;
  if (v9 >= *v8)
  {
    if (v10 != *(v7 + 36))
    {
LABEL_7:
      *v8 = v10 + 1;
      v11 = google::protobuf::Arena::CreateMaybeMessage<TST::TileStorage_Tile>(*(v7 + 24));
      v12 = *(v7 + 32);
      v13 = *(v7 + 40) + 8 * v12;
      *(v7 + 32) = v12 + 1;
      *(v13 + 8) = v11;
      goto LABEL_8;
    }

LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v7 + 24));
    v8 = *(v7 + 40);
    v10 = *v8;
    goto LABEL_7;
  }

  *(v7 + 32) = v9 + 1;
  v11 = *&v8[2 * v9 + 2];
LABEL_8:
  v14 = *(v11 + 16);
  *(v11 + 16) = v14 | 2;
  *(v11 + 32) = a3;
  v15 = a1[4];
  *(v11 + 16) = v14 | 3;
  v16 = *(v11 + 24);
  if (!v16)
  {
    v17 = *(v11 + 8);
    if (v17)
    {
      v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
    }

    v16 = MEMORY[0x223DA0390](v17);
    *(v11 + 24) = v16;
  }

  objc_msgSend_setStrongLazyReference_message_(v15, v5, v25, v16, v6);
  v18 = a1[6];
  v19 = *(v18 + 32);
  if (!v19)
  {
    goto LABEL_17;
  }

  v20 = *(v18 + 24);
  v21 = *v19;
  if (v20 < *v19)
  {
    *(v18 + 24) = v20 + 1;
    v22 = *&v19[2 * v20 + 2];
    goto LABEL_19;
  }

  if (v21 == *(v18 + 28))
  {
LABEL_17:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v18 + 16));
    v19 = *(v18 + 32);
    v21 = *v19;
  }

  *v19 = v21 + 1;
  v22 = google::protobuf::Arena::CreateMaybeMessage<TST::TableRBTree_Node>(*(v18 + 16));
  v23 = *(v18 + 24);
  v24 = *(v18 + 32) + 8 * v23;
  *(v18 + 24) = v23 + 1;
  *(v24 + 8) = v22;
LABEL_19:
  v22[4] |= 3u;
  v22[6] = a3 << 8;
  v22[7] = a3;
}

void sub_2211A1CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2211A1CEC(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  v10 = objc_msgSend_archivingCompatibilityVersion(v12, v6, v7, v8, v9);
  v11 = *(*(a1 + 32) + 8);
  if (v10 > *(v11 + 24))
  {
    *(v11 + 24) = v10;
  }

  if (v10 == 0xA000000000003)
  {
    *a4 = 1;
  }
}

void sub_2211A1F4C()
{
  v0 = objc_alloc_init(MEMORY[0x277D81378]);
  v1 = qword_27CFB5298;
  qword_27CFB5298 = v0;
}

void sub_2211A268C(uint64_t a1, void *a2, uint64_t a3)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2211A2730;
  v8[3] = &unk_2784605B0;
  v9 = *(a1 + 32);
  v10 = a3;
  objc_msgSend_enumerateTilesWithBlock_(a2, v5, v8, v6, v7);
}

uint64_t sub_2211A2730(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  if (*a4 == 1)
  {
    **(a1 + 40) = 1;
  }

  return result;
}

void sub_2211A282C(uint64_t a1, void *a2, uint64_t a3)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2211A28D0;
  v8[3] = &unk_2784605B0;
  v9 = *(a1 + 32);
  v10 = a3;
  objc_msgSend_enumerateLoadedTilesWithBlock_(a2, v5, v8, v6, v7);
}

uint64_t sub_2211A28D0(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  if (*a4 == 1)
  {
    **(a1 + 40) = 1;
  }

  return result;
}

void sub_2211A3E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24)
{
  _Block_object_dispose((v25 - 136), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2211A3EB0(uint64_t result, const char *a2, unint64_t a3, _BYTE *a4, uint64_t a5)
{
  v6 = *(result + 48);
  v7 = a3 >= v6;
  v8 = a3 - v6;
  if (v7)
  {
    if (*(result + 56) + v6 <= a3)
    {
      *a4 = 1;
    }

    else
    {
      *(*(*(result + 40) + 8) + 24) = 1;
      return objc_msgSend_replacePointerAtIndex_withPointer_(*(result + 32), a2, v8, a2, a5);
    }
  }

  return result;
}

uint64_t sub_2211A3EF8(uint64_t result, const char *a2, unint64_t a3, _BYTE *a4, uint64_t a5)
{
  v6 = *(result + 48);
  v7 = a3 >= v6;
  v8 = a3 - v6;
  if (v7)
  {
    if (*(result + 56) + v6 <= a3)
    {
      *a4 = 1;
    }

    else
    {
      *(*(*(result + 40) + 8) + 24) = 1;
      return objc_msgSend_replacePointerAtIndex_withPointer_(*(result + 32), a2, v8, a2, a5);
    }
  }

  return result;
}

void sub_2211A4070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2211A40A8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2211A40C0(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = *(*(*(a1 + 40) + 8) + 40);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2211A41A4;
  v12[3] = &unk_278460648;
  v7 = *(a1 + 32);
  v13 = v5;
  v14 = v7;
  v15 = a3;
  v8 = v5;
  objc_msgSend_performAsync_(v6, v9, v12, v10, v11);
}

void sub_2211A426C(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2211A4314;
  v9[3] = &unk_278460698;
  v12 = a3;
  v10 = *(a1 + 32);
  v11 = a4;
  objc_msgSend_enumerateRowsAndIndexesWithBlock_(a2, v6, v9, v7, v8);
}

uint64_t sub_2211A4314(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  if (*a4 == 1)
  {
    **(a1 + 40) = 1;
  }

  return result;
}

void sub_2211A44CC(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2211A4500(uint64_t a1, void *a2, int a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(a1 + 48) + a3;
  if (v8 >= *(a1 + 52))
  {
    if (v8 <= *(a1 + 56))
    {
      v9 = v7;
      (*(*(a1 + 32) + 16))();
      v7 = v9;
      if (*a4 == 1)
      {
        *(*(*(a1 + 40) + 8) + 24) = 1;
      }
    }

    else
    {
      *a4 = 1;
    }
  }
}

void sub_2211A4AE0()
{
  v0 = TSULogCreateCategory();
  v1 = TSTTilesCat_log_t;
  TSTTilesCat_log_t = v0;
}

void sub_2211A4BA4()
{
  v0 = TSULogCreateCategory();
  v1 = TSTTilesCat_log_t;
  TSTTilesCat_log_t = v0;
}

void sub_2211A4E2C()
{
  v0 = TSULogCreateCategory();
  v1 = TSTTilesCat_log_t;
  TSTTilesCat_log_t = v0;
}

void sub_2211A5090()
{
  v0 = TSULogCreateCategory();
  v1 = TSTTilesCat_log_t;
  TSTTilesCat_log_t = v0;
}

void sub_2211A51EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_2211A520C(uint64_t a1, void *a2)
{
  v16 = a2;
  if (objc_msgSend_cellCount(v16, v3, v4, v5, v6))
  {
    v14 = objc_msgSend_maxColumnIndex(v16, v7, v8, v9, v10);
    v15 = 0;
    do
    {
      if (objc_msgSend_cellStorageRefAtIndex_(v16, v11, v15, v12, v13))
      {
        objc_msgSend_incrementValueForKey_(*(*(*(a1 + 32) + 8) + 40), v11, v15, v12, v13);
      }

      ++v15;
    }

    while (v14 >= v15);
  }
}

void sub_2211A5480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2211A54BC(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_removeColumnsAtColumnIndex_numberOfColumns_(a2, a2, *(a1 + 52), *(a1 + 48), a5);
  if (objc_msgSend_count(v7, v8, v9, v10, v11))
  {
    os_unfair_lock_lock((*(*(a1 + 40) + 8) + 48));
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_2211A55BC;
    v15[3] = &unk_278460730;
    v17 = a3;
    v16 = *(a1 + 32);
    objc_msgSend_enumerateKeysAndValuesUsingBlock_(v7, v12, v15, v13, v14);
    os_unfair_lock_unlock((*(*(a1 + 40) + 8) + 48));
  }
}

void sub_2211A57CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_2211A57EC(uint64_t a1, void *a2, unsigned int a3)
{
  v19 = a2;
  if (!v19)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTTableTileStorage populatedRows]_block_invoke", v6, v7);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 1438, 0, "invalid nil value for '%{public}s'", "rowInfo");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
  }

  objc_msgSend_addIndex_(*(*(*(a1 + 32) + 8) + 40), v5, a3, v6, v7);
}

void sub_2211A5A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2211A5A3C(uint64_t a1, const char *a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v6 = a2;
  v8 = objc_msgSend__tileForID_createIfMissing_(*(a1 + 32), a2, a2, 0, a5);
  v27 = v8;
  if (!v8)
  {
    TSUSetCrashReporterInfo();
    v17 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSTTableTileStorage lastPopulatedRowIndex]_block_invoke", v19, v20, "[TSTTableTileStorage lastPopulatedRowIndex]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", 1457);
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", v23, v24);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v26, v21, v25, 1457, 1, "Corrupt tile ID set!");

    TSUCrashBreakpoint();
    abort();
  }

  if ((objc_msgSend_isEmpty(v8, v9, v10, v11, v12) & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_maxRow(v27, v13, v14, v15, v16) + (v6 << 8);
    *a3 = 1;
  }
}

void sub_2211A5D24(uint64_t a1, void *a2)
{
  v9 = a2;
  objc_msgSend_willModifyForUpgrade(v9, v2, v3, v4, v5);
  objc_msgSend_enumerateRowsWithBlock_(v9, v6, &unk_2834A2A70, v7, v8);
}

void sub_2211A5E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2211A5E70(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  result = objc_msgSend_lastSavedInBNC(a2, a2, a3, a4, a5);
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void sub_2211A5FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Block_object_dispose((v20 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_2211A6024(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 1;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_2211A40A8;
  v20 = sub_2211A40B8;
  v21 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCAB68], v6, @"Tile ID %lu, firstRow:%d\n", v7, v8, a3 >> 8, a3);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2211A61C4;
  v15[3] = &unk_2784607C0;
  v15[4] = &v22;
  v15[5] = &v16;
  objc_msgSend_enumerateRowsWithBlock_(v5, v9, v15, v10, v11);
  if ((v23[3] & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    objc_msgSend_appendString_(*(*(*(a1 + 40) + 8) + 40), v12, v17[5], v13, v14);
  }

  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);
}

void sub_2211A618C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 80), 8);

  _Unwind_Resume(a1);
}

void sub_2211A61C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = 0;
  v7 = objc_msgSend_validateWithResult_(v3, v4, &v12, v5, v6);
  v11 = v12;
  if ((v7 & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    objc_msgSend_appendString_(*(*(*(a1 + 40) + 8) + 40), v8, v11, v9, v10);
  }
}

void sub_2211A6408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose((v25 - 96), 8);
  _Block_object_dispose((v25 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_2211A645C(uint64_t a1, void *a2, uint64_t a3)
{
  v41 = a2;
  if (objc_msgSend_isEmpty(v41, v5, v6, v7, v8))
  {
    if (a3)
    {
      v13 = MEMORY[0x277D81150];
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTTableTileStorage auditTilesForRowOverlapAndExtensionPastTableBounds:withDataStore:result:]_block_invoke", v11, v12);
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", v16, v17);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 1576, 0, "Expected non-empty tile.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
    }
  }

  else
  {
    v24 = objc_msgSend_maxRow(v41, v9, v10, v11, v12);
    v25 = (v24 + 1);
    v31 = (v24 + a3);
    if (objc_msgSend_intersectsIndexesInRange_(*(*(*(a1 + 40) + 8) + 40), v26, a3, v25, v27))
    {
      objc_msgSend_appendFormat_(*(a1 + 32), v28, @"Tile with rows %d-%d overlaps with previous tiles in the table.\n", v29, v30, a3, v31);
      *(*(*(a1 + 48) + 8) + 24) = 0;
    }

    objc_msgSend_addIndexesInRange_(*(*(*(a1 + 40) + 8) + 40), v28, a3, v25, v30);
    v36 = objc_msgSend_maxColumn(v41, v32, v33, v34, v35);
    if (v36 != 0x7FFF)
    {
      v40 = *(a1 + 68);
      if (v31 > *(a1 + 64) || v36 > v40)
      {
        objc_msgSend_appendFormat_(*(a1 + 32), v37, @"TileLastRow:%d tileMaxColumn:%d extends beyond tableModelLastRow:%d lastColumn:%d\n", v38, v39, v31, v36, *(a1 + 64), v40);
        *(*(*(a1 + 56) + 8) + 24) = 0;
      }
    }
  }
}

void sub_2211A67DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  _Block_object_dispose(&a14, 8);
  sub_2210BC9F8(v21 + 48, a21);
  _Unwind_Resume(a1);
}

void *sub_2211A6800(void *result, void *a2)
{
  result[6] = a2[6];
  v2 = a2 + 7;
  v3 = a2[7];
  result[7] = v3;
  v4 = result + 7;
  v5 = a2[8];
  result[8] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[6] = v2;
    *v2 = 0;
    a2[8] = 0;
  }

  else
  {
    result[6] = v4;
  }

  return result;
}

uint64_t sub_2211A6848(uint64_t a1, void *a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2211A68C4;
  v7[3] = &unk_278460880;
  v5 = *(a1 + 32);
  v8 = a3;
  v7[4] = v5;
  v7[5] = a3 >> 8;
  return objc_msgSend_enumerateRowsAndIndexesWithBlock_(a2, a2, v7, a4, a5);
}

uint64_t sub_2211A68C4(uint64_t a1, void *a2, int a3)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2211A6948;
  v5[3] = &unk_278460858;
  v6 = *(a1 + 48);
  v7 = a3;
  v3 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v5[5] = v3;
  return objc_msgSend_enumerateStoragesInColumnRange_withBlock_(a2, a2, 0, 1000, v5);
}

id sub_2211A6A08(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  v9 = objc_msgSend__tileForID_createIfMissing_(*(a1 + 32), a2, a2 >> 8, 1, a5);
  if (!v9)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableTileStorage prepareToApplyConcurrentCellMap:]_block_invoke", v7, v8);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 1745, 0, "invalid nil value for '%{public}s'", "tile");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  v25 = objc_msgSend_findOrAddRowInfoAtTileRowIndex_(v9, v6, v5, v7, v8);
  if (!v25)
  {
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSTTableTileStorage prepareToApplyConcurrentCellMap:]_block_invoke", v23, v24);
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", v29, v30);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v32, v27, v31, 1748, 0, "invalid nil value for '%{public}s'", "rowInfo");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35, v36);
  }

  objc_msgSend_willModify(v9, v21, v22, v23, v24);
  v39 = objc_msgSend_pairWithFirst_second_(MEMORY[0x277D812A8], v37, v9, v25, v38);

  return v39;
}

void sub_2211A6C88(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_22107C238();
}

void *sub_2211A6CD0(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_2211A6F18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_221087E7C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2211A6F2C(uint64_t result, __int128 *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = (a2 - 1);
  v96 = a2 - 1;
  v97 = a2 - 3;
  v98 = a2 - 2;
  v10 = v8;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    v8 = v10;
    v12 = v11;
    v13 = (a2 - v10) >> 4;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        result = (*(*a3 + 16))();
        if (result)
        {
          v89 = *v10;
          *v10 = *(a2 - 4);
          *(a2 - 4) = v89;
          v90 = *(v10 + 8);
          *(v10 + 8) = *(a2 - 1);
          *(a2 - 1) = v90;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v13 == 3)
    {
      v78 = (*(*a3 + 16))();
      result = (*(*a3 + 16))();
      if (v78)
      {
        v80 = (v10 + 8);
        v79 = *v10;
        if (result)
        {
          *v10 = *(a2 - 4);
        }

        else
        {
          *v10 = *(v10 + 16);
          *(v10 + 16) = v79;
          v80 = (v10 + 24);
          v94 = *(v10 + 8);
          *(v10 + 8) = *(v10 + 24);
          *(v10 + 24) = v94;
          result = (*(*a3 + 16))();
          if (!result)
          {
            return result;
          }

          v79 = *(v10 + 16);
          *(v10 + 16) = *(a2 - 4);
        }

        *(a2 - 4) = v79;
      }

      else
      {
        if (!result)
        {
          return result;
        }

        v91 = *(v10 + 16);
        *(v10 + 16) = *(a2 - 4);
        *(a2 - 4) = v91;
        v92 = *(v10 + 24);
        v96 = (v10 + 24);
        *(v10 + 24) = *(a2 - 1);
        *(a2 - 1) = v92;
        result = (*(*a3 + 16))();
        if (!result)
        {
          return result;
        }

        v93 = *v10;
        *v10 = *(v10 + 16);
        *(v10 + 16) = v93;
        v80 = (v10 + 8);
      }

      v95 = *v80;
      *v80 = *v96;
      *v96 = v95;
      return result;
    }

    if (v13 == 4)
    {
      break;
    }

    if (v13 == 5)
    {
      sub_2211A79A8(v10, (v10 + 16), (v10 + 32), (v10 + 48), a3);
      result = (*(*a3 + 16))();
      if (result)
      {
        v81 = *(v10 + 48);
        *(v10 + 48) = *(a2 - 4);
        *(a2 - 4) = v81;
        v82 = *(v10 + 56);
        *(v10 + 56) = *(a2 - 1);
        *(a2 - 1) = v82;
        result = (*(*a3 + 16))();
        if (result)
        {
          v83 = *(v10 + 32);
          *(v10 + 32) = *(v10 + 48);
          *(v10 + 48) = v83;
          v84 = *(v10 + 40);
          *(v10 + 40) = *(v10 + 56);
          *(v10 + 56) = v84;
          result = (*(*a3 + 16))();
          if (result)
          {
            v85 = *(v10 + 16);
            *(v10 + 16) = *(v10 + 32);
            *(v10 + 32) = v85;
            v86 = *(v10 + 24);
            *(v10 + 24) = *(v10 + 40);
            *(v10 + 40) = v86;
            result = (*(*a3 + 16))();
            if (result)
            {
              v87 = *v10;
              *v10 = *(v10 + 16);
              *(v10 + 16) = v87;
              v88 = *(v10 + 8);
              *(v10 + 8) = *(v10 + 24);
              *(v10 + 24) = v88;
            }
          }
        }
      }

      return result;
    }

LABEL_11:
    if (v13 <= 23)
    {
      if (a5)
      {

        return sub_2211A7BAC(v10, a2, a3);
      }

      else
      {

        return sub_2211A7CA0(v10, a2, a3);
      }
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        return sub_2211A853C(v10, a2, a2, a3);
      }

      return result;
    }

    v14 = v10 + 16 * (v13 >> 1);
    v15 = *(*a3 + 16);
    if (v13 >= 0x81)
    {
      v16 = v15();
      v17 = (*(*a3 + 16))();
      if (v16)
      {
        v19 = (v8 + 8);
        v18 = *v8;
        if (v17)
        {
          *v8 = *v9;
          goto LABEL_28;
        }

        *v8 = *v14;
        *v14 = v18;
        v19 = (v14 + 8);
        v32 = *(v8 + 8);
        *(v8 + 8) = *(v14 + 8);
        *(v14 + 8) = v32;
        if ((*(*a3 + 16))())
        {
          v18 = *v14;
          *v14 = *v9;
LABEL_28:
          *v9 = v18;
          v26 = a2 - 1;
LABEL_29:
          v33 = *v19;
          *v19 = *v26;
          *v26 = v33;
        }
      }

      else if (v17)
      {
        v24 = *v14;
        *v14 = *(a2 - 4);
        *(a2 - 4) = v24;
        v26 = (v14 + 8);
        v25 = *(v14 + 8);
        *(v14 + 8) = *(a2 - 1);
        *(a2 - 1) = v25;
        if ((*(*a3 + 16))())
        {
          v27 = *v8;
          *v8 = *v14;
          v19 = (v8 + 8);
          *v14 = v27;
          goto LABEL_29;
        }
      }

      v34 = (v14 - 16);
      v35 = (*(*a3 + 16))();
      v36 = (*(*a3 + 16))();
      if (v35)
      {
        v37 = *(v8 + 16);
        v38 = (v8 + 24);
        if (v36)
        {
          *(v8 + 16) = *v98;
          *v98 = v37;
          goto LABEL_41;
        }

        *(v8 + 16) = *v34;
        *v34 = v37;
        v44 = *v38;
        *v38 = *(v14 - 8);
        *(v14 - 8) = v44;
        if ((*(*a3 + 16))())
        {
          v45 = *v34;
          *v34 = *v98;
          *v98 = v45;
          v38 = (v14 - 8);
LABEL_41:
          v41 = a2 - 3;
LABEL_42:
          v46 = *v38;
          *v38 = *v41;
          *v41 = v46;
        }
      }

      else if (v36)
      {
        v39 = *v34;
        *v34 = *(a2 - 8);
        *(a2 - 8) = v39;
        v41 = (v14 - 8);
        v40 = *(v14 - 8);
        *(v14 - 8) = *(a2 - 3);
        *(a2 - 3) = v40;
        if ((*(*a3 + 16))())
        {
          v42 = *(v8 + 16);
          *(v8 + 16) = *v34;
          *v34 = v42;
          v38 = (v8 + 24);
          goto LABEL_42;
        }
      }

      v47 = (v14 + 16);
      v48 = (*(*a3 + 16))();
      v49 = (*(*a3 + 16))();
      if (v48)
      {
        v50 = *(v8 + 32);
        v51 = (v8 + 40);
        if (v49)
        {
          *(v8 + 32) = *v97;
          *v97 = v50;
          goto LABEL_51;
        }

        *(v8 + 32) = *v47;
        *v47 = v50;
        v56 = *v51;
        *v51 = *(v14 + 24);
        *(v14 + 24) = v56;
        if ((*(*a3 + 16))())
        {
          v57 = *v47;
          *v47 = *v97;
          *v97 = v57;
          v51 = (v14 + 24);
LABEL_51:
          v54 = a2 - 5;
LABEL_52:
          v58 = *v51;
          *v51 = *v54;
          *v54 = v58;
        }
      }

      else if (v49)
      {
        v52 = *v47;
        *v47 = *(a2 - 12);
        *(a2 - 12) = v52;
        v54 = (v14 + 24);
        v53 = *(v14 + 24);
        *(v14 + 24) = *(a2 - 5);
        *(a2 - 5) = v53;
        if ((*(*a3 + 16))())
        {
          v55 = *(v8 + 32);
          *(v8 + 32) = *v47;
          *v47 = v55;
          v51 = (v8 + 40);
          goto LABEL_52;
        }
      }

      v59 = (*(*a3 + 16))();
      v60 = (*(*a3 + 16))();
      if (v59)
      {
        v61 = *v34;
        if (v60)
        {
          *v34 = *v47;
          *v47 = v61;
          v62 = (v14 + 24);
          v63 = *v14;
          v64 = (v14 - 8);
          goto LABEL_61;
        }

        *v34 = *v14;
        *v14 = v61;
        v69 = *(v14 - 8);
        *(v14 - 8) = *(v14 + 8);
        *(v14 + 8) = v69;
        v70 = (*(*a3 + 16))();
        v63 = *v14;
        if (v70)
        {
          v71 = *v47;
          *v14 = *v47;
          *v47 = v63;
          v62 = (v14 + 24);
          v63 = v71;
          v64 = (v14 + 8);
LABEL_61:
          v66 = v62;
LABEL_62:
          v72 = *v64;
          *v64 = *v66;
          *v66 = v72;
        }
      }

      else
      {
        v63 = *v14;
        if (v60)
        {
          *v14 = *v47;
          *v47 = v63;
          v66 = (v14 + 8);
          v65 = *(v14 + 8);
          *(v14 + 8) = *(v14 + 24);
          *(v14 + 24) = v65;
          v67 = (*(*a3 + 16))();
          v63 = *v14;
          if (v67)
          {
            v68 = *v34;
            *v34 = v63;
            v64 = (v14 - 8);
            *v14 = v68;
            v63 = v68;
            goto LABEL_62;
          }
        }
      }

      v73 = *v8;
      *v8 = v63;
      v23 = (v8 + 8);
      *v14 = v73;
      v31 = (v14 + 8);
LABEL_64:
      v74 = *v23;
      *v23 = *v31;
      *v31 = v74;
      goto LABEL_65;
    }

    v20 = v15();
    v21 = (*(*a3 + 16))();
    if (v20)
    {
      v23 = (v14 + 8);
      v22 = *v14;
      if (v21)
      {
        *v14 = *v9;
LABEL_38:
        *v9 = v22;
        v31 = a2 - 1;
        goto LABEL_64;
      }

      *v14 = *v10;
      *v10 = v22;
      v23 = (v10 + 8);
      v43 = *(v14 + 8);
      *(v14 + 8) = *(v10 + 8);
      *(v10 + 8) = v43;
      if ((*(*a3 + 16))())
      {
        v22 = *v10;
        *v10 = *v9;
        goto LABEL_38;
      }
    }

    else if (v21)
    {
      v28 = *v10;
      *v10 = *(a2 - 4);
      *(a2 - 4) = v28;
      v29 = *(v10 + 8);
      *(v10 + 8) = *(a2 - 1);
      *(a2 - 1) = v29;
      if ((*(*a3 + 16))())
      {
        v30 = *v14;
        *v14 = *v10;
        *v10 = v30;
        v23 = (v14 + 8);
        v31 = (v10 + 8);
        goto LABEL_64;
      }
    }

LABEL_65:
    if ((a5 & 1) == 0 && ((*(*a3 + 16))() & 1) == 0)
    {
      result = sub_2211A7D78(v8, a2, a3);
      v10 = result;
      goto LABEL_72;
    }

    v75 = sub_2211A7EF0(v8, a2, a3);
    if ((v76 & 1) == 0)
    {
      goto LABEL_70;
    }

    v77 = sub_2211A8060(v8, v75, a3);
    v10 = (v75 + 1);
    result = sub_2211A8060((v75 + 1), a2, a3);
    if (result)
    {
      a4 = -v12;
      a2 = v75;
      if (v77)
      {
        return result;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v77)
    {
LABEL_70:
      result = sub_2211A6F2C(v8, v75, a3, -v12, a5 & 1);
      v10 = (v75 + 1);
LABEL_72:
      a5 = 0;
      a4 = -v12;
      goto LABEL_3;
    }
  }

  return sub_2211A79A8(v10, (v10 + 16), (v10 + 32), a2 - 4, a3);
}

uint64_t sub_2211A79A8(int *a1, int *a2, int *a3, int *a4, uint64_t a5)
{
  v10 = (*(*a5 + 16))();
  v11 = (*(*a5 + 16))();
  if (v10)
  {
    v13 = (a1 + 2);
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
LABEL_9:
      *a3 = v12;
      v16 = (a3 + 2);
      goto LABEL_10;
    }

    *a1 = *a2;
    *a2 = v12;
    v13 = (a2 + 2);
    v18 = *(a1 + 1);
    *(a1 + 1) = *(a2 + 1);
    *(a2 + 1) = v18;
    if ((*(*a5 + 16))())
    {
      v12 = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    v14 = *a2;
    *a2 = *a3;
    *a3 = v14;
    v16 = (a2 + 2);
    v15 = *(a2 + 1);
    *(a2 + 1) = *(a3 + 1);
    *(a3 + 1) = v15;
    if ((*(*a5 + 16))())
    {
      v17 = *a1;
      *a1 = *a2;
      v13 = (a1 + 2);
      *a2 = v17;
LABEL_10:
      v19 = *v13;
      *v13 = *v16;
      *v16 = v19;
    }
  }

  result = (*(*a5 + 16))();
  if (result)
  {
    v21 = *a3;
    *a3 = *a4;
    *a4 = v21;
    v22 = *(a3 + 1);
    *(a3 + 1) = *(a4 + 1);
    *(a4 + 1) = v22;
    result = (*(*a5 + 16))();
    if (result)
    {
      v23 = *a2;
      *a2 = *a3;
      *a3 = v23;
      v24 = *(a2 + 1);
      *(a2 + 1) = *(a3 + 1);
      *(a3 + 1) = v24;
      result = (*(*a5 + 16))();
      if (result)
      {
        v25 = *a1;
        *a1 = *a2;
        *a2 = v25;
        v26 = *(a1 + 1);
        *(a1 + 1) = *(a2 + 1);
        *(a2 + 1) = v26;
      }
    }
  }

  return result;
}

uint64_t sub_2211A7BAC(uint64_t result, __int128 *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 16);
    if ((result + 16) != a2)
    {
      v7 = 0;
      do
      {
        v8 = v5;
        result = (*(*a3 + 16))();
        if (result)
        {
          v12 = *v8;
          v9 = v7;
          while (1)
          {
            v10 = v4 + v9;
            *(v10 + 16) = *(v4 + v9);
            *(v10 + 24) = *(v4 + v9 + 8);
            if (!v9)
            {
              break;
            }

            v9 -= 16;
            result = (*(*a3 + 16))();
            if ((result & 1) == 0)
            {
              v11 = v4 + v9 + 16;
              goto LABEL_10;
            }
          }

          v11 = v4;
LABEL_10:
          *v11 = v12;
          *(v11 + 8) = *(&v12 + 1);
        }

        v5 = v8 + 1;
        v7 += 16;
      }

      while (v8 + 1 != a2);
    }
  }

  return result;
}

uint64_t sub_2211A7CA0(uint64_t result, __int128 *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = (result + 16);
    if ((result + 16) != a2)
    {
      v6 = result - 16;
      do
      {
        v7 = v4;
        result = (*(*a3 + 16))();
        if (result)
        {
          v9 = *v7;
          v8 = v6;
          do
          {
            *(v8 + 32) = *(v8 + 16);
            *(v8 + 40) = *(v8 + 24);
            result = (*(*a3 + 16))();
            v8 -= 16;
          }

          while ((result & 1) != 0);
          *(v8 + 32) = v9;
          *(v8 + 40) = *(&v9 + 1);
        }

        v4 = v7 + 1;
        v6 += 16;
      }

      while (v7 + 1 != a2);
    }
  }

  return result;
}

int *sub_2211A7D78(int *a1, unint64_t a2, uint64_t a3)
{
  v12 = *a1;
  if ((*(*a3 + 16))())
  {
    v6 = a1;
    do
    {
      v6 += 4;
    }

    while (((*(*a3 + 16))() & 1) == 0);
  }

  else
  {
    v7 = a1 + 4;
    do
    {
      v6 = v7;
      if (v7 >= a2)
      {
        break;
      }

      v8 = (*(*a3 + 16))();
      v7 = v6 + 4;
    }

    while (!v8);
  }

  if (v6 < a2)
  {
    do
    {
      a2 -= 16;
    }

    while (((*(*a3 + 16))() & 1) != 0);
  }

  while (v6 < a2)
  {
    v9 = *v6;
    *v6 = *a2;
    *a2 = v9;
    v10 = *(v6 + 1);
    *(v6 + 1) = *(a2 + 8);
    *(a2 + 8) = v10;
    do
    {
      v6 += 4;
    }

    while (!(*(*a3 + 16))());
    do
    {
      a2 -= 16;
    }

    while (((*(*a3 + 16))() & 1) != 0);
  }

  if (v6 - 4 != a1)
  {
    *a1 = *(v6 - 4);
    *(a1 + 1) = *(v6 - 1);
  }

  *(v6 - 4) = v12;
  *(v6 - 1) = *(&v12 + 1);
  return v6;
}

int *sub_2211A7EF0(int *a1, unint64_t a2, uint64_t a3)
{
  v6 = 0;
  v13 = *a1;
  do
  {
    v6 += 4;
  }

  while (((*(*a3 + 16))() & 1) != 0);
  v7 = &a1[v6];
  if (v6 == 4)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      a2 -= 16;
    }

    while (((*(*a3 + 16))() & 1) == 0);
  }

  else
  {
    do
    {
      a2 -= 16;
    }

    while (!(*(*a3 + 16))());
  }

  v8 = &a1[v6];
  if (v7 < a2)
  {
    v9 = a2;
    do
    {
      v10 = *v8;
      *v8 = *v9;
      *v9 = v10;
      v11 = *(v8 + 1);
      *(v8 + 1) = *(v9 + 8);
      *(v9 + 8) = v11;
      do
      {
        ++v8;
      }

      while (((*(*a3 + 16))() & 1) != 0);
      do
      {
        v9 -= 16;
      }

      while (!(*(*a3 + 16))());
    }

    while (v8 < v9);
  }

  result = (v8 - 1);
  if (v8 - 1 != a1)
  {
    *a1 = *(v8 - 4);
    *(a1 + 1) = *(v8 - 1);
  }

  *(v8 - 4) = v13;
  *(v8 - 1) = *(&v13 + 1);
  return result;
}

BOOL sub_2211A8060(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = (a2 - a1) >> 4;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v17 = (*(*a3 + 16))();
      v18 = (*(*a3 + 16))();
      if (v17)
      {
        v20 = (a1 + 8);
        v19 = *a1;
        if (v18)
        {
          *a1 = *(a2 - 4);
        }

        else
        {
          *a1 = *(a1 + 16);
          *(a1 + 16) = v19;
          v20 = (a1 + 24);
          v33 = *(a1 + 8);
          *(a1 + 8) = *(a1 + 24);
          *(a1 + 24) = v33;
          if (!(*(*a3 + 16))())
          {
            return 1;
          }

          v19 = *(a1 + 16);
          *(a1 + 16) = *(a2 - 4);
        }

        *(a2 - 4) = v19;
        v27 = a2 - 1;
      }

      else
      {
        if (!v18)
        {
          return 1;
        }

        v25 = *(a1 + 16);
        *(a1 + 16) = *(a2 - 4);
        *(a2 - 4) = v25;
        v27 = (a1 + 24);
        v26 = *(a1 + 24);
        *(a1 + 24) = *(a2 - 1);
        *(a2 - 1) = v26;
        if (!(*(*a3 + 16))())
        {
          return 1;
        }

        v28 = *a1;
        *a1 = *(a1 + 16);
        *(a1 + 16) = v28;
        v20 = (a1 + 8);
      }

      v34 = *v20;
      *v20 = *v27;
      *v27 = v34;
      return 1;
    }

    if (v6 != 4)
    {
      if (v6 == 5)
      {
        sub_2211A79A8(a1, (a1 + 16), (a1 + 32), (a1 + 48), a3);
        if ((*(*a3 + 16))())
        {
          v9 = *(a1 + 48);
          *(a1 + 48) = *(a2 - 4);
          *(a2 - 4) = v9;
          v10 = *(a1 + 56);
          *(a1 + 56) = *(a2 - 1);
          *(a2 - 1) = v10;
          if ((*(*a3 + 16))())
          {
            v11 = *(a1 + 32);
            *(a1 + 32) = *(a1 + 48);
            *(a1 + 48) = v11;
            v12 = *(a1 + 40);
            *(a1 + 40) = *(a1 + 56);
            *(a1 + 56) = v12;
            if ((*(*a3 + 16))())
            {
              v13 = *(a1 + 16);
              *(a1 + 16) = *(a1 + 32);
              *(a1 + 32) = v13;
              v14 = *(a1 + 24);
              *(a1 + 24) = *(a1 + 40);
              *(a1 + 40) = v14;
              if ((*(*a3 + 16))())
              {
                v15 = *a1;
                *a1 = *(a1 + 16);
                *(a1 + 16) = v15;
                v16 = *(a1 + 8);
                *(a1 + 8) = *(a1 + 24);
                *(a1 + 24) = v16;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    sub_2211A79A8(a1, (a1 + 16), (a1 + 32), a2 - 4, a3);
    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if ((*(*a3 + 16))())
    {
      v7 = *a1;
      *a1 = *(a2 - 4);
      *(a2 - 4) = v7;
      v8 = *(a1 + 8);
      *(a1 + 8) = *(a2 - 1);
      *(a2 - 1) = v8;
    }

    return 1;
  }

LABEL_17:
  v21 = (*(*a3 + 16))();
  v22 = (*(*a3 + 16))();
  if (v21)
  {
    v24 = (a1 + 8);
    v23 = *a1;
    if (v22)
    {
      *a1 = *(a1 + 32);
    }

    else
    {
      *a1 = *(a1 + 16);
      *(a1 + 16) = v23;
      v24 = (a1 + 24);
      v35 = *(a1 + 8);
      *(a1 + 8) = *(a1 + 24);
      *(a1 + 24) = v35;
      if (!(*(*a3 + 16))())
      {
        goto LABEL_35;
      }

      v23 = *(a1 + 16);
      *(a1 + 16) = *(a1 + 32);
    }

    *(a1 + 32) = v23;
    v31 = (a1 + 40);
    goto LABEL_34;
  }

  if (v22)
  {
    v29 = *(a1 + 16);
    *(a1 + 16) = *(a1 + 32);
    *(a1 + 32) = v29;
    v31 = (a1 + 24);
    v30 = *(a1 + 24);
    *(a1 + 24) = *(a1 + 40);
    *(a1 + 40) = v30;
    if ((*(*a3 + 16))())
    {
      v32 = *a1;
      *a1 = *(a1 + 16);
      *(a1 + 16) = v32;
      v24 = (a1 + 8);
LABEL_34:
      v36 = *v24;
      *v24 = *v31;
      *v31 = v36;
    }
  }

LABEL_35:
  v37 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v38 = 0;
  v39 = 0;
  while (1)
  {
    if ((*(*a3 + 16))())
    {
      v44 = *v37;
      v40 = v38;
      while (1)
      {
        v41 = a1 + v40;
        *(v41 + 48) = *(a1 + v40 + 32);
        *(v41 + 56) = *(a1 + v40 + 40);
        if (v40 == -32)
        {
          break;
        }

        v40 -= 16;
        if (((*(*a3 + 16))() & 1) == 0)
        {
          v42 = a1 + v40 + 48;
          goto LABEL_43;
        }
      }

      v42 = a1;
LABEL_43:
      *v42 = v44;
      *(v42 + 8) = *(&v44 + 1);
      if (++v39 == 8)
      {
        return v37 + 1 == a2;
      }
    }

    v38 += 16;
    if (++v37 == a2)
    {
      return 1;
    }
  }
}

int *sub_2211A853C(uint64_t a1, int *a2, int *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = (a1 + 16 * v9);
      do
      {
        sub_2211A86B4(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        if ((*(*a4 + 16))())
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          v14 = *(v12 + 1);
          *(v12 + 1) = *(a1 + 8);
          *(a1 + 8) = v14;
          sub_2211A86B4(a1, a4, v8, a1);
        }

        v12 += 4;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v15 = a2 - 4;
      do
      {
        v16 = *a1;
        v17 = *(a1 + 8);
        v18 = sub_2211A881C(a1, a4, v8);
        if (v15 == v18)
        {
          *v18 = v16;
          *(v18 + 8) = v17;
        }

        else
        {
          *v18 = *v15;
          *(v18 + 8) = *(v15 + 1);
          *v15 = v16;
          *(v15 + 1) = v17;
          sub_2211A88D8(a1, v18 + 16, a4, (v18 + 16 - a1) >> 4);
        }

        v15 -= 4;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_2211A86B4(uint64_t result, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 4)
    {
      v10 = (a4 - result) >> 3;
      v11 = v10 + 1;
      v12 = result + 16 * (v10 + 1);
      v13 = v10 + 2;
      if (v10 + 2 < a3 && (*(*a2 + 16))())
      {
        v12 += 16;
        v11 = v13;
      }

      result = (*(*a2 + 16))();
      if ((result & 1) == 0)
      {
        v17 = *v5;
        do
        {
          v14 = v12;
          *v5 = *v12;
          *(v5 + 1) = *(v12 + 8);
          if (v7 < v11)
          {
            break;
          }

          v15 = (2 * v11) | 1;
          v12 = v6 + 16 * v15;
          v16 = 2 * v11 + 2;
          if (v16 < a3)
          {
            if ((*(*a2 + 16))())
            {
              v12 += 16;
              v15 = v16;
            }
          }

          result = (*(*a2 + 16))();
          v5 = v14;
          v11 = v15;
        }

        while (!result);
        *v14 = v17;
        *(v14 + 8) = *(&v17 + 1);
      }
    }
  }

  return result;
}

uint64_t sub_2211A881C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = a1 + 16 * v6;
    v9 = v8 + 16;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 < a3)
    {
      v12 = v8 + 32;
      if ((*(*a2 + 16))())
      {
        v9 = v12;
        v10 = v11;
      }
    }

    *a1 = *v9;
    *(a1 + 8) = *(v9 + 8);
    a1 = v9;
    v6 = v10;
  }

  while (v10 <= v7);
  return v9;
}

uint64_t sub_2211A88D8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = result + 16 * (v4 >> 1);
    v9 = (a2 - 16);
    result = (*(*a3 + 16))();
    if (result)
    {
      v11 = *v9;
      do
      {
        v10 = v8;
        *v9 = *v8;
        *(v9 + 1) = *(v8 + 8);
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = v6 + 16 * v7;
        result = (*(*a3 + 16))();
        v9 = v10;
      }

      while ((result & 1) != 0);
      *v10 = v11;
      *(v10 + 8) = *(&v11 + 1);
    }
  }

  return result;
}

void sub_2211A89A4(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_221087BBC(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void *sub_2211A8AA4(uint64_t a1, void *a2, unsigned int *a3)
{
  v5 = *(a1 + 8);
  v3 = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    do
    {
      while (1)
      {
        v3 = v4;
        v7 = *(v4 + 8);
        if (v6 >= v7 && (v6 != v7 || *(a3 + 2) >= *(v4 + 18)))
        {
          break;
        }

        v4 = *v4;
        v8 = v3;
        if (!*v3)
        {
          goto LABEL_11;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v8 = v3 + 1;
  }

  else
  {
    v8 = v3;
  }

LABEL_11:
  *a2 = v3;
  return v8;
}

void *sub_2211A8B04(void *a1, uint64_t *a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_2211A8B5C(a1, *a2, (a2 + 1));
  return a1;
}

void sub_2211A8B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    sub_2211A8BE0();
  }
}

uint64_t *sub_2211A8C7C(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t a4)
{
  if (a1 + 1 != a2)
  {
    v4 = *(a2 + 8);
    if (v4 < *a4 || v4 == *a4 && *(a2 + 18) < *(a4 + 4))
    {
      return sub_2211A8D4C(a1, a3, a4);
    }
  }

  v6 = *a2;
  if (*a1 == a2)
  {
    v8 = a2;
  }

  else
  {
    if (v6)
    {
      v7 = *a2;
      do
      {
        v8 = v7;
        v7 = v7[1];
      }

      while (v7);
    }

    else
    {
      v9 = a2;
      do
      {
        v8 = v9[2];
        v10 = *v8 == v9;
        v9 = v8;
      }

      while (v10);
    }

    v11 = *(v8 + 8);
    if (*a4 < v11 || *a4 == v11 && *(a4 + 4) < *(v8 + 18))
    {
      return sub_2211A8AA4(a1, a3, a4);
    }
  }

  if (v6)
  {
    *a3 = v8;
    return v8 + 1;
  }

  else
  {
    *a3 = a2;
  }

  return a2;
}

void *sub_2211A8D4C(uint64_t a1, void *a2, unsigned int *a3)
{
  v5 = *(a1 + 8);
  v3 = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    do
    {
      while (1)
      {
        v3 = v4;
        v7 = *(v4 + 8);
        if (v7 < v6 || v7 == v6 && *(v4 + 18) < *(a3 + 2))
        {
          break;
        }

        v4 = *v4;
        v8 = v3;
        if (!*v3)
        {
          goto LABEL_11;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v8 = v3 + 1;
  }

  else
  {
    v8 = v3;
  }

LABEL_11:
  *a2 = v3;
  return v8;
}

uint64_t sub_2211A8DB0(int a1)
{
  if (a1)
  {
    return a1;
  }

  else
  {
    return 254;
  }
}

uint64_t sub_2211A8DC8(unint64_t a1, unint64_t a2)
{
  v3._lower = a1;
  v3._upper = a2;
  return TSKUIDStruct::CFUUIDBytes(&v3);
}

uint64_t sub_2211A8DF4(unint64_t a1, unint64_t a2)
{
  v3._lower = a1;
  v3._upper = a2;
  return TSKUIDStruct::CFUUIDBytes(&v3);
}

uint64_t sub_2211A8E20(unint64_t a1, unint64_t a2)
{
  v4._lower = a1;
  v4._upper = a2;
  TSKUIDStruct::CFUUIDBytes(&v4);
  return HIBYTE(v2) & 1;
}

BOOL sub_2211A8E4C(unint64_t a1, unint64_t a2)
{
  v4._lower = a1;
  v4._upper = a2;
  TSKUIDStruct::CFUUIDBytes(&v4);
  return (v2 & 0x100000000000000) == 0;
}

uint64_t sub_2211A8E7C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 2 * a2;
  if ((2 * a2) >= 0x100)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSKUIDStruct TSTUidApplyingAggregateIndex(const TSKUIDStruct &, NSUInteger)", a4, a5);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTUIDTypes.mm", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 97, 0, "aggregateIndex * 2 had better fit in a UInt8");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  return MEMORY[0x2821EA4F0](a1, v6);
}

uint64_t TSTMakeCellUID@<X0>(_OWORD *a1@<X8>)
{
  *a1 = 0u;
  a1[1] = 0u;
  return TSKMakeUIDStructCoord();
}

uint64_t sub_2211A8F64@<X0>(int a1@<W2>, int a2@<W3>, _OWORD *a3@<X8>)
{
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = -2;
  }

  if (a2)
  {
    v6._lower = v4;
    v6._upper = v4;
    TSKUIDStruct::CFUUIDBytes(&v6);
  }

  *a3 = 0u;
  a3[1] = 0u;
  return TSKMakeUIDStructCoord();
}

uint64_t sub_2211A8FE8@<X0>(uint64_t a1@<X0>, const UUID *a2@<X1>, _OWORD *a3@<X8>)
{
  *a3 = 0u;
  a3[1] = 0u;
  return sub_221269658(a1, a2);
}

uint64_t sub_2211A8FF4(uint64_t a1)
{
  v6 = *(a1 + 16);
  v1 = TSKUIDStruct::CFUUIDBytes(&v6);
  if (v1 == 254)
  {
    v3 = 0;
  }

  else
  {
    v3 = v1;
  }

  if ((v2 & 0xFEFFFFFFFFFFFFFFLL) == v1)
  {
    return v3;
  }

  else
  {
    return -1;
  }
}

BOOL sub_2211A9038(uint64_t a1)
{
  if (!*a1 && !*(a1 + 8))
  {
    return 0;
  }

  v7 = *(a1 + 16);
  TSKUIDStruct::CFUUIDBytes(&v7);
  if ((v2 & 0x100000000000000) != 0)
  {
    return 0;
  }

  v7 = *(a1 + 16);
  v3 = TSKUIDStruct::CFUUIDBytes(&v7);
  return v3 != 0xFF && (v4 & 0xFEFFFFFFFFFFFFFFLL) == v3;
}

BOOL sub_2211A90B0(uint64_t a1)
{
  if (!*a1 && !*(a1 + 8))
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v1 = TSKUIDStruct::CFUUIDBytes(&v5);
  return v1 != 0xFF && (v2 & 0xFEFFFFFFFFFFFFFFLL) == v1;
}

BOOL sub_2211A910C(uint64_t a1)
{
  if (!*a1 && !*(a1 + 8))
  {
    return 0;
  }

  v7 = *(a1 + 16);
  TSKUIDStruct::CFUUIDBytes(&v7);
  if ((v2 & 0x100000000000000) == 0)
  {
    return 0;
  }

  v7 = *(a1 + 16);
  v4 = TSKUIDStruct::CFUUIDBytes(&v7);
  return v4 != 0xFF && (v5 & 0xFEFFFFFFFFFFFFFFLL) == v4;
}

uint64_t sub_2211A9184@<X0>(unint64_t a1@<X0>, uint64_t **a2@<X8>)
{
  v2 = a1;
  result = sub_2211A9718(a2, a1);
  if (v2)
  {
    v5 = *a2;
    do
    {
      result = TSKMakeUIDStructRandom();
      *v5 = result;
      v5[1] = v6;
      v5 += 2;
      --v2;
    }

    while (v2);
  }

  return result;
}

void sub_2211A91D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2211A91F0(uint64_t *a1, void *a2)
{
  v3 = a2;
  v9 = 0;
  v4 = a1[3];
  v5 = a1[4];
  if (v4 != v5)
  {
    while (1)
    {
      v6 = *a1;
      v7 = a1[1];
      if (*a1 != v7)
      {
        break;
      }

LABEL_5:
      v4 += 16;
      if (v4 == v5)
      {
        goto LABEL_6;
      }
    }

    while (1)
    {
      memset(v8, 0, sizeof(v8));
      TSKMakeUIDStructCoord();
      v3[2](v3, v8, &v9);
      if (v9)
      {
        break;
      }

      v6 += 16;
      if (v6 == v7)
      {
        goto LABEL_5;
      }
    }
  }

LABEL_6:
}

double sub_2211A92C8(uint64_t a1, _DWORD *a2)
{
  result = 1.31245661e-204;
  *a1 = 0x159A55E5075BCD15;
  *(a1 + 8) = 521288629;
  *(a1 + 12) = a2[1] ^ *a2 ^ a2[2] ^ a2[3];
  return result;
}

uint64_t sub_2211A92FC(_DWORD *a1)
{
  v1 = a1[3];
  v2 = ((*a1 ^ (32 * *a1)) >> 12) ^ (v1 >> 29) ^ *a1 ^ (32 * *a1) ^ v1;
  v3 = a1[1] ^ (32 * a1[1]);
  v4 = (v3 >> 12) ^ (v2 >> 29) ^ v3 ^ v2;
  v5 = a1[2] ^ (32 * a1[2]);
  v6 = (v5 >> 12) ^ (v4 >> 29) ^ v5 ^ v4;
  *a1 = v2;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = ((v1 ^ (32 * v1)) >> 12) ^ (v6 >> 29) ^ v1 ^ (32 * v1) ^ v6;
  return v2 | (v4 << 32);
}

uint64_t sub_2211A9368(const char *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = strlen(a1);
  sub_2212CBD1C(&c, a1, v2);
  sub_2212CBDCC(&c, &__dst, 0x10u);
  v5 = __dst;
  return TSKUIDStruct::CFUUIDBytes(&v5);
}

unint64_t sub_2211A9410(const char *a1, const char *a2, int a3, uint64_t a4, uint64_t a5)
{
  v45 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "static TSKUIDStruct TSTUidGenerator::newUID(const char *, const char *, BOOL)", a4, a5);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTUIDTypes.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 293, 0, "Not expecting null pointers here");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v19 = MEMORY[0x277D81150];
  v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "static TSKUIDStruct TSTUidGenerator::newUID(const char *, const char *, BOOL)", a4, a5);
  v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTUIDTypes.mm", v22, v23);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v25, v20, v24, 294, 0, "Not expecting null pointers here");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
LABEL_6:
  v30 = objc_autoreleasePoolPush();
  v31 = strlen(a1);
  v32 = strlen(a2);
  v33 = v32 + v31;
  if (v32 + v31 < 0x400)
  {
    v34 = v32;
    memcpy(__dst, a1, v31);
    memcpy(&__dst[v31], a2, v34 + 1);
    sub_2212CBD1C(&v43, __dst, v33);
    sub_2212CBDCC(&v43, &v41, 0x10u);
    v42 = v41;
    v35 = TSKUIDStruct::CFUUIDBytes(&v42);
    if (a3)
    {
      v37 = v36 | 0x100000000000000;
    }

    else
    {
      v37 = v36 & 0xFEFFFFFFFFFFFFFFLL;
    }

    v41._lower = v35;
    v41._upper = v37;
  }

  else
  {
    if (v31 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_22108CD88();
    }

    if (v31 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v43.Nl) = v31;
    if (v31)
    {
      memcpy(&v43, a1, v31);
    }

    *(&v43.h0 + v31) = 0;
    std::string::append(&v43, a2);
    if ((v43.Nl & 0x80000000) == 0)
    {
      v38 = &v43;
    }

    else
    {
      v38 = *&v43.h0;
    }

    v41._lower = sub_2211A9368(v38);
    v41._upper = v39;
    if (SHIBYTE(v43.Nl) < 0)
    {
      operator delete(*&v43.h0);
    }
  }

  objc_autoreleasePoolPop(v30);
  return v41._lower;
}

void *sub_2211A9718(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_221086F38(result, a2);
  }

  return result;
}

void sub_2211A9774(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2211A9790(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    return;
  }

  if (a2 >= 0x100000)
  {
    TSUSetCrashReporterInfo();
    v5 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableHeaderStorage _allocateBucketsForIndex:]", v7, v8, "[TSTTableHeaderStorage _allocateBucketsForIndex:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", 74, a2);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v14, v9, v13, 74, 1, "Bad header bucket index for creation: %u", a2);
    goto LABEL_11;
  }

  if (a1[(a2 >> 16) + 2])
  {
    return;
  }

  if (!(a2 >> 16))
  {
    TSUSetCrashReporterInfo();
    v15 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSTTableHeaderStorage _allocateBucketsForIndex:]", v17, v18, "[TSTTableHeaderStorage _allocateBucketsForIndex:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", 76);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", v20, v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v22, v9, v13, 76, 1, "Can't be missing the first bucket!");
LABEL_11:

    TSUCrashBreakpoint();
    abort();
  }

  sub_2211A9944(a1, a2, a3, a4, a5);
}

void sub_2211A9944(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    if (a1[18] != 1)
    {
      TSUSetCrashReporterInfo();
      v21 = MEMORY[0x277D81150];
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSTTableHeaderStorage _allocateBuckets]", v23, v24, "[TSTTableHeaderStorage _allocateBuckets]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", 82);
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", v27, v28);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v30, v25, v29, 82, 1, "Asked to create buckets when we've already done so!");

      TSUCrashBreakpoint();
      abort();
    }

    objc_msgSend_willModify(a1, a2, a3, a4, a5);
    v6 = a1 + 1;
    for (i = 0x10000; i != 0x100000; i += 0x10000)
    {
      v8 = [TSTTableHeaderStorageBucket alloc];
      v13 = objc_msgSend_owner(a1, v9, v10, v11, v12);
      v18 = objc_msgSend_context(v13, v14, v15, v16, v17);
      v19 = sub_2211AC86C(v8, v18, i, 0x10000);
      v20 = v6[2];
      v6[2] = v19;

      ++v6;
    }

    a1[18] = 16;
  }
}

id *sub_2211A9AE4(id *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    if (a2 < 0x100000)
    {
      a1 = a1[(a2 >> 16) + 2];
    }

    else
    {
      v6 = MEMORY[0x277D81150];
      v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableHeaderStorage _bucketForIndex:]", a4, a5);
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", v9, v10);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 103, 0, "Unexpected header bucket index: %u!", a2);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
      a1 = 0;
    }
  }

  return a1;
}

void sub_2211A9F98(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a2;
  *(*(a1 + 32) + 144) = objc_msgSend_count(v3, v4, v5, v6, v7);
  v11 = *(*(a1 + 32) + 144);
  if (v11 != 1 && v11 != 16)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTTableHeaderStorage initFromArchive:unarchiver:owner:]_block_invoke", v9, v10);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 154, 0, "Bad header bucket count!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v24 = v3;
  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v34, v38, 16);
  if (v26)
  {
    v27 = 0;
    v28 = *v35;
    do
    {
      v29 = 0;
      v30 = 8 * v27;
      v31 = v27 << 16;
      do
      {
        if (*v35 != v28)
        {
          objc_enumerationMutation(v24);
        }

        v32 = *(*(&v34 + 1) + 8 * v29);
        sub_2216F746C(v32, v31, 0x10000);
        objc_storeStrong((*(a1 + 32) + v30 + 16), v32);
        ++v27;
        ++v29;
        v30 += 8;
        v31 += 0x10000;
      }

      while (v26 != v29);
      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v33, &v34, v38, 16);
    }

    while (v26);
  }
}

uint64_t *sub_2211AC240(uint64_t a1, unsigned int *a2)
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
      v5 = *(v2 + 32);
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

void sub_2211AC334(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_2211AC334(a1, *a2);
    sub_2211AC334(a1, a2[1]);

    operator delete(a2);
  }
}

void *sub_2211AC86C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v10 = a2;
  if (a1)
  {
    if (a3 == *MEMORY[0x277D81490] && a4 == *(MEMORY[0x277D81490] + 8))
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTTableHeaderStorageBucket initWithContext:bounds:]", v8, v9);
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorageBucket.mm", v15, v16);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v17, 58, 0, "Can't initialize a bucket with a bad range!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
    }

    v23 = objc_msgSend_initWithContext_(a1, v7, v10, v8, v9);
    v24 = v23;
    if (v23)
    {
      v23[10] = a3;
      v23[11] = a4;
      v23[9] = 0;
      v25 = objc_alloc_init(MEMORY[0x277D81330]);
      v26 = v24[8];
      v24[8] = v25;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

id sub_2211AC9D0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v6 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], a2, a3, a4, a5);
    v7 = *(a1 + 64);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_2211ACAD0;
    v18[3] = &unk_2784608D0;
    v8 = v6;
    v19 = v8;
    objc_msgSend_foreach_(v7, v9, v18, v10, v11);
    v12 = objc_alloc(MEMORY[0x277CCAA78]);
    v16 = objc_msgSend_initWithIndexSet_(v12, v13, v8, v14, v15);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

id sub_2211ACAD8(uint64_t a1, unsigned int a2)
{
  if (a1)
  {
    v3 = a2;
    v4 = *(a1 + 80);
    v6 = a2 >= v4;
    v5 = a2 - v4;
    v6 = !v6 || v5 >= *(a1 + 88);
    if (v6)
    {
      TSUSetCrashReporterInfo();
      v11 = MEMORY[0x277D81150];
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTTableHeaderStorageBucket _makeHeaderAtIndex:]", v13, v14, "[TSTTableHeaderStorageBucket _makeHeaderAtIndex:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorageBucket.mm", 102);
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorageBucket.mm", v17, v18);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v20, v15, v19, 102, 1, "Index out of range for bucket!");

      TSUCrashBreakpoint();
      abort();
    }

    v7 = objc_opt_new();
    objc_msgSend_setObject_forKey_(*(a1 + 64), v8, v7, v3, v9);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_2211ACC1C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    v6 = *(a1 + 64);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_2211ACCF4;
    v7[3] = &unk_2784608F8;
    v7[4] = &v8;
    objc_msgSend_foreach_(v6, a2, v7, a4, a5);
    *(a1 + 72) = v9[3];
    _Block_object_dispose(&v8, 8);
  }
}

void sub_2211ACCDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_2211ACCF4(uint64_t a1, _BOOL8 a2)
{
  result = sub_2216F7CC4(a2);
  if (result)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return result;
}

void sub_2211ACD34(uint64_t a1, void *a2, unsigned int a3)
{
  v20 = a2;
  if (a1)
  {
    v8 = a3;
    v13 = objc_msgSend_objectForKey_(*(a1 + 64), v5, a3, v6, v7);
    if (!v13)
    {
      if (!v20)
      {
        goto LABEL_12;
      }

      v13 = sub_2211ACAD8(a1, a3);
    }

    objc_msgSend_willModify(a1, v9, v10, v11, v12);
    v14 = sub_2216F7CC4(v13);
    sub_2216F7E50(v13, v20);
    v15 = sub_2216F7CC4(v13);
    if (!sub_2216F7C84(v13))
    {
      objc_msgSend_removeObjectForKey_(*(a1 + 64), v16, v8, v17, v18);
    }

    if (v15 || !v14)
    {
      if (v14 || !v15)
      {
        goto LABEL_12;
      }

      v19 = 1;
    }

    else
    {
      v19 = -1;
    }

    *(a1 + 72) += v19;
  }

LABEL_12:
}

id sub_2211ACE6C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 && *(a1 + 72))
  {
    v5 = objc_msgSend_objectForKey_(*(a1 + 64), a2, a2, a4, a5);
    v6 = v5;
    if (v5)
    {
      v7 = sub_2216F7E60(v5);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_2211ACF04(uint64_t a1, void *a2, unsigned int a3)
{
  v20 = a2;
  if (a1)
  {
    v8 = a3;
    v13 = objc_msgSend_objectForKey_(*(a1 + 64), v5, a3, v6, v7);
    if (!v13)
    {
      if (!v20)
      {
        goto LABEL_12;
      }

      v13 = sub_2211ACAD8(a1, a3);
    }

    objc_msgSend_willModify(a1, v9, v10, v11, v12);
    v14 = sub_2216F7CC4(v13);
    sub_2216F7E6C(v13, v20);
    v15 = sub_2216F7CC4(v13);
    if (!sub_2216F7C84(v13))
    {
      objc_msgSend_removeObjectForKey_(*(a1 + 64), v16, v8, v17, v18);
    }

    if (v15 || !v14)
    {
      if (v14 || !v15)
      {
        goto LABEL_12;
      }

      v19 = 1;
    }

    else
    {
      v19 = -1;
    }

    *(a1 + 72) += v19;
  }

LABEL_12:
}

void sub_2211AD03C(uint64_t a1, unsigned int a2, void *a3)
{
  v20 = a3;
  if (a1)
  {
    v8 = a2;
    v13 = objc_msgSend_objectForKey_(*(a1 + 64), v5, a2, v6, v7);
    if (!v13)
    {
      if ((objc_msgSend_hasHeaderContent(v20, v9, v10, v11, v12) & 1) == 0)
      {
        goto LABEL_12;
      }

      v13 = sub_2211ACAD8(a1, a2);
    }

    objc_msgSend_willModify(a1, v9, v10, v11, v12);
    v14 = sub_2216F7CC4(v13);
    sub_221480590(v13, v20);
    v15 = sub_2216F7CC4(v13);
    if (!sub_2216F7C84(v13))
    {
      objc_msgSend_removeObjectForKey_(*(a1 + 64), v16, v8, v17, v18);
    }

    if (v15 || !v14)
    {
      if (v14 || !v15)
      {
        goto LABEL_12;
      }

      v19 = 1;
    }

    else
    {
      v19 = -1;
    }

    *(a1 + 72) += v19;
  }

LABEL_12:
}

void sub_2211AD178(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 64);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_2211AD240;
    v9[3] = &unk_278460920;
    v9[4] = a1;
    v10 = v3;
    objc_msgSend_foreach_(v5, v6, v9, v7, v8);
  }
}

void sub_2211AD240(uint64_t a1, void *a2)
{
  v18 = a2;
  v3 = sub_2216F7CC4(v18);
  v4 = sub_2216F7E44(v18);
  if (v4)
  {
    v9 = (*(*(a1 + 40) + 16))();
    if (v9 != v4)
    {
      objc_msgSend_willModify(*(a1 + 32), v5, v6, v7, v8);
      sub_2216F7E50(v18, v9);
    }
  }

  v10 = sub_2216F7E60(v18);
  if (v10)
  {
    v15 = (*(*(a1 + 40) + 16))();
    if (v15 != v10)
    {
      objc_msgSend_willModify(*(a1 + 32), v11, v12, v13, v14);
      sub_2216F7E6C(v18, v15);
    }
  }

  v16 = sub_2216F7CC4(v18);
  if (v16 || !v3)
  {
    if (v3 || !v16)
    {
      goto LABEL_14;
    }

    v17 = 1;
  }

  else
  {
    v17 = -1;
  }

  *(*(a1 + 32) + 72) += v17;
LABEL_14:
}

void sub_2211AD3C8(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = sub_2211AD548;
    v28 = sub_2211AD558;
    v29 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], a2, a3, a4, a5);
    v6 = a1[8];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_2211AD560;
    v23[3] = &unk_2784608F8;
    v23[4] = &v24;
    objc_msgSend_foreach_(v6, v7, v23, v8, v9);
    if (objc_msgSend_count(v25[5], v10, v11, v12, v13))
    {
      objc_msgSend_willModify(a1, v14, v15, v16, v17);
      v18 = v25[5];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = sub_2211AD5E4;
      v22[3] = &unk_27845E958;
      v22[4] = a1;
      objc_msgSend_enumerateIndexesUsingBlock_(v18, v19, v22, v20, v21);
    }

    _Block_object_dispose(&v24, 8);
  }
}

void sub_2211AD524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2211AD548(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2211AD560(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  sub_2216F7EC0(v8, 0);
  if (!sub_2216F7C84(v8))
  {
    objc_msgSend_addIndex_(*(*(*(a1 + 32) + 8) + 40), v5, a3, v6, v7);
  }
}

uint64_t sub_2211AD5FC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    return 0;
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = *(a1 + 64);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2211AD6D0;
  v8[3] = &unk_2784608F8;
  v8[4] = &v9;
  objc_msgSend_foreach_(v5, a2, v8, a4, a5);
  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v6;
}

void sub_2211AD6B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2211AD6D0(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 32) + 8) + 24) += sub_2216F7EB4(v3);
}

id sub_2211AD740(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    goto LABEL_8;
  }

  v5 = a3;
  v6 = a2;
  v8 = a2 - a3;
  if (a2 < a3)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableHeaderStorageBucket shiftIndexesBackAtIndex:count:]", a4, a5);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorageBucket.mm", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 429, 0, "Can't shift indexes below zero!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
  }

  v20 = objc_msgSend_maxKey(*(a1 + 64), a2, a3, a4, a5);
  v25 = v20 == 0x7FFFFFFFFFFFFFFFLL ? 0 : v20;
  if (v8 > v25)
  {
LABEL_8:
    v26 = 0;
    goto LABEL_16;
  }

  objc_msgSend_willModify(a1, v21, v22, v23, v24);
  v26 = objc_msgSend_array(MEMORY[0x277D81330], v27, v28, v29, v30);
  v35 = objc_msgSend_minKey(*(a1 + 64), v31, v32, v33, v34);
  if (v35 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v40 = 0;
  }

  else
  {
    v40 = v35;
  }

  if (v40 <= v6)
  {
    v40 = v6;
  }

  if (v40 <= v25)
  {
    v42 = -v5;
    do
    {
      v43 = v40;
      v46 = objc_msgSend_objectForKey_(*(a1 + 64), v36, v40, v38, v39);
      v47 = (v42 + v43);
      v48 = *(a1 + 80);
      v50 = v47 >= v48;
      v49 = v47 - v48;
      v50 = !v50 || v49 >= *(a1 + 88);
      if (v50)
      {
        objc_msgSend_setObject_forKey_(v26, v44, v46, v43, v45);
      }

      else
      {
        v54 = *(a1 + 64);
        if (!v46)
        {
          objc_msgSend_removeObjectForKey_(v54, v44, (v42 + v43), v47, v45);
          goto LABEL_29;
        }

        objc_msgSend_setObject_forKey_(v54, v44, v46, v47, v45);
      }

      objc_msgSend_removeObjectForKey_(*(a1 + 64), v51, v43, v52, v53);
LABEL_29:

      v40 = v43 + 1;
    }

    while (v43 + 1 <= v25);
  }

  sub_2211ACC1C(a1, v36, v37, v38, v39);
LABEL_16:

  return v26;
}

id sub_2211AD968(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a1 || ((v5 = a3, v6 = a2, v8 = objc_msgSend_maxKey(*(a1 + 64), a2, a3, a4, a5), v8 != 0x7FFFFFFFFFFFFFFFLL) ? (v13 = v8) : (v13 = 0), v13 < v6))
  {
    v14 = 0;
    goto LABEL_9;
  }

  objc_msgSend_willModify(a1, v9, v10, v11, v12);
  v14 = objc_msgSend_array(MEMORY[0x277D81330], v15, v16, v17, v18);
  if (v13 >= v6)
  {
    v24 = v13;
    v25 = v13 + v5;
    do
    {
      v28 = objc_msgSend_objectForKey_(*(a1 + 64), v19, v24, v21, v22);
      v29 = *(a1 + 80);
      v31 = v25 >= v29;
      v30 = v25 - v29;
      v31 = !v31 || v30 >= *(a1 + 88);
      if (v31)
      {
        objc_msgSend_setObject_forKey_(v14, v26, v28, v24, v27);
      }

      else
      {
        v35 = *(a1 + 64);
        if (!v28)
        {
          objc_msgSend_removeObjectForKey_(v35, v26, v25, v25, v27);
          goto LABEL_22;
        }

        objc_msgSend_setObject_forKey_(v35, v26, v28, v25, v27);
      }

      objc_msgSend_removeObjectForKey_(*(a1 + 64), v32, v24, v33, v34);
LABEL_22:

      --v25;
    }

    while (v24-- > v6);
  }

  sub_2211ACC1C(a1, v19, v20, v21, v22);
LABEL_9:

  return v14;
}

id sub_2211ADAF8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v5 = *(a1 + 80);
    v7 = a2 >= v5;
    v6 = a2 - v5;
    v7 = !v7 || v6 >= *(a1 + 88);
    if (v7)
    {
      TSUSetCrashReporterInfo();
      v9 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTTableHeaderStorageBucket headerAtIndex:]", v11, v12, "[TSTTableHeaderStorageBucket headerAtIndex:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorageBucket.mm", 524);
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorageBucket.mm", v15, v16);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v18, v13, v17, 524, 1, "Index out of range for bucket!");

      TSUCrashBreakpoint();
      abort();
    }

    a1 = objc_msgSend_objectForKey_(*(a1 + 64), a2, a2, a4, a5);
  }

  return a1;
}

void sub_2211ADC14(uint64_t a1, void *a2, unsigned int a3)
{
  v30 = a2;
  if (a1)
  {
    v9 = *(a1 + 80);
    v11 = a3 >= v9;
    v10 = a3 - v9;
    v11 = !v11 || v10 >= *(a1 + 88);
    if (v11)
    {
      TSUSetCrashReporterInfo();
      v20 = MEMORY[0x277D81150];
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSTTableHeaderStorageBucket setHeader:atIndex:]", v22, v23, "[TSTTableHeaderStorageBucket setHeader:atIndex:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorageBucket.mm", 529);
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorageBucket.mm", v26, v27);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v29, v24, v28, 529, 1, "Index out of range for bucket!");

      TSUCrashBreakpoint();
      abort();
    }

    objc_msgSend_willModify(a1, v5, v6, v7, v8);
    if (*(a1 + 72))
    {
      v15 = objc_msgSend_objectForKey_(*(a1 + 64), v12, a3, v13, v14);
      v16 = sub_2216F7CC4(v15);
    }

    else
    {
      v16 = 0;
    }

    v17 = *(a1 + 64);
    if (v30)
    {
      objc_msgSend_setObject_forKey_(v17, v12, v30, a3, v14);
      v18 = sub_2216F7CC4(v30);
      if (!v16)
      {
        goto LABEL_15;
      }
    }

    else
    {
      objc_msgSend_removeObjectForKey_(v17, v12, a3, v13, v14);
      v18 = 0;
      if (!v16)
      {
        goto LABEL_15;
      }
    }

    if (!v18)
    {
      v19 = -1;
LABEL_17:
      *(a1 + 72) += v19;
      goto LABEL_18;
    }

LABEL_15:
    if (v16 || !v18)
    {
      goto LABEL_18;
    }

    v19 = 1;
    goto LABEL_17;
  }

LABEL_18:
}

void sub_2211ADE0C(void **a1, void *a2)
{
  v10 = a2;
  if (a1)
  {
    if (v10 && objc_msgSend_count(v10, v3, v4, v5, v6))
    {
      objc_msgSend_willModify(a1, v3, v4, v5, v6);
      objc_msgSend_addObjectsFromArray_(a1[8], v7, v10, v8, v9);
    }

    sub_2211ACC1C(a1, v3, v4, v5, v6);
  }
}

void sub_2211AE3C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2211AE40C(uint64_t a1, void *a2, int a3)
{
  v12 = a2;
  if (!v12 || !sub_2216F7C84(v12))
  {
    goto LABEL_12;
  }

  v5 = *(a1 + 48);
  v6 = *(v5 + 40);
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = *(v5 + 32);
  v8 = *v6;
  if (v7 < *v6)
  {
    *(v5 + 32) = v7 + 1;
    v9 = *&v6[2 * v7 + 2];
    goto LABEL_10;
  }

  if (v8 == *(v5 + 36))
  {
LABEL_8:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 24));
    v6 = *(v5 + 40);
    v8 = *v6;
  }

  *v6 = v8 + 1;
  v9 = google::protobuf::Arena::CreateMaybeMessage<TST::HeaderStorageBucket_Header>(*(v5 + 24));
  v10 = *(v5 + 32);
  v11 = *(v5 + 40) + 8 * v10;
  *(v5 + 32) = v10 + 1;
  *(v11 + 8) = v9;
LABEL_10:
  sub_221480458(v12, v9, *(a1 + 32), a3);
  if (sub_2216F7CC4(v12))
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }

LABEL_12:
}

void sub_2211AF1C0(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);

  MEMORY[0x223D9F890](va);
  sub_2211AF274(va1);

  _Unwind_Resume(a1);
}

void sub_2211B0EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2211B0EE4(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  sub_2212C7250(a1 + 64);

  return TSCEFormulaRewriteContextRecord::operator=(a1 + 64, a2 + 64);
}

void sub_2211B0F34(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v38 = objc_msgSend_coordFromIndex_(TSTFormulaStore, v6, a3, v7, v8);
  v13 = v5;
  if (objc_msgSend_hasBadRefWithUidInfo(v5, v9, v10, v11, v12))
  {
    TSCEFormulaRewriteContext::setContainingCellCoord((*(*(a1 + 40) + 8) + 48), &v38);
    v16 = objc_msgSend_copyByRepairingBadReferences_clearUidHistory_(v5, v14, *(*(a1 + 40) + 8) + 48, 0, v15);

    v13 = v16;
    objc_msgSend_setObject_forKey_(*(*(a1 + 32) + 32), v17, v16, a3, v18);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v24 = objc_msgSend_emptyReferenceSetWrapper(WeakRetained, v20, v21, v22, v23);

  if (v24)
  {
    v29 = objc_msgSend_referenceSet(v24, v25, v26, v27, v28);
    v30 = objc_loadWeakRetained((*(a1 + 32) + 24));
    v31 = *(a1 + 32);
    *&v37.var0 = v38;
    v37.var6 = *(v31 + 8);
    objc_msgSend_getPrecedents_calcEngine_hostCell_allowImplicitIntersection_returnUidReferences_(v13, v32, v29, v30, &v37, 1, 0);
  }

  TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v37, 0, 1);
  v33 = objc_loadWeakRetained((*(a1 + 32) + 24));
  v34 = *(a1 + 32);
  TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v36, &v37);
  objc_msgSend_replaceFormulaAt_inOwner_precedents_replaceOptions_(v33, v35, &v38, v34 + 8, v24, &v36);
}

void sub_2211B1804(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2211B182C(va);

  _Unwind_Resume(a1);
}

void sub_2211B182C(uint64_t a1)
{
  *a1 = &unk_2834A3EA8;

  v2 = *(a1 + 208);
  if (v2)
  {
    *(a1 + 216) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 184);
  if (v3)
  {
    *(a1 + 192) = v3;
    operator delete(v3);
  }

  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v4);
}

void sub_2211B1A30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2211B182C(va);

  _Unwind_Resume(a1);
}

void sub_2211B1AC4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((v5 + 24));
  v13 = objc_msgSend_copyByForceSettingOwnerUIDs_calcEngine_(v7, v9, v6, WeakRetained, v10);

  objc_msgSend_setFormulaObject_atIndex_(*(a1 + 32), v11, v13, a2, v12);
}

void sub_2211B1D1C(uint64_t a1, void *a2, int a3)
{
  v19 = a2;
  v7 = *(a1 + 40);
  v8 = *(v7 + 40);
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = *(v7 + 32);
  v10 = *v8;
  if (v9 < *v8)
  {
    *(v7 + 32) = v9 + 1;
    v11 = *&v8[2 * v9 + 2];
    goto LABEL_8;
  }

  if (v10 == *(v7 + 36))
  {
LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v7 + 24));
    v8 = *(v7 + 40);
    v10 = *v8;
  }

  *v8 = v10 + 1;
  v11 = google::protobuf::Arena::CreateMaybeMessage<TST::FormulaStoreArchive_FormulaStorePair>(*(v7 + 24));
  v12 = *(v7 + 32);
  v13 = *(v7 + 40) + 8 * v12;
  *(v7 + 32) = v12 + 1;
  *(v13 + 8) = v11;
LABEL_8:
  v14 = *(v11 + 16);
  *(v11 + 32) = a3;
  *(v11 + 16) = v14 | 3;
  v15 = *(v11 + 24);
  if (!v15)
  {
    v16 = *(v11 + 8);
    if (v16)
    {
      v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
    }

    v15 = google::protobuf::Arena::CreateMaybeMessage<TSCE::FormulaArchive>(v16);
    *(v11 + 24) = v15;
  }

  if ((objc_msgSend_encodeToArchive_archiver_(v19, v5, v15, *(a1 + 32), v6) & 6) != 0)
  {
    objc_msgSend_requiresDocumentVersion_featureIdentifier_(*(a1 + 32), v17, 0x300020000000ALL, @"TSTCategorizedTables", v18);
  }
}

void sub_2211B28B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void **a16)
{
  a16 = &a13;
  sub_22107C2C0(&a16);
  _Unwind_Resume(a1);
}

void sub_2211B3D94(void *a1)
{
  v30 = a1;
  v5 = objc_msgSend_layoutEngine(v30, v1, v2, v3, v4);
  v10 = objc_msgSend_layoutHint(v30, v6, v7, v8, v9);
  v11 = sub_2213A2A30(v5, v10);
  v13 = v12;

  if (WORD2(v11) == 0x7FFF)
  {
    v18 = 0xFFFFFFFFLL;
  }

  else
  {
    v18 = WORD2(v11);
  }

  if (v11 == 0x7FFFFFFF)
  {
    v19 = 0xFFFFFFFF00000000;
  }

  else
  {
    v19 = v11 << 32;
  }

  if (HIDWORD(v13))
  {
    v20 = ((v19 + v13) & 0xFFFFFFFF00000000) - 0x100000000;
  }

  else
  {
    v20 = 0xFFFFFFFF00000000;
  }

  if (v13)
  {
    v21 = (v13 + v18 - 1);
  }

  else
  {
    v21 = 0xFFFFFFFFLL;
  }

  v22 = objc_msgSend_spaceBundle(v30, v14, v15, v16, v17);
  v27 = objc_msgSend_space(v22, v23, v24, v25, v26);
  objc_msgSend_setGridRange_(v27, v28, v19 | v18, v21 | v20, v29);

  v30[700] = 1;
}

void sub_2211B4044(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = TSTLayout;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

double sub_2211B410C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v9 = sub_2211B4394(v3, v5, v6, v7, v8);
  v14 = v9;
  v15 = v4;
  if (!v4)
  {
    v15 = v9;
  }

  objc_msgSend_strokeFrame(v15, v10, v11, v12, v13);
  x = v20;
  y = v22;
  width = v24;
  height = v26;
  if (!v4)
  {
    v28 = TSTLayoutGetRepeatHeaderRowsSpace(v3, v16, v17, v18, v19);
    v37 = TSTLayoutGetRepeatHeaderCornerSpace(v3, v29, v30, v31, v32);
    if (v28)
    {
      objc_msgSend_strokeFrame(v28, v33, v34, v35, v36);
      v78.origin.x = v38;
      v78.origin.y = v39;
      v78.size.width = v40;
      v78.size.height = v41;
      v71.origin.x = x;
      v71.origin.y = y;
      v71.size.width = width;
      v71.size.height = height;
      v72 = CGRectUnion(v71, v78);
      x = v72.origin.x;
      y = v72.origin.y;
      width = v72.size.width;
      height = v72.size.height;
    }

    if (v37)
    {
      objc_msgSend_strokeFrame(v37, v33, v34, v35, v36);
      v79.origin.x = v42;
      v79.origin.y = v43;
      v79.size.width = v44;
      v79.size.height = v45;
      v73.origin.x = x;
      v73.origin.y = y;
      v73.size.width = width;
      v73.size.height = height;
      v74 = CGRectUnion(v73, v79);
      x = v74.origin.x;
      y = v74.origin.y;
      width = v74.size.width;
      height = v74.size.height;
    }
  }

  v75.origin.x = x;
  v75.origin.y = y;
  v75.size.width = width;
  v75.size.height = height;
  v76 = CGRectInset(v75, -1.0, -1.0);
  v46 = v76.origin.x;
  v47 = v76.origin.y;
  v48 = v76.size.width;
  v49 = v76.size.height;
  v50 = sub_2211B44A8(v3);
  v51 = v47 - v50;
  if (v50 <= 0.0)
  {
    v52 = v49;
  }

  else
  {
    v52 = v49 + v50;
  }

  if (v50 <= 0.0)
  {
    v51 = v47;
  }

  v53 = v46;
  v54 = v48;
  v77 = CGRectIntegral(*(&v51 - 1));
  v55 = v77.origin.x;
  v56 = v77.size.width;
  if (objc_msgSend_isFrozen(v15, v57, v58, v59, v60))
  {
    v66 = sub_2211B410C(v3, v14);
    if (v66 < v55)
    {
      v67 = v65;
      IsLeftToRight = objc_msgSend_layoutDirectionIsLeftToRight(v15, v61, v62, v63, v64);
      v69 = v55 - v66;
      if (!IsLeftToRight)
      {
        v69 = v67 - v56;
      }

      v55 = v55 - v69;
    }
  }

  return v55;
}

id sub_2211B4394(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_spaceBundle(a1, a2, a3, a4, a5);
  v10 = objc_msgSend_space(v5, v6, v7, v8, v9);

  return v10;
}

id TSTLayoutGetRepeatHeaderRowsSpace(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_spaceBundle(a1, a2, a3, a4, a5);
  v10 = objc_msgSend_repeatHeaderRowsSpace(v5, v6, v7, v8, v9);

  return v10;
}

id TSTLayoutGetRepeatHeaderCornerSpace(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_spaceBundle(a1, a2, a3, a4, a5);
  v10 = objc_msgSend_repeatHeaderCornerSpace(v5, v6, v7, v8, v9);

  return v10;
}

double sub_2211B44A8(void *a1)
{
  v1 = a1;
  v6 = v1;
  if (!v1 || (v1[427] & 1) == 0)
  {
    v46 = objc_msgSend_layoutEngine(v1, v2, v3, v4, v5);
    objc_msgSend_invalidateTableNameHeight(v46, v47, v48, v49, v50);

    v45 = 0.0;
    goto LABEL_9;
  }

  v7 = sub_2211BA638(v1, v2, v3, v4, v5);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = *&qword_27CFB3A88;
  v19 = objc_msgSend_layoutEngine(v6, v15, v16, v17, v18);
  v24 = objc_msgSend_styleProvidingSource(v19, v20, v21, v22, v23);
  if (v24 && (v25 = v7 + v14, v26 = v9 + v14, v27 = v11 - (v14 + v14), v28 = v13 - (v14 + v14), v67.origin.x = v25, v67.origin.y = v26, v67.size.width = v27, v67.size.height = v28, !CGRectIsInfinite(v67)))
  {
    v68.origin.x = v25;
    v68.origin.y = v26;
    v68.size.width = v27;
    v68.size.height = v28;
    IsNull = CGRectIsNull(v68);

    if (!IsNull)
    {
      v69.origin.x = v25;
      v69.origin.y = v26;
      v69.size.width = v27;
      v69.size.height = v28;
      if (!CGRectIsInfinite(v69))
      {
        v70.origin.x = v25;
        v70.origin.y = v26;
        v70.size.width = v27;
        v70.size.height = v28;
        if (!CGRectIsNull(v70))
        {
          objc_msgSend_frameInRoot(v6, v29, v30, v31, v32);
          if (v57 < v27)
          {
            v27 = v57;
          }

          v33 = objc_msgSend_tableNameEditingStorage(v6, v53, v54, v55, v56);
          v62 = objc_msgSend_layoutEngine(v6, v58, v59, v60, v61);
          objc_msgSend_tableNameHeightForStorage_withMaxWidth_(v62, v63, v33, v64, v65, v27);
          v39 = v66;

          goto LABEL_7;
        }
      }
    }
  }

  else
  {
  }

  v33 = objc_msgSend_layoutEngine(v6, v29, v30, v31, v32);
  objc_msgSend_tableNameHeight(v33, v34, v35, v36, v37);
  v39 = v38;
LABEL_7:

  v44 = sub_2211B877C(v6, v40, v41, v42, v43);
  v45 = ceil(v39 * v44) / v44;
LABEL_9:

  return v45;
}

void sub_2211B4680(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_2211B4730(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_layoutHint(a1, a2, a3, a4, a5);
  v10 = objc_msgSend_partitionPosition(v5, v6, v7, v8, v9);

  return v10 & 1;
}

double sub_2211B5074(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_2211B4394(a1, a2, a3, a4, a5);
  objc_msgSend_strokeFrame(v5, v6, v7, v8, v9);
  v11 = v10;

  return v11;
}

void sub_2211B5410(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

double TSTLayoutGetCanvasFrame(void *a1)
{
  v1 = a1;
  v6 = v1;
  if (v1)
  {
    v7 = objc_msgSend_spaceBundle(v1, v2, v3, v4, v5);
    v12 = objc_msgSend_space(v7, v8, v9, v10, v11);
    objc_msgSend_canvasFrame(v12, v13, v14, v15, v16);
    v18 = v17;
  }

  else
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v2, "CGRect TSTLayoutGetCanvasFrame(TSTLayout *__strong)", v4, v5);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTLayout.mm", v22, v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v25, v20, v24, 1702, 0, "Passing in a nil layout to TSTLayoutGetCanvasFrame.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
    v18 = *MEMORY[0x277CBF3A0];
  }

  return v18;
}

void sub_2211B65A0(void *a1)
{
  v1 = a1;
  objc_msgSend_frameInRoot(v1, v2, v3, v4, v5);
  memset(&v18, 0, sizeof(v18));
  CGAffineTransformMakeTranslation(&v18, v6, v7);
  v12 = objc_msgSend_spaceBundle(v1, v8, v9, v10, v11);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_2211B8600;
  v16[3] = &unk_278460A78;
  v17 = v18;
  objc_msgSend_enumerateLayoutSpacesUsingBlock_(v12, v13, v16, v14, v15);
}

void sub_2211B6680(void *a1, double a2, double a3, double a4, double a5)
{
  v35 = a1;
  v13 = objc_msgSend_spaceBundle(v35, v9, v10, v11, v12);
  v18 = objc_msgSend_space(v13, v14, v15, v16, v17);
  objc_msgSend_layoutRectForCanvasRect_(v18, v19, v20, v21, v22, a2, a3, a4, a5);
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  objc_msgSend_setNeedsDisplayInRect_(v35, v31, v32, v33, v34, v24, v26, v28, v30);
}

void sub_2211B6830(void *a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a1;
  v10 = HIDWORD(a2);
  v11 = a2 & 0xFFFF00000000;
  if (a2 != 0x7FFFFFFF && v11 == 0x7FFF00000000)
  {
    LOWORD(v10) = 0;
  }

  v13 = HIDWORD(a4);
  v14 = a4 & 0xFFFF00000000;
  if (a4 != 0x7FFFFFFF && v14 == 0x7FFF00000000)
  {
    LOWORD(v13) = 0;
  }

  if (v10 >= v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = v10;
  }

  v52 = v6;
  objc_msgSend_invalidateLayoutSpaceCoordinatesAfterColumn_(v6, v7, v16, v8, v9);
  if (v11 != 0x7FFF00000000 && a2 == 0x7FFFFFFF)
  {
    v21 = 0;
  }

  else
  {
    v21 = a2;
  }

  if (v14 != 0x7FFF00000000 && a4 == 0x7FFFFFFF)
  {
    v23 = 0;
  }

  else
  {
    v23 = a4;
  }

  if (v21 >= v23)
  {
    objc_msgSend_invalidateLayoutSpaceCoordinatesAfterRow_(v52, v17, v23, v18, v19);
  }

  else
  {
    objc_msgSend_invalidateLayoutSpaceCoordinatesAfterRow_(v52, v17, v21, v18, v19);
  }

  objc_msgSend_invalidateLayoutSpaceTableOffsets(v52, v24, v25, v26, v27);
  sub_2211B6988(v52, a4);
  v32 = objc_msgSend_layoutEngine(v52, v28, v29, v30, v31);
  v37 = objc_msgSend_cellIDToWPColumnCache(v32, v33, v34, v35, v36);
  objc_msgSend_removeAllObjects(v37, v38, v39, v40, v41);

  v46 = objc_msgSend_containedTextEditingLayout(v52, v42, v43, v44, v45);
  v51 = v46;
  if (v46)
  {
    objc_msgSend_invalidateSize(v46, v47, v48, v49, v50);
  }
}

void sub_2211B6988(void *a1, uint64_t a2)
{
  v14 = a1;
  objc_msgSend_invalidateLayoutSpaceCoordinatesAfterRow_(v14, v3, a2, v4, v5);
  objc_msgSend_invalidateChildren(v14, v6, v7, v8, v9);
  objc_msgSend_invalidate(v14, v10, v11, v12, v13);
}

void sub_2211B69F8(void *a1, uint64_t a2)
{
  v21 = a1;
  objc_msgSend_invalidateLayoutSpaceCoordinatesAfterColumn_(v21, v3, a2, v4, v5);
  objc_msgSend_invalidateLayoutSpaceCoordinatesAfterRow_(v21, v6, 0, v7, v8);
  objc_msgSend_invalidateLayoutSpaceTableOffsets(v21, v9, v10, v11, v12);
  objc_msgSend_invalidateChildren(v21, v13, v14, v15, v16);
  objc_msgSend_invalidate(v21, v17, v18, v19, v20);
}

uint64_t sub_2211B6DA4(void *a1)
{
  v1 = a1;
  v6 = objc_msgSend_layoutEngine(v1, v2, v3, v4, v5);
  v11 = objc_msgSend_layoutHint(v1, v7, v8, v9, v10);
  v12 = sub_2213A2A30(v6, v11);

  return v12;
}

void sub_2211B6E1C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_2211B6E48(void *a1)
{
  v1 = a1;
  v6 = objc_msgSend_layoutEngine(v1, v2, v3, v4, v5);
  if (!objc_msgSend_numberOfHeaderColumns(v6, v7, v8, v9, v10))
  {
    goto LABEL_4;
  }

  v15 = objc_msgSend_layoutHint(v1, v11, v12, v13, v14);
  if ((objc_msgSend_cacheHintID(v15, v16, v17, v18, v19) & 0xFFFF00000000) == 0)
  {

LABEL_6:
    v37 = objc_msgSend_layoutHint(v1, v30, v31, v32, v33);
    v38 = sub_2213A2A30(v6, v37);
    v36 = v38;
    v34 = HIWORD(v38);

    if (!v36)
    {
      v43 = objc_msgSend_spaceBundle(v1, v39, v40, v41, v42);
      v48 = objc_msgSend_space(v43, v44, v45, v46, v47);
      v53 = objc_msgSend_headerRowsRepeat(v48, v49, v50, v51, v52);

      if (v53)
      {
        v36 = objc_msgSend_numberOfHeaderRows(v6, v54, v55, v56, v57);
        v35 = 0;
        goto LABEL_11;
      }

      v36 = 0;
    }

    v35 = 0;
    goto LABEL_11;
  }

  v24 = objc_msgSend_tableInfo(v1, v20, v21, v22, v23);
  v29 = objc_msgSend_repeatingHeaderColumnsEnabled(v24, v25, v26, v27, v28);

  if (v29)
  {
    goto LABEL_6;
  }

LABEL_4:
  v34 = 0;
  v35 = 0x7FFF00000000;
  v36 = 0x7FFFFFFF;
LABEL_11:

  return v35 | (v34 << 48) | v36;
}

unint64_t sub_2211B7004(void *a1)
{
  v1 = a1;
  v6 = objc_msgSend_layoutEngine(v1, v2, v3, v4, v5);
  if (!objc_msgSend_numberOfHeaderRows(v6, v7, v8, v9, v10))
  {
    goto LABEL_4;
  }

  v15 = objc_msgSend_layoutHint(v1, v11, v12, v13, v14);
  if (objc_msgSend_cacheHintID(v15, v16, v17, v18, v19))
  {
    v24 = objc_msgSend_tableInfo(v1, v20, v21, v22, v23);
    v29 = objc_msgSend_repeatingHeaderRowsEnabled(v24, v25, v26, v27, v28);

    if (!v29)
    {
LABEL_4:
      v34 = 0;
      LOWORD(v35) = 0x7FFF;
      v36 = 0x7FFFFFFFLL;
      goto LABEL_10;
    }
  }

  else
  {
  }

  v37 = objc_msgSend_layoutHint(v1, v30, v31, v32, v33);
  v38 = sub_2213A2A30(v6, v37);
  v39 = WORD2(v38);
  v35 = HIDWORD(v38);
  v34 = HIWORD(v38);

  if (v39 || (objc_msgSend_spaceBundle(v1, v40, v41, v42, v43), v44 = objc_claimAutoreleasedReturnValue(), objc_msgSend_space(v44, v45, v46, v47, v48), v49 = objc_claimAutoreleasedReturnValue(), v54 = objc_msgSend_headerColumnsRepeat(v49, v50, v51, v52, v53), v49, v44, !v54))
  {
    v36 = 0;
  }

  else
  {
    v36 = 0;
    LOWORD(v35) = objc_msgSend_numberOfHeaderColumns(v6, v55, v56, v57, v58) + v35;
  }

LABEL_10:

  return (v35 << 32) | (v34 << 48) | v36;
}

uint64_t sub_2211B71BC(void *a1)
{
  v1 = a1;
  v2 = sub_2211B7004(v1);
  v4 = v3;
  v5 = sub_2211B6E48(v1);
  v7 = 0x7FFF7FFFFFFFLL;
  if (v2 != 0x7FFFFFFF && (v2 & 0xFFFF00000000) != 0x7FFF00000000 && HIDWORD(v4) && v4 && v5 != 0x7FFFFFFF && (v5 & 0xFFFF00000000) != 0x7FFF00000000 && HIDWORD(v6) && v6)
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_2211B729C(void *a1, unint64_t a2, unint64_t a3)
{
  v5 = a1;
  v6 = sub_2211B6DA4(v5);
  v8 = sub_221119E0C(a2, a3, v6, v7);
  v12 = v8 == 0x7FFFFFFF || (v8 & 0xFFFF00000000) == 0x7FFF00000000 || HIDWORD(v9) == 0 || v9 == 0;
  if (v12 && ((v13 = sub_2211B6E48(v5), v15 = sub_221119E0C(a2, a3, v13, v14), v15 == 0x7FFFFFFF) || (v15 & 0xFFFF00000000) == 0x7FFF00000000 || !HIDWORD(v16) || !v16) && ((v17 = sub_2211B7004(v5), v19 = sub_221119E0C(a2, a3, v17, v18), v19 == 0x7FFFFFFF) || (v19 & 0xFFFF00000000) == 0x7FFF00000000 || !HIDWORD(v20) || !v20))
  {
    v22 = sub_2211B71BC(v5);
    v24 = sub_221119E0C(a2, a3, v22, v23);
    if (HIDWORD(v25))
    {
      v26 = v25 == 0;
    }

    else
    {
      v26 = 1;
    }

    v27 = !v26;
    if ((v24 & 0xFFFF00000000) == 0x7FFF00000000)
    {
      v28 = 0;
    }

    else
    {
      v28 = v27;
    }

    if (v24 == 0x7FFFFFFF)
    {
      v21 = 0;
    }

    else
    {
      v21 = v28;
    }
  }

  else
  {
    v21 = 1;
  }

  return v21;
}

uint64_t sub_2211B7514(void *a1)
{
  v1 = a1;
  v6 = objc_msgSend_layoutEngine(v1, v2, v3, v4, v5);
  v11 = objc_msgSend_layoutHint(v1, v7, v8, v9, v10);
  v12 = sub_2213A2A30(v6, v11) >> 32;

  v17 = objc_msgSend_numberOfHeaderColumns(v6, v13, v14, v15, v16);
  if (v12 <= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v12;
  }

  return v18;
}

uint64_t sub_2211B75C0(void *a1)
{
  v1 = a1;
  v6 = objc_msgSend_layoutEngine(v1, v2, v3, v4, v5);
  v11 = objc_msgSend_layoutHint(v1, v7, v8, v9, v10);
  LODWORD(v12) = sub_2213A2A30(v6, v11);

  v17 = objc_msgSend_numberOfHeaderRows(v6, v13, v14, v15, v16);
  if (v17 <= v12)
  {
    v12 = v12;
  }

  else
  {
    v12 = v17;
  }

  return v12;
}

uint64_t sub_2211B7664(void *a1)
{
  v1 = a1;
  v6 = objc_msgSend_layoutEngine(v1, v2, v3, v4, v5);
  v11 = objc_msgSend_layoutEngine(v1, v7, v8, v9, v10);
  v16 = objc_msgSend_layoutHint(v1, v12, v13, v14, v15);
  v17 = sub_2213A2A30(v11, v16);
  v19 = v18;

  v24 = objc_msgSend_entireFooterRowsCellRange(v6, v20, v21, v22, v23);
  v25 = v17 + HIDWORD(v19) - 1;
  if (HIDWORD(v19))
  {
    v26 = v17 == 0x7FFFFFFF;
  }

  else
  {
    v26 = 1;
  }

  if (v26)
  {
    v25 = 0x7FFFFFFF;
  }

  if ((v24 & 0xFFFF00000000) != 0x7FFF00000000 && v24 == 0x7FFFFFFF)
  {
    v28 = 0;
  }

  else
  {
    v28 = v24;
  }

  if (v25 >= v28)
  {
    v29 = v28;
  }

  else
  {
    v29 = v25;
  }

  return v29;
}

unint64_t sub_2211B7764(void *a1)
{
  v1 = a1;
  v6 = objc_msgSend_layoutEngine(v1, v2, v3, v4, v5);
  v16 = objc_msgSend_layoutHint(v1, v7, v8, v9, v10);
  v11 = sub_2213A2A30(v6, v16);

  LODWORD(v16) = objc_msgSend_numberOfHeaderColumns(v6, v12, v13, v14, v15);
  v21 = objc_msgSend_numberOfHeaderRows(v6, v17, v18, v19, v20);
  if (v21 <= v11)
  {
    v22 = v11;
  }

  else
  {
    v22 = v21;
  }

  if (WORD2(v11) >= v16)
  {
    v16 = HIDWORD(v11);
  }

  return v11 & 0xFFFF000000000000 | (v16 << 32) | v22;
}

unint64_t TSTLayoutGetPartitionBodyCellRange(void *a1)
{
  v1 = a1;
  v6 = objc_msgSend_layoutEngine(v1, v2, v3, v4, v5);
  v11 = objc_msgSend_layoutHint(v1, v7, v8, v9, v10);
  v12 = sub_2213A2A30(v6, v11);

  v17 = objc_msgSend_numberOfHeaderColumns(v6, v13, v14, v15, v16);
  v22 = objc_msgSend_numberOfHeaderRows(v6, v18, v19, v20, v21);
  if (v22 > v12)
  {
    v27 = v22;
  }

  else
  {
    v27 = v12;
  }

  objc_msgSend_numberOfFooterRows(v6, v23, v24, v25, v26);
  objc_msgSend_numberOfRows(v6, v28, v29, v30, v31);
  if (WORD2(v12) >= v17)
  {
    v32 = HIDWORD(v12);
  }

  else
  {
    LOWORD(v32) = v17;
  }

  return v12 & 0xFFFF000000000000 | (v32 << 32) | v27;
}

uint64_t sub_2211B79C0(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_layoutHint(a1, a2, a3, a4, a5);
  v10 = objc_msgSend_partitionPosition(v5, v6, v7, v8, v9);

  return (v10 >> 1) & 1;
}

uint64_t sub_2211B7A08(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_layoutHint(a1, a2, a3, a4, a5);
  v10 = objc_msgSend_partitionPosition(v5, v6, v7, v8, v9);

  return (v10 >> 2) & 1;
}

BOOL sub_2211B7A50(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_layoutHint(a1, a2, a3, a4, a5);
  v10 = objc_msgSend_partitionPosition(v5, v6, v7, v8, v9);

  return (~v10 & 0xF) != 0;
}

id sub_2211B7AA0(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_spaceBundle(a1, a2, a3, a4, a5);
  v10 = objc_msgSend_frozenHeaderColumnsSpace(v5, v6, v7, v8, v9);

  return v10;
}

id sub_2211B7AFC(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_spaceBundle(a1, a2, a3, a4, a5);
  v10 = objc_msgSend_frozenHeaderRowsSpace(v5, v6, v7, v8, v9);

  return v10;
}

id sub_2211B7B58(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_spaceBundle(a1, a2, a3, a4, a5);
  v10 = objc_msgSend_frozenHeaderCornerSpace(v5, v6, v7, v8, v9);

  return v10;
}

id TSTLayoutGetRepeatHeaderColumnsSpace(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_spaceBundle(a1, a2, a3, a4, a5);
  v10 = objc_msgSend_repeatHeaderColumnsSpace(v5, v6, v7, v8, v9);

  return v10;
}

double sub_2211B7C10(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  objc_msgSend_lockForRead(v4, v5, v6, v7, v8);
  objc_msgSend_alignedStrokeFrame(v4, v9, v10, v11, v12);
  v222 = v13;
  objc_msgSend_canvasRectForLayoutRect_(v4, v14, v15, v16, v17);
  v220 = v18;
  v221 = v19;
  v218 = v20;
  v219 = v21;
  v22 = sub_2211B817C(v3);
  v216 = v23;
  v217 = v22;
  v24 = MEMORY[0x277CBF348];
  v26 = *MEMORY[0x277CBF348];
  v25 = *(MEMORY[0x277CBF348] + 8);
  v215 = sub_2211B44A8(v3);
  v27 = sub_2211B82D0(v3);
  v28 = sub_2211B848C(v3);
  v33 = objc_msgSend_spaceBundle(v3, v29, v30, v31, v32);
  v38 = objc_msgSend_frozenHeaderColumnsSpace(v33, v34, v35, v36, v37);
  v43 = v38;
  if (((v38 != 0) & v27) == 1)
  {
    v44 = objc_msgSend_spaceBundle(v3, v39, v40, v41, v42);
    v49 = objc_msgSend_space(v44, v45, v46, v47, v48);
    v54 = v49;
    if (v49 == v4)
    {
    }

    else
    {
      v55 = objc_msgSend_spaceBundle(v3, v50, v51, v52, v53);
      v60 = objc_msgSend_frozenHeaderRowsSpace(v55, v56, v57, v58, v59);

      if (v60 != v4)
      {
        goto LABEL_10;
      }
    }

    v65 = v3[45];
    v66 = objc_msgSend_spaceBundle(v3, v61, v62, v63, v64, *(v3 + 48), *(v3 + 47), *(v3 + 46));
    v71 = objc_msgSend_frozenHeaderColumnsSpace(v66, v67, v68, v69, v70);
    objc_msgSend_alignedFrame(v71, v72, v73, v74, v75);
    v77 = v76;
    v79 = v78;
    v81 = v80;
    v83 = v82;

    v88 = objc_msgSend_spaceBundle(v3, v84, v85, v86, v87);
    v93 = objc_msgSend_frozenHeaderColumnsSpace(v88, v89, v90, v91, v92);
    objc_msgSend_alignedStrokeFrame(v93, v94, v95, v96, v97);
    v99 = v98;

    v104 = objc_msgSend_spaceBundle(v3, v100, v101, v102, v103);
    v109 = objc_msgSend_frozenHeaderColumnsSpace(v104, v105, v106, v107, v108);
    objc_msgSend_canvasRectForLayoutRect_(v109, v110, v111, v112, v113, v99, v79, v81 + v77 - v99, v83);
    v115 = v114;

    if (objc_msgSend_layoutDirectionIsLeftToRight(v3, v116, v117, v118, v119))
    {
      v223.origin.x = v220;
      v223.origin.y = v221;
      v223.size.width = v218;
      v223.size.height = v219;
      v26 = v217 + v65 + v115 - CGRectGetMinX(v223);
    }

    else
    {
      v224.origin.x = v220;
      v224.origin.y = v221;
      v224.size.width = v218;
      v224.size.height = v219;
      MaxX = CGRectGetMaxX(v224);
      v225.origin.x = v65;
      v225.size.width = v213;
      v225.origin.y = v214;
      v225.size.height = rect;
      v26 = MaxX - (CGRectGetMaxX(v225) - v217 - v115);
    }
  }

  else
  {
  }

LABEL_10:
  v121 = objc_msgSend_spaceBundle(v3, v61, v62, v63, v64);
  v126 = objc_msgSend_frozenHeaderRowsSpace(v121, v122, v123, v124, v125);
  v131 = v126;
  if (v126 != 0 && v28)
  {
    v132 = objc_msgSend_spaceBundle(v3, v127, v128, v129, v130);
    v137 = objc_msgSend_space(v132, v133, v134, v135, v136);
    v142 = v137;
    if (v137 == v4)
    {

LABEL_16:
      v153 = v3[46];
      v154 = objc_msgSend_spaceBundle(v3, v149, v150, v151, v152);
      v159 = objc_msgSend_frozenHeaderRowsSpace(v154, v155, v156, v157, v158);
      objc_msgSend_alignedFrame(v159, v160, v161, v162, v163);
      v165 = v164;
      v167 = v166;
      v169 = v168;
      v171 = v170;

      v176 = objc_msgSend_spaceBundle(v3, v172, v173, v174, v175);
      v181 = objc_msgSend_frozenHeaderRowsSpace(v176, v177, v178, v179, v180);
      objc_msgSend_alignedStrokeFrame(v181, v182, v183, v184, v185);
      v187 = v186;

      v192 = objc_msgSend_spaceBundle(v3, v188, v189, v190, v191);
      v197 = objc_msgSend_frozenHeaderRowsSpace(v192, v193, v194, v195, v196);
      objc_msgSend_canvasRectForLayoutRect_(v197, v198, v199, v200, v201, v165, v187, v169, v171 + v167 - v187);
      v203 = v202;

      v226.origin.x = v220;
      v226.origin.y = v221;
      v226.size.width = v218;
      v226.size.height = v219;
      v25 = v216 + v215 + v153 + v203 - CGRectGetMinY(v226);
      goto LABEL_17;
    }

    v143 = objc_msgSend_spaceBundle(v3, v138, v139, v140, v141);
    v148 = objc_msgSend_frozenHeaderColumnsSpace(v143, v144, v145, v146, v147);

    if (v148 == v4)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

LABEL_17:
  if (v26 != *v24 || v25 != v24[1])
  {
    IsLeftToRight = objc_msgSend_layoutDirectionIsLeftToRight(v3, v149, v150, v151, v152);
    v209 = v220 + v26;
    if (!IsLeftToRight)
    {
      v209 = v220;
    }

    objc_msgSend_layoutRectForCanvasRect_(v4, v205, v206, v207, v208, v209, v221 + v25, v218 - v26, v219 - v25);
    v222 = v210;
  }

  objc_msgSend_unlock(v4, v149, v150, v151, v152);

  return v222;
}

double sub_2211B817C(void *a1)
{
  v1 = a1;
  v2 = *MEMORY[0x277CBF348];
  v32 = sub_2211B877C(v1, v3, v4, v5, v6);
  if (v1[425] == 1)
  {
    v7 = sub_2211B8A78(v1, 0);
    v15 = sub_2211B87F0(v1, v8, v9, v10, v11, v7, v12, v13, v14);
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = sub_2211B93F8(v1, 0);
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v33.origin.x = v15;
    v33.origin.y = v17;
    v33.size.width = v19;
    v33.size.height = v21;
    Width = CGRectGetWidth(v33);
    v34.origin.x = v22;
    v34.origin.y = v24;
    v34.size.width = v26;
    v34.size.height = v28;
    v29 = CGRectGetWidth(v34);
    v35.origin.x = v15;
    v35.origin.y = v17;
    v35.size.width = v19;
    v35.size.height = v21;
    CGRectGetHeight(v35);
    if (6.0 / v32 + Width >= 10.0 / v32 + v29)
    {
      v2 = 6.0 / v32 + Width;
    }

    else
    {
      v2 = 10.0 / v32 + v29;
    }
  }

  return v2;
}

uint64_t sub_2211B82D0(void *a1)
{
  v1 = a1;
  v6 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v2, v3, v4, v5);
  v11 = objc_msgSend_supportsFrozenHeaders(v6, v7, v8, v9, v10);

  if (v11)
  {
    ReplaceMode = objc_msgSend_inFindReplaceMode(v1, v12, v13, v14, v15);
    v21 = objc_msgSend_suppressFrozenHeadersForEditing(v1, v17, v18, v19, v20);
    isStrokeEditing = objc_msgSend_isStrokeEditing(v1, v22, v23, v24, v25);
    v31 = objc_msgSend_spaceBundle(v1, v27, v28, v29, v30);
    v36 = objc_msgSend_space(v31, v32, v33, v34, v35);

    v37 = sub_2211B817C(v1);
    objc_msgSend_canvasStrokeFrame(v36, v38, v39, v40, v41);
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;
    if (objc_msgSend_layoutDirectionIsLeftToRight(v1, v50, v51, v52, v53))
    {
      v54 = v43 < v37 + *(v1 + 45);
    }

    else
    {
      v58.origin.x = v43;
      v58.origin.y = v45;
      v58.size.width = v47;
      v58.size.height = v49;
      MaxX = CGRectGetMaxX(v58);
      v54 = MaxX > CGRectGetMaxX(*(v1 + 360)) - v37;
    }

    if ((ReplaceMode | v21 | isStrokeEditing))
    {
      v55 = 0;
    }

    else
    {
      v55 = sub_2211BA064(v1) & v54;
    }
  }

  else
  {
    v55 = 0;
  }

  return v55;
}

BOOL sub_2211B848C(void *a1)
{
  v1 = a1;
  v6 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v2, v3, v4, v5);
  v11 = objc_msgSend_supportsFrozenHeaders(v6, v7, v8, v9, v10);

  if (v11)
  {
    ReplaceMode = objc_msgSend_inFindReplaceMode(v1, v12, v13, v14, v15);
    v21 = objc_msgSend_suppressFrozenHeadersForEditing(v1, v17, v18, v19, v20);
    isStrokeEditing = objc_msgSend_isStrokeEditing(v1, v22, v23, v24, v25);
    v31 = objc_msgSend_spaceBundle(v1, v27, v28, v29, v30);
    v36 = objc_msgSend_space(v31, v32, v33, v34, v35);

    v41 = sub_2211B817C(v1);
    v43 = v42;
    if (v1 && *(v1 + 427) == 1)
    {
      sub_2211BA2B8(v1);
    }

    else
    {
      objc_msgSend_canvasStrokeFrame(v36, v37, v38, v39, v40, v41);
    }

    v46 = v44;
    v45 = ((ReplaceMode | v21 | isStrokeEditing) & 1) == 0 && sub_2211BA064(v1) && v46 < v43 + *(v1 + 46);
  }

  else
  {
    v45 = 0;
  }

  return v45;
}

uint64_t sub_2211B8600(_OWORD *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1[3];
  v7[0] = a1[2];
  v7[1] = v5;
  v7[2] = a1[4];
  return objc_msgSend_setTransformToCanvas_(a2, a2, v7, a4, a5);
}

void sub_2211B8638(void *a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v17 = objc_msgSend_spaceBundle(a1, a2, a3, a4, a5);
  v11 = objc_msgSend_space(v17, v7, v8, v9, v10);
  v16 = v11;
  if (v11)
  {
    objc_msgSend_transformToDevice(v11, v12, v13, v14, v15);
  }

  else
  {
    a6[1] = 0u;
    a6[2] = 0u;
    *a6 = 0u;
  }
}

void sub_2211B86D0(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v7 = objc_msgSend_spaceBundle(a1, a2, a3, a4, a5);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2211B8770;
  v11[3] = &unk_278460A98;
  *&v11[4] = a6;
  objc_msgSend_enumerateLayoutSpacesUsingBlock_(v7, v8, v11, v9, v10);
}

double sub_2211B877C(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_spaceBundle(a1, a2, a3, a4, a5);
  v10 = objc_msgSend_space(v5, v6, v7, v8, v9);
  objc_msgSend_viewScale(v10, v11, v12, v13, v14);
  v16 = v15;

  return v16;
}

double sub_2211B87F0(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  v13 = objc_msgSend_spaceBundle(a1, a2, a3, a4, a5);
  v18 = objc_msgSend_space(v13, v14, v15, v16, v17);
  objc_msgSend_layoutRectForCanvasRect_(v18, v19, v20, v21, v22, a6, a7, a8, a9);
  v24 = v23;

  return v24;
}

double sub_2211B88A4(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  v13 = objc_msgSend_spaceBundle(a1, a2, a3, a4, a5);
  v18 = objc_msgSend_space(v13, v14, v15, v16, v17);
  objc_msgSend_canvasRectForLayoutRect_(v18, v19, v20, v21, v22, a6, a7, a8, a9);
  v24 = v23;

  return v24;
}

double sub_2211B8958(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v9 = objc_msgSend_spaceBundle(a1, a2, a3, a4, a5);
  v14 = objc_msgSend_space(v9, v10, v11, v12, v13);
  objc_msgSend_canvasPointForLayoutPoint_(v14, v15, v16, v17, v18, a6, a7);
  v20 = v19;

  return v20;
}

double sub_2211B89E4(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_spaceBundle(a1, a2, a3, a4, a5);
  v10 = objc_msgSend_space(v5, v6, v7, v8, v9);
  objc_msgSend_canvasStrokeFrame(v10, v11, v12, v13, v14);
  v16 = v15;

  return v16;
}

double sub_2211B8A78(void *a1, int a2)
{
  v3 = a1;
  v8 = v3;
  if (v3)
  {
    v9 = objc_msgSend_spaceBundle(v3, v4, v5, v6, v7);
    v14 = objc_msgSend_space(v9, v10, v11, v12, v13);

    v19 = [TSTLayout alignedStrokeFrame]_0(v8, v15, v16, v17, v18);
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v30 = sub_2211B877C(v8, v26, v27, v28, v29);
    v31 = sub_2211B44A8(v8);
    IsLeftToRight = objc_msgSend_layoutDirectionIsLeftToRight(v8, v32, v33, v34, v35);
    v41 = v21 - v31;
    if (IsLeftToRight)
    {
      objc_msgSend_canvasRectForLayoutRect_(v14, v36, v37, v38, v39, v19 - 31.0 / v30, v41 - 31.0 / v30, 25.0 / v30, 25.0 / v30);
    }

    else
    {
      v98.origin.x = v19;
      v98.origin.y = v21 - v31;
      v98.size.width = v23;
      v98.size.height = v25;
      v51 = 6.0 / v30 + CGRectGetMaxX(v98);
      objc_msgSend_canvasRectForLayoutRect_(v14, v52, v53, v54, v55, v51, v41 - 31.0 / v30, 25.0 / v30, 25.0 / v30);
    }

    rect = v49;
    v50 = v46;
    v56 = v47;
    v57 = v48;
    objc_msgSend_canvasRectForLayoutRect_(v14, v42, v43, v44, v45, v19, v41, v23, v25);
    v94 = v59;
    v95 = v58;
    v92 = v61;
    v93 = v60;
    v91.origin.x = sub_2211B93F8(v8, 0);
    v91.origin.y = v62;
    v91.size.width = v63;
    v91.size.height = v64;
    v65 = v8[45];
    v96 = v8[46];
    v67 = v8[47];
    v66 = v8[48];
    v72 = objc_msgSend_layoutEngine(v8, v68, v69, v70, v71);
    v77 = objc_msgSend_styleProvidingSource(v72, v73, v74, v75, v76);

    if (IsLeftToRight)
    {
      if (v50 < v65 || v77 != 0)
      {
        v99.origin.y = v94;
        v99.origin.x = v95;
        v99.size.height = v92;
        v99.size.width = v93;
        MaxX = CGRectGetMaxX(v99);
        if (v65 >= MaxX)
        {
          v50 = MaxX;
        }

        else
        {
          v50 = v65;
        }
      }

      v100.origin.x = v50;
      v100.origin.y = v56;
      v100.size.width = v57;
      v100.size.height = rect;
      CGRectGetMaxX(v100);
      CGRectGetMaxX(v91);
    }

    else
    {
      v101.origin.x = v50;
      v101.origin.y = v56;
      v101.size.width = v57;
      v101.size.height = rect;
      v84 = CGRectGetMaxX(v101);
      v102.origin.x = v65;
      v102.origin.y = v96;
      v102.size.width = v67;
      v102.size.height = v66;
      if (v84 > CGRectGetMaxX(v102) || v77 != 0)
      {
        v103.origin.x = v65;
        v103.origin.y = v96;
        v103.size.width = v67;
        v103.size.height = v66;
        v86 = CGRectGetMaxX(v103);
        v104.origin.y = v94;
        v104.origin.x = v95;
        v104.size.height = v92;
        v104.size.width = v93;
        MinX = CGRectGetMinX(v104);
        if (v86 - v57 >= MinX)
        {
          v50 = v86 - v57;
        }

        else
        {
          v50 = MinX;
        }
      }

      v105.origin.x = v50;
      v105.origin.y = v56;
      v105.size.width = v57;
      v105.size.height = rect;
      v88 = CGRectGetMinX(v105);
      v89 = 10.0 / v30 - (CGRectGetMinX(v91) - (v88 + -6.0 / v30));
      if (v89 > 0.0)
      {
        v50 = v50 - v89;
      }
    }

    if (v56 < v96)
    {
      v106.origin.y = v94;
      v106.origin.x = v95;
      v106.size.height = v92;
      v106.size.width = v93;
      CGRectGetMaxY(v106);
    }

    if (a2)
    {
      if (objc_msgSend_layoutDirectionIsLeftToRight(v8, v80, v81, v82, v83))
      {
        v50 = v50 - 10.0 / v30;
      }

      else
      {
        v50 = v50 - 16.0 / v30;
      }
    }
  }

  else
  {
    v50 = *MEMORY[0x277CBF3A0];
  }

  return v50;
}

void sub_2211B8F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double sub_2211B8FA4(double *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1[45];
  v6 = a1[46];
  v7 = a1[47];
  v8 = a1[48];
  v9 = objc_msgSend_spaceBundle(a1, a2, a3, a4, a5);
  v14 = objc_msgSend_space(v9, v10, v11, v12, v13);
  objc_msgSend_layoutRectForCanvasRect_(v14, v15, v16, v17, v18, v5, v6, v7, v8);
  v20 = v19;

  return v20;
}

double sub_2211B9064(void *a1, double *a2)
{
  v3 = a1;
  v8 = v3;
  if (v3)
  {
    v9 = [TSTLayout alignedStrokeFrame]_0(v3, v4, v5, v6, v7);
    rect = v10;
    v11 = v9;
    v13 = v12;
    v15 = v14;
    v112 = sub_2211B877C(v8, v16, v17, v18, v19);
    v24 = objc_msgSend_spaceBundle(v8, v20, v21, v22, v23);
    v29 = objc_msgSend_space(v24, v25, v26, v27, v28);

    v30 = sub_2211B44A8(v8);
    v35 = objc_msgSend_layoutEngine(v8, v31, v32, v33, v34);
    isDynamicallyColumnTabResizing = objc_msgSend_isDynamicallyColumnTabResizing(v35, v36, v37, v38, v39);

    if (isDynamicallyColumnTabResizing)
    {
      if ((objc_msgSend_layoutDirectionIsLeftToRight(v8, v41, v42, v43, v44) & 1) == 0)
      {
        v49 = objc_msgSend_layoutEngine(v8, v45, v46, v47, v48);
        objc_msgSend_dynamicColumnTabSize(v49, v50, v51, v52, v53);
        v11 = v11 + v15 - v54;
      }

      v55 = objc_msgSend_layoutEngine(v8, v45, v46, v47, v48);
      objc_msgSend_dynamicColumnTabSize(v55, v56, v57, v58, v59);
      v15 = v60;
    }

    v110 = v11;
    v111 = v15;
    v109 = v13;
    v61 = sub_2211B8FA4(v8, v41, v42, v43, v44);
    v106 = v63;
    v107 = v62;
    v64 = v61;
    v66 = v65;
    objc_msgSend_tabsRowWidthAndOptionalLeftGap_(v8, v67, 0, v68, v69);
    v71 = v70;
    v76 = objc_msgSend_layoutEngine(v8, v72, v73, v74, v75);
    v81 = objc_msgSend_styleProvidingSource(v76, v77, v78, v79, v80);

    if (v81)
    {
      v86 = 6.0;
    }

    else
    {
      v86 = 11.0;
    }

    v91 = v71 + v86;
    if (objc_msgSend_layoutDirectionIsLeftToRight(v8, v82, v83, v84, v85))
    {
      v92 = v110;
      v93 = v109 - v30 + -29.0 / v112;
      v94 = v110 - v91 / v112;
      v95 = 0.0;
      v96 = 22.0 / v112;
      if (v94 < v64)
      {
        v95 = v64 - v94;
        v92 = v110 + v64 - v94;
        v15 = v15 - (v64 - v94);
      }
    }

    else
    {
      v113.origin.x = v110;
      v113.origin.y = v109;
      v113.size.width = v15;
      v113.size.height = rect;
      v92 = CGRectGetMaxX(v113) - v15;
      v93 = v109 - v30 + -29.0 / v112;
      v96 = 22.0 / v112;
      v114.origin.x = v92;
      v114.origin.y = v93;
      v114.size.width = v15;
      v114.size.height = 22.0 / v112;
      MaxX = CGRectGetMaxX(v114);
      v115.origin.x = v64;
      v115.origin.y = v66;
      v115.size.height = v106;
      v115.size.width = v107;
      v99 = CGRectGetMaxX(v115);
      v100 = v91 / v112;
      v101 = v91 / v112 + MaxX;
      v95 = 0.0;
      if (v101 <= v99)
      {
        v15 = v111;
      }

      else
      {
        v116.origin.x = v92;
        v116.origin.y = v93;
        v116.size.width = v111;
        v116.size.height = 22.0 / v112;
        v102 = CGRectGetMaxX(v116);
        v117.origin.x = v64;
        v117.origin.y = v66;
        v117.size.height = v106;
        v117.size.width = v107;
        v95 = v100 + v102 - CGRectGetMaxX(v117);
        v15 = v111 - v95;
      }
    }

    if (v93 < 2.0 / v112 + v66)
    {
      v118.origin.y = v109;
      v118.origin.x = v110;
      v118.size.width = v111;
      v118.size.height = rect;
      MaxY = CGRectGetMaxY(v118);
      if (v66 < MaxY)
      {
        MaxY = v66;
      }

      v93 = 2.0 / v112 + MaxY;
    }

    if (v15 <= 0.0)
    {
      v97 = *MEMORY[0x277CBF3A0];
      if (!a2)
      {
LABEL_25:

        goto LABEL_26;
      }
    }

    else
    {
      objc_msgSend_canvasRectForLayoutRect_(v29, v87, v88, v89, v90, v92, v93, v15, v96);
      v97 = v104;
      if (!a2)
      {
        goto LABEL_25;
      }
    }

    *a2 = v95;
    goto LABEL_25;
  }

  v97 = *MEMORY[0x277CBF3A0];
LABEL_26:

  return v97;
}