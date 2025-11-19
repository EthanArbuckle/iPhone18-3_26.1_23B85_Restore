uint64_t valueWithDifferential<A, B>(at:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a3 + 16);
  v8 = *(a3 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_syycMd, &_syycMR);
  v10 = (*(*(swift_getTupleTypeMetadata2() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v12 = &v15 - v11;
  v13 = v9(&v15 - v11, a2);
  (*(*(a5 - 8) + 32))(a1, v12, a5);
  return v13;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t valueWithDifferential<A, B, C>(at:_:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a4 + 16);
  v11 = *(a4 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_syycMd, &_syycMR);
  v13 = (*(*(swift_getTupleTypeMetadata2() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v15 = &v18 - v14;
  v16 = v12(&v18 - v14, a2, a3);
  (*(*(a7 - 8) + 32))(a1, v15, a7);
  return v16;
}

uint64_t valueWithDifferential<A, B, C, D>(at:_:_:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = *(a5 + 16);
  v13 = *(a5 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_syycMd, &_syycMR);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](TupleTypeMetadata2 - 8);
  v18 = &v21 - v17;
  v19 = v14(&v21 - v17, a2, a3, a4);
  (*(*(a9 - 8) + 32))(a1, v18, a9);
  return v19;
}

uint64_t valueWithPullback<A, B>(at:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a3 + 32);
  v8 = *(a3 + 40);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_syycMd, &_syycMR);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](TupleTypeMetadata2 - 8);
  v13 = &v16 - v12;
  v14 = v9(&v16 - v12, a2);
  (*(*(a5 - 8) + 32))(a1, v13, a5);
  return v14;
}

uint64_t valueWithPullback<A, B, C>(at:_:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a4 + 32);
  v11 = *(a4 + 40);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_syycMd, &_syycMR);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](TupleTypeMetadata2 - 8);
  v16 = &v19 - v15;
  v17 = v12(&v19 - v15, a2, a3);
  (*(*(a7 - 8) + 32))(a1, v16, a7);
  return v17;
}

uint64_t valueWithPullback<A, B, C, D>(at:_:_:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = *(a5 + 32);
  v13 = *(a5 + 40);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_syycMd, &_syycMR);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](TupleTypeMetadata2 - 8);
  v18 = &v21 - v17;
  v19 = v14(&v21 - v17, a2, a3, a4);
  (*(*(a9 - 8) + 32))(a1, v18, a9);
  return v19;
}

uint64_t differential<A, B>(at:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](a1);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v9[1];
  v15[0] = *v9;
  v15[1] = v10;
  v15[2] = v9[2];
  v13 = valueWithDifferential<A, B>(at:of:)(v8, v12, v15, v11, v11);
  (*(v5 + 8))(v8, a4);
  return v13;
}

uint64_t differential<A, B, C>(at:_:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](a1);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v11[1];
  v19[0] = *v11;
  v19[1] = v12;
  v19[2] = v11[2];
  v17 = valueWithDifferential<A, B, C>(at:_:of:)(v10, v13, v16, v19, v14, v15, v15);
  (*(v7 + 8))(v10, a6);
  return v17;
}

uint64_t differential<A, B, C, D>(at:_:_:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](a1);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v13[1];
  v23[0] = *v13;
  v23[1] = v14;
  v23[2] = v13[2];
  v21 = valueWithDifferential<A, B, C, D>(at:_:_:of:)(v12, v15, v16, v20, v23, v17, v18, v19, v19);
  (*(v9 + 8))(v12, a8);
  return v21;
}

uint64_t pullback<A, B>(at:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 32);
  v6 = *(a2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_syycMd, &_syycMR);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](TupleTypeMetadata2 - 8);
  v11 = &v14 - v10;
  v12 = v7(&v14 - v10, a1);
  (*(*(a4 - 8) + 8))(v11, a4);
  return v12;
}

uint64_t pullback<A, B, C>(at:_:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a3 + 32);
  v9 = *(a3 + 40);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_syycMd, &_syycMR);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](TupleTypeMetadata2 - 8);
  v14 = &v17 - v13;
  v15 = v10(&v17 - v13, a1, a2);
  (*(*(a6 - 8) + 8))(v14, a6);
  return v15;
}

uint64_t pullback<A, B, C, D>(at:_:_:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *(a4 + 32);
  v12 = *(a4 + 40);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_syycMd, &_syycMR);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](TupleTypeMetadata2 - 8);
  v17 = &v20 - v16;
  v18 = v13(&v20 - v16, a1, a2, a3);
  (*(*(a8 - 8) + 8))(v17, a8);
  return v18;
}

uint64_t derivative<A, B>(at:of:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x2A1C7C4A8](a1);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v9[1];
  v15[0] = *v9;
  v15[1] = v10;
  v15[2] = v9[2];
  v13 = differential<A, B>(at:of:)(v6, v15, v11, v12);
  dispatch thunk of FloatingPoint.init(_:)();
  v13(v8);

  return (*(v4 + 8))(v8, a3);
}

uint64_t derivative<A, B, C>(at:_:of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v26[0] = a4;
  v26[1] = a5;
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x2A1C7C4A8](a1);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x2A1C7C4A8](v9);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v18[1];
  v27[0] = *v18;
  v27[1] = v19;
  v27[2] = v18[2];
  v24 = differential<A, B, C>(at:_:of:)(v15, v20, v27, v21, v22, v23);
  dispatch thunk of FloatingPoint.init(_:)();
  dispatch thunk of FloatingPoint.init(_:)();
  v24(v17, v11);

  (*(v7 + 8))(v11, a3);
  return (*(v13 + 8))(v17, a2);
}

uint64_t derivative<A, B, C, D>(at:_:_:of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v39[4] = a5;
  v39[2] = a8;
  v39[3] = a10;
  v40 = *(a4 - 8);
  v13 = *(v40 + 64);
  v39[1] = a6;
  v14 = MEMORY[0x2A1C7C4A8](a1);
  v16 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x2A1C7C4A8](v14);
  v22 = v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x2A1C7C4A8](v20);
  v28 = v39 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v29[1];
  v41[0] = *v29;
  v41[1] = v30;
  v41[2] = v29[2];
  v37 = differential<A, B, C, D>(at:_:_:of:)(v26, v31, v32, v41, v33, v34, v35, v36);
  v39[0] = a2;
  dispatch thunk of FloatingPoint.init(_:)();
  dispatch thunk of FloatingPoint.init(_:)();
  dispatch thunk of FloatingPoint.init(_:)();
  v37(v28, v22, v16);

  (*(v40 + 8))(v16, a4);
  (*(v18 + 8))(v22, a3);
  return (*(v24 + 8))(v28, v39[0]);
}

uint64_t gradient<A, B>(at:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x2A1C7C4A8](a1);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v10[1];
  v16[0] = *v10;
  v16[1] = v11;
  v16[2] = v10[2];
  v14 = pullback<A, B>(at:of:)(v7, v16, v12, v13);
  dispatch thunk of FloatingPoint.init(_:)();
  v14(v9);

  return (*(v5 + 8))(v9, a4);
}

uint64_t gradient<A, B, C>(at:_:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a8 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](a1);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v15[1];
  v22[0] = *v15;
  v22[1] = v16;
  v22[2] = v15[2];
  v20 = pullback<A, B, C>(at:_:of:)(v19, v17, v22, v17, v15, v18);
  dispatch thunk of FloatingPoint.init(_:)();
  v20(a1, a2, v14);

  return (*(v11 + 8))(v14, a8);
}

uint64_t gradient<A, B, C, D>(at:_:_:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = *(a11 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](a1);
  v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v18[1];
  v25[0] = *v18;
  v25[1] = v19;
  v25[2] = v18[2];
  v23 = pullback<A, B, C, D>(at:_:_:of:)(v22, v20, v21, v25, v20, v21, v18, a11);
  dispatch thunk of FloatingPoint.init(_:)();
  v23(a1, a2, a3, v17);

  return (*(v14 + 8))(v17, a11);
}

uint64_t valueWithDerivative<A, B>(at:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x2A1C7C4A8]();
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v11[1];
  v17[0] = *v11;
  v17[1] = v12;
  v17[2] = v11[2];
  v15 = valueWithDifferential<A, B>(at:of:)(v8, v14, v17, v11, v13);
  dispatch thunk of FloatingPoint.init(_:)();
  v15(v10);

  return (*(v6 + 8))(v10, a5);
}

uint64_t valueWithDerivative<A, B, C>(at:_:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v32[0] = a11;
  v32[1] = a2;
  v13 = *(a7 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x2A1C7C4A8](a1);
  v17 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x2A1C7C4A8](v15);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v24[1];
  v33[0] = *v24;
  v33[1] = v25;
  v33[2] = v24[2];
  v30 = valueWithDifferential<A, B, C>(at:_:of:)(v21, v26, v29, v33, v24, v27, v28);
  dispatch thunk of FloatingPoint.init(_:)();
  dispatch thunk of FloatingPoint.init(_:)();
  v30(v23, v17);

  (*(v13 + 8))(v17, a7);
  return (*(v19 + 8))(v23, a6);
}

uint64_t valueWithDerivative<A, B, C, D>(at:_:_:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v43[2] = a13;
  v43[3] = a15;
  v44 = *(a9 - 8);
  v45 = a2;
  v17 = *(v44 + 64);
  v43[1] = a11;
  v18 = MEMORY[0x2A1C7C4A8](a1);
  v20 = v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x2A1C7C4A8](v18);
  v26 = v43 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x2A1C7C4A8](v24);
  v32 = v43 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v33[1];
  v46[0] = *v33;
  v46[1] = v34;
  v46[2] = v33[2];
  v41 = valueWithDifferential<A, B, C, D>(at:_:_:of:)(v30, v35, v36, v39, v46, v33, v37, v38, v40);
  v43[0] = a7;
  dispatch thunk of FloatingPoint.init(_:)();
  dispatch thunk of FloatingPoint.init(_:)();
  dispatch thunk of FloatingPoint.init(_:)();
  v41(v32, v26, v20);

  (*(v44 + 8))(v20, a9);
  (*(v22 + 8))(v26, a8);
  return (*(v28 + 8))(v32, v43[0]);
}

uint64_t valueWithGradient<A, B>(at:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x2A1C7C4A8](a1);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v12[1];
  v18[0] = *v12;
  v18[1] = v13;
  v18[2] = v12[2];
  v16 = valueWithPullback<A, B>(at:of:)(v9, v15, v18, v12, v14);
  dispatch thunk of FloatingPoint.init(_:)();
  v16(v11);

  return (*(v7 + 8))(v11, a6);
}

uint64_t valueWithGradient<A, B, C>(at:_:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(a9 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x2A1C7C4A8](a1);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v16[1];
  v22[0] = *v16;
  v22[1] = v17;
  v22[2] = v16[2];
  v20 = valueWithPullback<A, B, C>(at:_:of:)(v13, v19, v18, v22, v18, v16, a9);
  dispatch thunk of FloatingPoint.init(_:)();
  v20(a2, a3, v15);

  return (*(v11 + 8))(v15, a9);
}

uint64_t valueWithGradient<A, B, C, D>(at:_:_:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = *(a12 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x2A1C7C4A8](a1);
  v19 = v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v20[1];
  v27[0] = *v20;
  v27[1] = v21;
  v27[2] = v20[2];
  v25 = valueWithPullback<A, B, C, D>(at:_:_:of:)(v17, v24, v22, v23, v27, v22, v23, v20, a12);
  dispatch thunk of FloatingPoint.init(_:)();
  v25(a2, a3, a4, v19);

  return (*(v15 + 8))(v19, a12);
}

uint64_t (*derivative<A, B>(of:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t a1)
{
  v12 = *a1;
  v13 = a1[5];
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  *(v14 + 32) = a4;
  *(v14 + 40) = a5;
  *(v14 + 48) = a6;
  *(v14 + 56) = v12;
  v15 = *(a1 + 3);
  *(v14 + 64) = *(a1 + 1);
  *(v14 + 80) = v15;
  *(v14 + 96) = v13;

  return partial apply for closure #1 in derivative<A, B>(of:);
}

uint64_t partial apply for closure #1 in derivative<A, B>(of:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 72);
  v7[0] = *(v1 + 56);
  v7[1] = v5;
  v7[2] = *(v1 + 88);
  return derivative<A, B>(at:of:)(a1, v7, v2);
}

uint64_t (*derivative<A, B, C>(of:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9))@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = *a1;
  v16 = a1[5];
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  *(v17 + 32) = a4;
  *(v17 + 40) = a5;
  *(v17 + 48) = a6;
  *(v17 + 56) = a7;
  *(v17 + 64) = a8;
  *(v17 + 72) = a9;
  *(v17 + 80) = v15;
  *(v17 + 88) = *(a1 + 1);
  *(v17 + 104) = *(a1 + 3);
  *(v17 + 120) = v16;

  return partial apply for closure #1 in derivative<A, B, C>(of:);
}

uint64_t sub_299BF39F4()
{
  v1 = v0[11];

  v2 = v0[13];

  v3 = v0[15];

  return MEMORY[0x2A1C733A0](v0, 128, 7);
}

uint64_t partial apply for closure #1 in derivative<A, B, C>(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 32);
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  v8 = *(v2 + 112);
  v5 = *(v2 + 56);
  return derivative<A, B, C>(at:_:of:)(a1, *(v2 + 16), *(v2 + 24), *(v2 + 40), a2);
}

uint64_t (*derivative<A, B, C, D>(of:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11))@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = *a1;
  v17 = a1[5];
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  *(v18 + 32) = a4;
  *(v18 + 40) = a5;
  *(v18 + 48) = a6;
  *(v18 + 56) = a7;
  *(v18 + 64) = a8;
  *(v18 + 72) = a9;
  *(v18 + 88) = a10;
  *(v18 + 96) = a11;
  *(v18 + 104) = v16;
  v19 = *(a1 + 3);
  *(v18 + 112) = *(a1 + 1);
  *(v18 + 128) = v19;
  *(v18 + 144) = v17;

  return partial apply for closure #1 in derivative<A, B, C, D>(of:);
}

uint64_t sub_299BF3B80()
{
  v1 = v0[14];

  v2 = v0[16];

  v3 = v0[18];

  return MEMORY[0x2A1C733A0](v0, 152, 7);
}

uint64_t partial apply for closure #1 in derivative<A, B, C, D>(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 40);
  v7 = *(v2 + 104);
  v8 = *(v2 + 120);
  v9 = *(v2 + 136);
  return derivative<A, B, C, D>(at:_:_:of:)(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), a2, *(v2 + 48), v5, *(v2 + 64), v6, *(v2 + 80));
}

uint64_t (*gradient<A, B>(of:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *a1;
  v13 = a1[5];
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  *(v14 + 32) = a4;
  *(v14 + 40) = a5;
  *(v14 + 48) = a6;
  *(v14 + 56) = v12;
  v15 = *(a1 + 3);
  *(v14 + 64) = *(a1 + 1);
  *(v14 + 80) = v15;
  *(v14 + 96) = v13;

  return partial apply for closure #1 in gradient<A, B>(of:);
}

uint64_t objectdestroyTm()
{
  v1 = v0[8];

  v2 = v0[10];

  v3 = v0[12];

  return MEMORY[0x2A1C733A0](v0, 104, 7);
}

uint64_t partial apply for closure #1 in gradient<A, B>(of:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 24);
  v5 = *(v3 + 40);
  v6 = *(v3 + 72);
  v8[0] = *(v3 + 56);
  v8[1] = v6;
  v8[2] = *(v3 + 88);
  return gradient<A, B>(at:of:)(a1, v8, a3, v4);
}

uint64_t (*gradient<A, B, C>(of:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *a1;
  v16 = a1[5];
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  *(v17 + 32) = a4;
  *(v17 + 40) = a5;
  *(v17 + 48) = a6;
  *(v17 + 56) = a7;
  *(v17 + 64) = a8;
  *(v17 + 72) = v15;
  v18 = *(a1 + 3);
  *(v17 + 80) = *(a1 + 1);
  *(v17 + 96) = v18;
  *(v17 + 112) = v16;

  return partial apply for closure #1 in gradient<A, B, C>(of:);
}

uint64_t sub_299BF3E60()
{
  v1 = v0[10];

  v2 = v0[12];

  v3 = v0[14];

  return MEMORY[0x2A1C733A0](v0, 120, 7);
}

uint64_t partial apply for closure #1 in gradient<A, B, C>(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(v7 + 32);
  v9 = *(v7 + 56);
  v10 = *(v7 + 88);
  v12[0] = *(v7 + 72);
  v12[1] = v10;
  v12[2] = *(v7 + 104);
  return gradient<A, B, C>(at:_:of:)(a1, a2, a3, a4, v12, a6, a7, v8);
}

uint64_t (*gradient<A, B, C, D>(of:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *a1;
  v16 = a1[5];
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  *(v17 + 32) = a4;
  *(v17 + 40) = a5;
  *(v17 + 48) = a6;
  *(v17 + 56) = a7;
  *(v17 + 64) = a8;
  *(v17 + 72) = a9;
  *(v17 + 80) = a10;
  *(v17 + 88) = v15;
  v18 = *(a1 + 3);
  *(v17 + 96) = *(a1 + 1);
  *(v17 + 112) = v18;
  *(v17 + 128) = v16;

  return partial apply for closure #1 in gradient<A, B, C, D>(of:);
}

uint64_t sub_299BF3FD8()
{
  v1 = v0[12];

  v2 = v0[14];

  v3 = v0[16];

  return MEMORY[0x2A1C733A0](v0, 136, 7);
}

uint64_t partial apply for closure #1 in gradient<A, B, C, D>(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 40);
  v10 = *(v8 + 72);
  v11 = *(v8 + 104);
  v15[0] = *(v8 + 88);
  v15[1] = v11;
  v15[2] = *(v8 + 120);
  return gradient<A, B, C, D>(at:_:_:of:)(a1, a2, a3, a4, a5, a6, v15, a8, v13, v14, v9);
}

uint64_t _ConcreteDifferentiableBox._move(by:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v23 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v22 = *(v5 - 8);
  v6 = *(v22 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v5);
  v9 = &v21 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v13 = &v21 - v12;
  v15 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v15);
  (*(v14 + 56))(v24, v15, v14);
  v16 = swift_dynamicCast();
  v17 = *(v10 + 56);
  if (!v16)
  {
    v17(v9, 1, 1, AssociatedTypeWitness);
    (*(v22 + 8))(v9, v5);
    v19 = a1[3];
    v20 = a1[4];
    __swift_project_boxed_opaque_existential_1Tm(a1, v19);
    (*(v20 + 56))(v24, v19, v20);
    __swift_project_boxed_opaque_existential_1Tm(v24, v24[3]);
    swift_getDynamicType();
    _derivativeTypeMismatch(_:_:file:line:)();
  }

  v17(v9, 0, 1, AssociatedTypeWitness);
  (*(v10 + 32))(v13, v9, AssociatedTypeWitness);
  (*(v3 + 32))(v13, v23, v3);
  return (*(v10 + 8))(v13, AssociatedTypeWitness);
}

uint64_t AnyDerivative.base.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1Tm(v0, v1);
  return (*(v2 + 56))(v1, v2);
}

void _derivativeTypeMismatch(_:_:file:line:)()
{
  _StringGuts.grow(_:)(35);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXpMd, &_sypXpMR);
  v0 = String.init<A>(reflecting:)();
  MEMORY[0x29C2AE2B0](v0);

  MEMORY[0x29C2AE2B0](0x20646E6120, 0xE500000000000000);
  v1 = String.init<A>(reflecting:)();
  MEMORY[0x29C2AE2B0](v1);

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t AnyDifferentiable.base.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1Tm(v0, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t (*static AnyDifferentiable._vjpInit<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
{
  v7 = *(*(a3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  AnyDifferentiable.init<A>(_:)(v9, a3, a1);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  return partial apply for closure #1 in static AnyDifferentiable._vjpInit<A>(_:);
}

uint64_t closure #1 in static AnyDifferentiable._vjpInit<A>(_:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v1);
  (*(v2 + 56))(v4, v1, v2);
  swift_getAssociatedTypeWitness();
  return swift_dynamicCast();
}

uint64_t partial apply for closure #1 in static AnyDifferentiable._vjpInit<A>(_:)(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return closure #1 in static AnyDifferentiable._vjpInit<A>(_:)(a1);
}

uint64_t (*reverse-mode derivative of AnyDifferentiable.init<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
{
  static AnyDifferentiable._vjpInit<A>(_:)(a1, a2, a3, a4);
  (*(*(a3 - 8) + 8))(a2, a3);
  return partial apply for closure #1 in static AnyDifferentiable._vjpInit<A>(_:);
}

uint64_t (*static AnyDifferentiable._jvpInit<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v7 = *(*(a3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  AnyDifferentiable.init<A>(_:)(v9, a3, a1);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  return partial apply for closure #1 in static AnyDifferentiable._jvpInit<A>(_:);
}

uint64_t closure #1 in static AnyDifferentiable._jvpInit<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  return AnyDerivative.init<A>(_:)(v7, AssociatedTypeWitness, a2);
}

uint64_t partial apply for closure #1 in static AnyDifferentiable._jvpInit<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return closure #1 in static AnyDifferentiable._jvpInit<A>(_:)(a1, a2);
}

uint64_t AnyDifferentiable.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  a5[3] = a3(0);
  a5[4] = a4;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a5);
  v10 = *(*(a2 - 8) + 32);

  return v10(boxed_opaque_existential_1Tm, a1, a2);
}

uint64_t (*forward-mode derivative of AnyDifferentiable.init<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1)
{
  static AnyDifferentiable._jvpInit<A>(_:)(a1, a2, a3, a4);
  v8 = v7;
  (*(*(a3 - 8) + 8))(a2, a3);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = partial apply for closure #1 in static AnyDifferentiable._jvpInit<A>(_:);
  v9[5] = v8;
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A.Differentiable.TangentVector) -> (@out AnyDerivative);
}

uint64_t AnyDifferentiable.move(by:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 8))(a1, v3, v4);
}

uint64_t protocol witness for Differentiable.move(by:) in conformance AnyDifferentiable(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 8))(a1, v3, v4);
}

uint64_t AnyDifferentiable.customMirror.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1Tm(v0, v1);
  (*(v2 + 16))(v4, v1, v2);
  return Mirror.init(reflecting:)();
}

uint64_t protocol witness for CustomReflectable.customMirror.getter in conformance AnyDifferentiable()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1Tm(v0, v1);
  (*(v2 + 16))(v4, v1, v2);
  return Mirror.init(reflecting:)();
}

Swift::Bool __swiftcall _AnyDerivativeBox._isOpaqueZero()()
{
  v2 = v1;
  v3 = v0;
  v4 = *(v1 + 64);
  v5 = lazy protocol witness table accessor for type AnyDerivative.OpaqueZero and conformance AnyDerivative.OpaqueZero();
  v4(&v7, &type metadata for AnyDerivative.OpaqueZero, &type metadata for AnyDerivative.OpaqueZero, v5, v3, v2);
  return (v7 & 1) == 0;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A.Differentiable.TangentVector) -> (@out AnyDerivative)(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v5();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 8);

  return v8(a1, AssociatedTypeWitness);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnyDerivative.OpaqueZero and conformance AnyDerivative.OpaqueZero()
{
  result = lazy protocol witness table cache variable for type AnyDerivative.OpaqueZero and conformance AnyDerivative.OpaqueZero;
  if (!lazy protocol witness table cache variable for type AnyDerivative.OpaqueZero and conformance AnyDerivative.OpaqueZero)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyDerivative.OpaqueZero and conformance AnyDerivative.OpaqueZero);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnyDerivative.OpaqueZero and conformance AnyDerivative.OpaqueZero;
  if (!lazy protocol witness table cache variable for type AnyDerivative.OpaqueZero and conformance AnyDerivative.OpaqueZero)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyDerivative.OpaqueZero and conformance AnyDerivative.OpaqueZero);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnyDerivative.OpaqueZero and conformance AnyDerivative.OpaqueZero;
  if (!lazy protocol witness table cache variable for type AnyDerivative.OpaqueZero and conformance AnyDerivative.OpaqueZero)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyDerivative.OpaqueZero and conformance AnyDerivative.OpaqueZero);
  }

  return result;
}

uint64_t _ConcreteDifferentiableBox._typeErasedBase.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  a2[3] = v3;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a2);
  v5 = *(*(v3 - 8) + 16);

  return v5(boxed_opaque_existential_1Tm, v2, v3);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1Tm(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t _ConcreteDerivativeBox._unboxed<A>(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v9 = *(a2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](a1);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for _ConcreteDerivativeBox();
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v14);
  v18 = &v25 - v17;
  (*(v9 + 16))(v12, v5, a2);
  v19 = swift_dynamicCast();
  v20 = *(*(v13 - 8) + 56);
  if (v19)
  {
    v21 = *(v13 - 8);
    v20(v18, 0, 1, v13);
    v22 = *(a3 - 8);
    (*(v22 + 16))(a4, v18, a3);
    (*(v21 + 8))(v18, v13);
    v23 = 0;
  }

  else
  {
    v23 = 1;
    v20(v18, 1, 1, v13);
    (*(v15 + 8))(v18, v14);
    v22 = *(a3 - 8);
  }

  return (*(v22 + 56))(a4, v23, 1, a3);
}

uint64_t _ConcreteDerivativeBox._isEqual(to:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](a1);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v47 = *(TupleTypeMetadata2 - 8);
  v12 = *(v47 + 64);
  v13 = MEMORY[0x2A1C7C4A8](TupleTypeMetadata2);
  v15 = &v41 - v14;
  v46 = *(v10 - 8);
  v16 = *(v46 + 64);
  v17 = MEMORY[0x2A1C7C4A8](v13);
  v48 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x2A1C7C4A8](v17);
  v21 = &v41 - v20;
  MEMORY[0x2A1C7C4A8](v19);
  v23 = &v41 - v22;
  v45 = v7;
  (*(v7 + 16))(&v41 - v22, v3, v6);
  (*(v7 + 56))(v23, 0, 1, v6);
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v25 = *(v24 + 64);
  v43 = *(a2 + 24);
  v25(v6, v6);
  v26 = TupleTypeMetadata2;
  v27 = *(TupleTypeMetadata2 + 48);
  v28 = v46;
  v29 = *(v46 + 32);
  v29(v15, v23, v10);
  v29(&v15[v27], v21, v10);
  v30 = v45;
  v31 = *(v45 + 48);
  if (v31(v15, 1, v6) == 1)
  {
    if (v31(&v15[v27], 1, v6) == 1)
    {
      v32 = 1;
    }

    else
    {
      v28 = v47;
      v10 = v26;
      v32 = 0;
    }
  }

  else
  {
    v33 = v47;
    v42 = v26;
    (*(v28 + 16))(v48, v15, v10);
    if (v31(&v15[v27], 1, v6) == 1)
    {
      (*(v30 + 8))(v48, v6);
      v32 = 0;
      v28 = v33;
      v10 = v42;
    }

    else
    {
      v34 = v44;
      (*(v30 + 32))(v44, &v15[v27], v6);
      v35 = *(swift_getAssociatedConformanceWitness() + 8);
      v36 = v28;
      v37 = v48;
      v32 = dispatch thunk of static Equatable.== infix(_:_:)();
      v38 = *(v30 + 8);
      v38(v34, v6);
      v39 = v37;
      v28 = v36;
      v38(v39, v6);
    }
  }

  (*(v28 + 8))(v15, v10);
  return v32 & 1;
}

uint64_t _ConcreteDerivativeBox._isNotEqual(to:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v41 = a2;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](a1);
  v37 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v39 = *(TupleTypeMetadata2 - 8);
  v11 = *(v39 + 64);
  v12 = MEMORY[0x2A1C7C4A8](TupleTypeMetadata2);
  v14 = &v36 - v13;
  v40 = *(v9 - 8);
  v15 = *(v40 + 64);
  v16 = MEMORY[0x2A1C7C4A8](v12);
  v38 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x2A1C7C4A8](v16);
  v20 = &v36 - v19;
  MEMORY[0x2A1C7C4A8](v18);
  v22 = &v36 - v21;
  (*(v6 + 16))(&v36 - v21, v3, v5);
  (*(v6 + 56))(v22, 0, 1, v5);
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v24 = *(v23 + 64);
  v36 = *(v41 + 24);
  v24(v5, v5);
  v41 = TupleTypeMetadata2;
  v25 = *(TupleTypeMetadata2 + 48);
  v26 = v40;
  v27 = *(v40 + 32);
  v27(v14, v22, v9);
  v27(&v14[v25], v20, v9);
  v28 = *(v6 + 48);
  if (v28(v14, 1, v5) != 1)
  {
    v30 = v38;
    (*(v26 + 16))(v38, v14, v9);
    if (v28(&v14[v25], 1, v5) != 1)
    {
      v31 = v37;
      (*(v6 + 32))(v37, &v14[v25], v5);
      v32 = *(swift_getAssociatedConformanceWitness() + 8);
      v33 = dispatch thunk of static Equatable.== infix(_:_:)();
      v34 = *(v6 + 8);
      v34(v31, v5);
      v34(v30, v5);
      (*(v26 + 8))(v14, v9);
      v29 = v33 ^ 1;
      return v29 & 1;
    }

    (*(v6 + 8))(v30, v5);
    goto LABEL_6;
  }

  if (v28(&v14[v25], 1, v5) != 1)
  {
LABEL_6:
    (*(v39 + 8))(v14, v41);
    v29 = 1;
    return v29 & 1;
  }

  (*(v26 + 8))(v14, v9);
  v29 = 0;
  return v29 & 1;
}

uint64_t static _ConcreteDerivativeBox._zero.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  a2[3] = type metadata accessor for _ConcreteDerivativeBox();
  a2[4] = &protocol witness table for _ConcreteDerivativeBox<A>;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a2);
  return (*(v4 + 32))(boxed_opaque_existential_1Tm, v7, a1);
}

uint64_t _ConcreteDerivativeBox._adding(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 + 16);
  v8 = type metadata accessor for Optional();
  v38 = *(v8 - 8);
  v39 = v8;
  v9 = *(v38 + 64);
  v10 = MEMORY[0x2A1C7C4A8](v8);
  v12 = &v34 - v11;
  v13 = *(v7 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x2A1C7C4A8](v10);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v19 = &v34 - v18;
  v20 = lazy protocol witness table accessor for type AnyDerivative.OpaqueZero and conformance AnyDerivative.OpaqueZero();
  _ConcreteDerivativeBox._unboxed<A>(to:)(v20, a2, &type metadata for AnyDerivative.OpaqueZero, v40);
  if ((v40[0] & 1) == 0)
  {
    return outlined init with copy of _AnyDerivativeBox(a1, a3);
  }

  v35 = v13;
  v36 = a3;
  v37 = v3;
  v22 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v22);
  (*(v21 + 64))(v40, &type metadata for AnyDerivative.OpaqueZero, &type metadata for AnyDerivative.OpaqueZero, v20, v22, v21);
  if (v40[0])
  {
    v23 = a1[4];
    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    v24 = *(v23 + 64);
    v34 = *(a2 + 24);
    v24(v7, v7);
    v25 = v35;
    if ((*(v35 + 48))(v12, 1, v7) == 1)
    {
      (*(v38 + 8))(v12, v39);
      v32 = a1[3];
      v33 = a1[4];
      __swift_project_boxed_opaque_existential_1Tm(a1, v32);
      (*(v33 + 56))(v40, v32, v33);
      __swift_project_boxed_opaque_existential_1Tm(v40, v40[3]);
      swift_getDynamicType();
      _derivativeTypeMismatch(_:_:file:line:)();
    }

    v26 = *(v25 + 32);
    v26(v19, v12, v7);
    swift_getAssociatedConformanceWitness();
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    (*(v25 + 8))(v19, v7);
    v27 = v36;
    v36[3] = a2;
    v27[4] = &protocol witness table for _ConcreteDerivativeBox<A>;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v27);
    return (v26)(boxed_opaque_existential_1Tm, v17, v7);
  }

  else
  {
    v30 = v36;
    v36[3] = a2;
    v30[4] = &protocol witness table for _ConcreteDerivativeBox<A>;
    v31 = __swift_allocate_boxed_opaque_existential_1Tm(v30);
    return (*(*(a2 - 8) + 16))(v31, v37, a2);
  }
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t outlined init with copy of _AnyDerivativeBox(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t _ConcreteDerivativeBox._subtracting(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = type metadata accessor for Optional();
  v36 = *(v7 - 8);
  v37 = v7;
  v8 = *(v36 + 64);
  v9 = MEMORY[0x2A1C7C4A8](v7);
  v40 = v35 - v10;
  v41 = *(v6 - 8);
  v11 = *(v41 + 64);
  v12 = MEMORY[0x2A1C7C4A8](v9);
  v39 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v38 = v35 - v14;
  v16 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v16);
  v17 = *(v15 + 64);
  v18 = lazy protocol witness table accessor for type AnyDerivative.OpaqueZero and conformance AnyDerivative.OpaqueZero();
  v19 = v17(v43, &type metadata for AnyDerivative.OpaqueZero, &type metadata for AnyDerivative.OpaqueZero, v18, v16, v15);
  if (v43[0])
  {
    _ConcreteDerivativeBox._unboxed<A>(to:)(v19, a2, &type metadata for AnyDerivative.OpaqueZero, v43);
    v20 = a1[3];
    if (v43[0])
    {
      v21 = a1[4];
      __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
      v22 = *(v21 + 64);
      v23 = v40;
      v35[1] = *(a2 + 24);
      v22(v6, v6);
      v24 = v41;
      if ((*(v41 + 48))(v23, 1, v6) == 1)
      {
        (*(v36 + 8))(v23, v37);
        v33 = a1[3];
        v34 = a1[4];
        __swift_project_boxed_opaque_existential_1Tm(a1, v33);
        (*(v34 + 56))(v43, v33, v34);
        __swift_project_boxed_opaque_existential_1Tm(v43, v44);
        swift_getDynamicType();
        _derivativeTypeMismatch(_:_:file:line:)();
      }

      v25 = *(v24 + 32);
      v26 = v38;
      v25(v38, v23, v6);
      swift_getAssociatedConformanceWitness();
      v27 = v39;
      dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
      (*(v24 + 8))(v26, v6);
      a3[3] = a2;
      a3[4] = &protocol witness table for _ConcreteDerivativeBox<A>;
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a3);
      return (v25)(boxed_opaque_existential_1Tm, v27, v6);
    }

    else
    {
      __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
      swift_getDynamicType();
      (*(a1[4] + 24))(v43);
      v31 = v44;
      v32 = v45;
      __swift_project_boxed_opaque_existential_1Tm(v43, v44);
      (*(v32 + 40))(a1, v31, v32);
      return __swift_destroy_boxed_opaque_existential_1(v43);
    }
  }

  else
  {
    a3[3] = a2;
    a3[4] = &protocol witness table for _ConcreteDerivativeBox<A>;
    v30 = __swift_allocate_boxed_opaque_existential_1Tm(a3);
    return (*(*(a2 - 8) + 16))(v30, v42, a2);
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *_ConcreteDerivativeBox._move(by:)(void *a1, uint64_t a2)
{
  v25 = a2;
  v3 = *(a2 + 16);
  v4 = type metadata accessor for Optional();
  v23 = *(v4 - 8);
  v24 = v4;
  v5 = *(v23 + 64);
  v6 = MEMORY[0x2A1C7C4A8](v4);
  v8 = &v23 - v7;
  v9 = *(v3 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v14);
  v15 = *(v13 + 64);
  v16 = lazy protocol witness table accessor for type AnyDerivative.OpaqueZero and conformance AnyDerivative.OpaqueZero();
  result = v15(v26, &type metadata for AnyDerivative.OpaqueZero, &type metadata for AnyDerivative.OpaqueZero, v16, v14, v13);
  if (LOBYTE(v26[0]) == 1)
  {
    v18 = a1[3];
    v19 = a1[4];
    __swift_project_boxed_opaque_existential_1Tm(a1, v18);
    v20 = *(v25 + 24);
    (*(v19 + 64))(v3, v3, v20, v18, v19);
    if ((*(v9 + 48))(v8, 1, v3) == 1)
    {
      (*(v23 + 8))(v8, v24);
      v21 = a1[3];
      v22 = a1[4];
      __swift_project_boxed_opaque_existential_1Tm(a1, v21);
      (*(v22 + 56))(v26, v21, v22);
      __swift_project_boxed_opaque_existential_1Tm(v26, v26[3]);
      swift_getDynamicType();
      _derivativeTypeMismatch(_:_:file:line:)();
    }

    (*(v9 + 32))(v12, v8, v3);
    (*(v20 + 32))(v12, v3, v20);
    return (*(v9 + 8))(v12, v3);
  }

  return result;
}

uint64_t AnyDerivative._box.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return outlined init with take of _AnyDerivativeBox(a1, v1);
}

uint64_t outlined init with take of _AnyDerivativeBox(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t (*static AnyDerivative._vjpInit<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
{
  v7 = *(*(a3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  AnyDerivative.init<A>(_:)(v9, a3, a1);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  return partial apply for closure #1 in static AnyDerivative._vjpInit<A>(_:);
}

uint64_t closure #1 in static AnyDerivative._vjpInit<A>(_:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v1);
  (*(v2 + 56))(v4, v1, v2);
  return swift_dynamicCast();
}

uint64_t partial apply for closure #1 in static AnyDerivative._vjpInit<A>(_:)(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return closure #1 in static AnyDerivative._vjpInit<A>(_:)(a1);
}

uint64_t (*reverse-mode derivative of AnyDerivative.init<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
{
  static AnyDerivative._vjpInit<A>(_:)(a1, a2, a3, a4);
  (*(*(a3 - 8) + 8))(a2, a3);
  return partial apply for closure #1 in static AnyDerivative._vjpInit<A>(_:);
}

uint64_t (*static AnyDerivative._jvpInit<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v7 = *(*(a3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  AnyDerivative.init<A>(_:)(v9, a3, a1);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  return partial apply for closure #1 in static AnyDerivative._jvpInit<A>(_:);
}

uint64_t closure #1 in static AnyDerivative._jvpInit<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(*(a2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  return AnyDerivative.init<A>(_:)(v7, a2, a3);
}

uint64_t (*forward-mode derivative of AnyDerivative.init<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1)
{
  static AnyDerivative._jvpInit<A>(_:)(a1, a2, a3, a4);
  v8 = v7;
  (*(*(a3 - 8) + 8))(a2, a3);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = partial apply for closure #1 in static AnyDerivative._jvpInit<A>(_:);
  v9[5] = v8;
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out AnyDerivative);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out AnyDerivative)(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[4];
  v5 = v1[5];
  v4();
  v6 = *(*(v3 - 8) + 8);

  return v6(a1, v3);
}

uint64_t static AnyDerivative.== infix(_:_:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v3);
  return (*(v4 + 8))(a2, v3, v4) & 1;
}

uint64_t static AnyDerivative.!= infix(_:_:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v3);
  return (*(v4 + 16))(a2, v3, v4) & 1;
}

uint64_t static AdditiveArithmetic.+= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t, uint64_t, uint64_t))
{
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8]();
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 32))(v13, a1);
  a5(v13, a2, a3, a4);
  return (*(v10 + 8))(v13, a3);
}

uint64_t static AnyDerivative.zero.getter@<X0>(uint64_t a1@<X8>)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16_Differentiation22_ConcreteDerivativeBoxVyAA03AnyC0V10OpaqueZeroVGMd, &_s16_Differentiation22_ConcreteDerivativeBoxVyAA03AnyC0V10OpaqueZeroVGMR);
  *(a1 + 24) = result;
  *(a1 + 32) = &protocol witness table for _ConcreteDerivativeBox<A>;
  return result;
}

uint64_t (*static AnyDerivative._vjpAdd(lhs:rhs:)(uint64_t a1, void *a2, uint64_t a3))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm(a2, v4);
  (*(v5 + 32))(a3, v4, v5);
  return closure #1 in static AnyDerivative._vjpAdd(lhs:rhs:);
}

uint64_t closure #1 in static AnyDerivative._vjpAdd(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  outlined init with copy of AnyDerivative(a3, a1);

  return outlined init with copy of AnyDerivative(a3, a2);
}

uint64_t (*reverse-mode derivative of static AnyDerivative.+ infix(_:_:)(uint64_t a1, void *a2, uint64_t a3))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm(a2, v4);
  (*(v5 + 32))(a3, v4, v5);
  return closure #1 in static AnyDerivative._vjpAdd(lhs:rhs:);
}

uint64_t (*static AnyDerivative._jvpAdd(lhs:rhs:)(uint64_t a1, void *a2, uint64_t a3))()
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm(a2, v4);
  (*(v5 + 32))(a3, v4, v5);
  return closure #1 in static AnyDerivative._jvpAdd(lhs:rhs:);
}

uint64_t static AnyDerivative.+ infix(_:_:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v3);
  return (*(v4 + 32))(a2, v3, v4);
}

uint64_t (*forward-mode derivative of static AnyDerivative.+ infix(_:_:)(uint64_t a1, void *a2, uint64_t a3))()
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm(a2, v4);
  (*(v5 + 32))(a3, v4, v5);
  return closure #1 in static AnyDerivative._jvpAdd(lhs:rhs:);
}

uint64_t *(*static AnyDerivative._vjpSubtract(lhs:rhs:)(uint64_t a1, void *a2, uint64_t a3))(uint64_t a1, uint64_t *a2, void *a3)
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm(a2, v4);
  (*(v5 + 40))(a3, v4, v5);
  return closure #1 in static AnyDerivative._vjpSubtract(lhs:rhs:);
}

uint64_t *closure #1 in static AnyDerivative._vjpSubtract(lhs:rhs:)(uint64_t a1, uint64_t *a2, void *a3)
{
  outlined init with copy of AnyDerivative(a3, a1);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16_Differentiation22_ConcreteDerivativeBoxVyAA03AnyC0V10OpaqueZeroVGMd, &_s16_Differentiation22_ConcreteDerivativeBoxVyAA03AnyC0V10OpaqueZeroVGMR);
  v7[3] = v5;
  v7[4] = &protocol witness table for _ConcreteDerivativeBox<A>;
  __swift_project_boxed_opaque_existential_1Tm(v7, v5);
  _ConcreteDerivativeBox._subtracting(_:)(a3, v5, a2);
  return outlined destroy of AnyDerivative(v7);
}

uint64_t *(*reverse-mode derivative of static AnyDerivative.- infix(_:_:)(uint64_t a1, void *a2, uint64_t a3))(uint64_t a1, uint64_t *a2, void *a3)
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm(a2, v4);
  (*(v5 + 40))(a3, v4, v5);
  return closure #1 in static AnyDerivative._vjpSubtract(lhs:rhs:);
}

uint64_t (*static AnyDerivative._jvpSubtract(lhs:rhs:)(uint64_t a1, void *a2, uint64_t a3))()
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm(a2, v4);
  (*(v5 + 40))(a3, v4, v5);
  return closure #1 in static AnyDerivative._jvpSubtract(lhs:rhs:);
}

uint64_t static AnyDerivative.- infix(_:_:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v3);
  return (*(v4 + 40))(a2, v3, v4);
}

uint64_t (*forward-mode derivative of static AnyDerivative.- infix(_:_:)(uint64_t a1, void *a2, uint64_t a3))()
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm(a2, v4);
  (*(v5 + 40))(a3, v4, v5);
  return closure #1 in static AnyDerivative._jvpSubtract(lhs:rhs:);
}

uint64_t *AnyDerivative.move(by:)(uint64_t *a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v3);
  v5 = *(v4 + 64);
  v6 = lazy protocol witness table accessor for type AnyDerivative.OpaqueZero and conformance AnyDerivative.OpaqueZero();
  v5(&v10, &type metadata for AnyDerivative.OpaqueZero, &type metadata for AnyDerivative.OpaqueZero, v6, v3, v4);
  if ((v10 & 1) == 0)
  {
    return __swift_assign_boxed_opaque_existential_1(v1, a1);
  }

  v7 = v1[3];
  v8 = v1[4];
  __swift_mutable_project_boxed_opaque_existential_1(v1, v7);
  return (*(v8 + 48))(a1, v7, v8);
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v14 = *result;
        v15 = *a2;
        v16 = result;

        *v16 = v15;
      }

      else
      {
        v11 = *(v10 + 24);
        v12 = result[3];

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        v13 = *result;
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v17);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v17, v2);
      }
    }
  }

  return result;
}

uint64_t *protocol witness for Differentiable.move(by:) in conformance AnyDerivative(uint64_t *a1)
{
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v1[3]);
  if (_AnyDerivativeBox._isOpaqueZero()())
  {

    return __swift_assign_boxed_opaque_existential_1(v1, a1);
  }

  else
  {
    v5 = v1[3];
    v6 = v1[4];
    __swift_mutable_project_boxed_opaque_existential_1(v1, v5);
    return (*(v6 + 48))(a1, v5, v6);
  }
}

uint64_t protocol witness for static AdditiveArithmetic.zero.getter in conformance AnyDerivative@<X0>(uint64_t a1@<X8>)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16_Differentiation22_ConcreteDerivativeBoxVyAA03AnyC0V10OpaqueZeroVGMd, &_s16_Differentiation22_ConcreteDerivativeBoxVyAA03AnyC0V10OpaqueZeroVGMR);
  *(a1 + 24) = result;
  *(a1 + 32) = &protocol witness table for _ConcreteDerivativeBox<A>;
  return result;
}

uint64_t *protocol witness for static AdditiveArithmetic.+= infix(_:_:) in conformance AnyDerivative(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v8 = *(a1 + 32);
  v4 = v8;
  v5 = *(&v3 + 1);
  __swift_project_boxed_opaque_existential_1Tm(v7, *(&v3 + 1));
  (*(v4 + 32))(a2, v5, v4);
  return outlined destroy of AnyDerivative(v7);
}

uint64_t *protocol witness for static AdditiveArithmetic.-= infix(_:_:) in conformance AnyDerivative(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v8 = *(a1 + 32);
  v4 = v8;
  v5 = *(&v3 + 1);
  __swift_project_boxed_opaque_existential_1Tm(v7, *(&v3 + 1));
  (*(v4 + 40))(a2, v5, v4);
  return outlined destroy of AnyDerivative(v7);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AnyDerivative(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v3);
  return (*(v4 + 8))(a2, v3, v4) & 1;
}

uint64_t AnyDerivative.customMirror.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1Tm(v0, v1);
  (*(v2 + 56))(v4, v1, v2);
  return Mirror.init(reflecting:)();
}

uint64_t protocol witness for CustomReflectable.customMirror.getter in conformance AnyDerivative()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1Tm(v0, v1);
  (*(v2 + 56))(v4, v1, v2);
  return Mirror.init(reflecting:)();
}

uint64_t Array<A>.DifferentiableView.base.getter()
{
  _ConcreteDerivativeBox._base.modify();
}

uint64_t key path getter for Array<A>.DifferentiableView.base : <A>[A]<A>.DifferentiableView@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = _ConcreteDerivativeBox._base.modify(*a1, *(a2 + a3 - 16), *(a2 + a3 - 8));
}

uint64_t key path setter for Array<A>.DifferentiableView.base : <A>[A]<A>.DifferentiableView(uint64_t *a1)
{
  v1 = *a1;

  v2 = Array<A>.DifferentiableView.base.modify();
  v4 = *v3;
  *v3 = v1;

  return (v2)(&v6, 0);
}

uint64_t Array<A>.DifferentiableView.base.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Array<A>.DifferentiableView._vjpBase()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
}

uint64_t reverse-mode derivative of Array<A>.DifferentiableView.base.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = Array<A>.DifferentiableView._vjpBase()(a1, a2, a3);
  v7 = v6;
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = partial apply for closure #1 in Array<A>.DifferentiableView._vjpBase();
  v8[5] = v7;
  return v5;
}

uint64_t Array<A>.DifferentiableView._jvpBase()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
}

uint64_t forward-mode derivative of Array<A>.DifferentiableView.base.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = Array<A>.DifferentiableView._jvpBase()(a1, a2, a3);
  v7 = v6;
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = partial apply for closure #1 in Array<A>.DifferentiableView._vjpBase();
  v8[5] = v7;
  return v5;
}

uint64_t static Array<A>.DifferentiableView._vjpInit(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
}

uint64_t reverse-mode derivative of Array<A>.DifferentiableView.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = static Array<A>.DifferentiableView._vjpInit(_:)(a1, a2, a3);
  v7 = v6;

  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = partial apply for closure #1 in Array<A>.DifferentiableView._vjpBase();
  v8[5] = v7;
  return v5;
}

uint64_t static Array<A>.DifferentiableView._jvpInit(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
}

uint64_t forward-mode derivative of Array<A>.DifferentiableView.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = static Array<A>.DifferentiableView._jvpInit(_:)(a1, a2, a3);
  v7 = v6;

  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = partial apply for closure #1 in Array<A>.DifferentiableView._vjpBase();
  v8[5] = v7;
  return v5;
}

uint64_t Array<A>.DifferentiableView.move(by:)(int64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v30 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v8 = v29 - v7;
  v33 = a1;
  type metadata accessor for Array();
  v32 = a1;

  swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {
  }

  v9 = *v31;

  v11 = MEMORY[0x29C2AE390](v10, v3);

  v12 = v32;
  v13 = MEMORY[0x29C2AE390](v32, AssociatedTypeWitness);
  if (v11 == v13)
  {
    v35 = v12;
    swift_getWitnessTable();
    RandomAccessCollection<>.indices.getter();
    v14 = v33;
    v15 = v34;
    if (v33 != v34)
    {
      v29[1] = v30 + 32;
      v16 = (v5 + 8);
      if (v34 <= v33)
      {
        v17 = v33;
      }

      else
      {
        v17 = v34;
      }

      while (v17 != v14)
      {
        v18 = v14 + 1;
        Array.subscript.getter();
        type metadata accessor for Array();
        v19 = v31;
        Array._makeMutableAndUnique()();
        v20 = *v19;
        Array._checkSubscript_mutating(_:)(v14);
        if (_swift_isClassOrObjCExistentialType())
        {
          v21 = v20 & 0xFFFFFFFFFFFFFF8;
        }

        else
        {
          v21 = v20;
        }

        v22 = v21 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)) + *(*(v3 - 8) + 72) * v14;
        (*(v30 + 32))(v8, v3);
        (*v16)(v8, AssociatedTypeWitness);
        ++v14;
        if (v15 == v18)
        {
        }
      }

      v13 = _fatalErrorMessage(_:_:file:line:flags:)();
      __break(1u);
      goto LABEL_14;
    }
  }

LABEL_14:
  v24 = v13;

  v33 = 0;
  v34 = 0xE000000000000000;
  _StringGuts.grow(_:)(48);

  v33 = 0xD000000000000010;
  v34 = 0x8000000299C28B40;

  v26 = MEMORY[0x29C2AE390](v25, v3);

  v35 = v26;
  v27 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x29C2AE2B0](v27);

  MEMORY[0x29C2AE2B0](0x27666C6573272820, 0xEE0020646E612029);
  v35 = v24;
  v28 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x29C2AE2B0](v28);

  MEMORY[0x29C2AE2B0](0x6365726964272820, 0xEE0029276E6F6974);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t static Array<A>.DifferentiableView<>.== infix(_:_:)()
{

  v0 = static Array<A>.== infix(_:_:)();

  return v0 & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance <> [A]<A>.DifferentiableView(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *a1;
  v6 = *a2;
  v7 = *(a3 + 16);
  return static Array<A>.DifferentiableView<>.== infix(_:_:)();
}

uint64_t Array<A>.DifferentiableView.description.getter(uint64_t a1, uint64_t a2)
{

  v4 = MEMORY[0x29C2AE300](v3, a2);

  return v4;
}

uint64_t Array<A>.DifferentiableView.customMirror.getter()
{

  Array.customMirror.getter();
}

uint64_t protocol witness for CustomReflectable.customMirror.getter in conformance [A]<A>.DifferentiableView(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  return Array<A>.DifferentiableView.customMirror.getter();
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a8;
  v9 = v8;
  v67 = a2;
  v68 = a4;
  v66 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  v15 = *(v61 + 64);
  v16 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v50 = &v49 - v17;
  v53 = a5;
  v51 = *(a5 - 8);
  v18 = *(v51 + 64);
  v19 = MEMORY[0x2A1C7C4A8](v16);
  v63 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v64 = &v49 - v21;
  v22 = type metadata accessor for Optional();
  v54 = *(v22 - 8);
  v55 = v22;
  v23 = *(v54 + 64);
  v24 = MEMORY[0x2A1C7C4A8](v22);
  v57 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x2A1C7C4A8](v24);
  v28 = &v49 - v27;
  v29 = *(*(a4 - 1) + 64);
  v30 = MEMORY[0x2A1C7C4A8](v26);
  v56 = &v49 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x2A1C7C4A8](v30);
  v62 = *(a3 - 1);
  v33 = *(v62 + 8);
  MEMORY[0x2A1C7C4A8](v32);
  v35 = &v49 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a6;
  v69 = swift_getAssociatedTypeWitness();
  v60 = *(v69 - 8);
  v36 = *(v60 + 64);
  MEMORY[0x2A1C7C4A8](v69);
  v38 = &v49 - v37;
  v39 = dispatch thunk of Sequence.underestimatedCount.getter();
  v70 = ContiguousArray.init()();
  v65 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v39);
  (*(v62 + 2))(v35, v58, a3);
  v68 = v38;
  v62 = a3;
  dispatch thunk of Sequence.makeIterator()();
  if (v39 < 0)
  {
    while (1)
    {
LABEL_16:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  if (v39)
  {
    v40 = (v61 + 48);
    v41 = (v61 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      dispatch thunk of IteratorProtocol.next()();
      if ((*v40)(v28, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_16;
      }

      v66(v28, v64);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v41)(v28, AssociatedTypeWitness);
      ContiguousArray.append(_:)();
      if (!--v39)
      {
        goto LABEL_9;
      }
    }

    (*(v60 + 8))(v68, v69);

    (*(v51 + 32))(v52, v64, v53);
    return (*v41)(v28, AssociatedTypeWitness);
  }

  else
  {
    swift_getAssociatedConformanceWitness();
LABEL_9:
    v42 = v57;
    dispatch thunk of IteratorProtocol.next()();
    v43 = v42;
    v44 = v61;
    v45 = *(v61 + 48);
    v64 = (v61 + 48);
    v62 = v45;
    if (v45(v42, 1, AssociatedTypeWitness) == 1)
    {
LABEL_13:
      (*(v60 + 8))(v68, v69);
      (*(v54 + 8))(v43, v55);
      return v70;
    }

    else
    {
      v61 = *(v44 + 32);
      v46 = (v44 + 8);
      v47 = v50;
      while (1)
      {
        (v61)(v47, v43, AssociatedTypeWitness);
        v66(v47, v63);
        if (v9)
        {
          break;
        }

        v9 = 0;
        (*v46)(v47, AssociatedTypeWitness);
        ContiguousArray.append(_:)();
        dispatch thunk of IteratorProtocol.next()();
        if (v62(v43, 1, AssociatedTypeWitness) == 1)
        {
          goto LABEL_13;
        }
      }

      (*v46)(v47, AssociatedTypeWitness);
      (*(v60 + 8))(v68, v69);

      return (*(v51 + 32))(v52, v63, v53);
    }
  }
}

uint64_t static Array<A>.DifferentiableView<>.+ infix(_:_:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(char *, char *))
{

  v16 = MEMORY[0x29C2AE390](v15, a3);
  if (!v16)
  {

    return a2;
  }

  v17 = v16;

  v19 = MEMORY[0x29C2AE390](v18, a3);
  if (!v19)
  {

    return a1;
  }

  if (v17 == v19)
  {
    v31 = a9;
    v32 = a1;
    v20 = type metadata accessor for Array();
    WitnessTable = swift_getWitnessTable();
    zip<A, B>(_:_:)();

    v36 = v38;
    v37 = v39;
    v22 = swift_allocObject();
    v30[1] = v30;
    v22[2] = a3;
    v22[3] = a4;
    v22[4] = a5;
    v22[5] = a3;
    v29[2] = a3;
    v29[3] = a4;
    v29[4] = a5;
    v29[5] = a8;
    v29[6] = MEMORY[0x2A1C7C4A8](v22);
    v32 = v20;
    v33 = v20;
    v34 = WitnessTable;
    v35 = WitnessTable;
    v23 = type metadata accessor for Zip2Sequence();
    v24 = swift_getWitnessTable();
    a2 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(v31, v29, v23, a3, MEMORY[0x29EDC9F80], v24, MEMORY[0x29EDC9F90], v25);

    return a2;
  }

  _StringGuts.grow(_:)(25);

  v27 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x29C2AE2B0](v27);

  MEMORY[0x29C2AE2B0](0x20646E6120, 0xE500000000000000);
  v28 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x29C2AE2B0](v28);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t Array<A>.DifferentiableView<>.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  if (MEMORY[0x29C2AE390](a2, a3) <= a1)
  {

    return dispatch thunk of static AdditiveArithmetic.zero.getter();
  }

  else
  {
    Array.subscript.getter();
  }
}

uint64_t protocol witness for static AdditiveArithmetic.zero.getter in conformance <> [A]<A>.DifferentiableView@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = static Array<A>.DifferentiableView<>.zero.getter();
  *a2 = result;
  return result;
}

uint64_t protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance <> [A]<A>.DifferentiableView@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void, void, void, void, void)@<X4>, uint64_t *a6@<X8>)
{
  result = a5(*a1, *a2, *(a3 + 16), *(a4 - 8), *(a3 + 24));
  *a6 = result;
  return result;
}

uint64_t Array<A>.move(by:)(int64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v7 = *v2;
  v5 = type metadata accessor for Array<A>.DifferentiableView();
  result = Array<A>.DifferentiableView.move(by:)(a1, v5);
  *v2 = v7;
  return result;
}

uint64_t (*Array<A>._vjpSubscript(index:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  Array.subscript.getter();
  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = a5;
  v9[4] = a3;
  v9[5] = a2;

  return partial apply for pullback #1 <A>(_:) in Array<A>._vjpSubscript(index:);
}

uint64_t pullback #1 <A>(_:) in Array<A>._vjpSubscript(index:)(uint64_t a1, uint64_t a2, Swift::Int a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v12 = &v19 - v11;
  swift_getAssociatedConformanceWitness();
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v13 = MEMORY[0x29C2AE390](a2, a4);
  v14 = specialized Array.init(repeating:count:)(v12, v13, AssociatedTypeWitness);
  (*(v9 + 8))(v12, AssociatedTypeWitness);
  v20 = v14;
  type metadata accessor for Array();
  Array._makeMutableAndUnique()();
  v15 = v20;
  Array._checkSubscript_mutating(_:)(a3);
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  v17 = v15 & 0xFFFFFFFFFFFFFF8;
  if ((isClassOrObjCExistentialType & 1) == 0)
  {
    v17 = v15;
  }

  (*(v9 + 24))(v17 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * a3, a1, AssociatedTypeWitness);
  return v20;
}

uint64_t (*reverse-mode derivative of Array.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  Array<A>._vjpSubscript(index:)(a1, a2, a3, a4, a5);
  v8 = v7;
  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = a5;
  v9[4] = partial apply for pullback #1 <A>(_:) in Array<A>._vjpSubscript(index:);
  v9[5] = v8;
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A.Differentiable.TangentVector) -> (@owned [A.Differentiable.TangentVector]<A>.DifferentiableView);
}

uint64_t (*Array<A>._jvpSubscript(index:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  Array.subscript.getter();
  v8 = swift_allocObject();
  v8[2] = a4;
  v8[3] = a5;
  v8[4] = a2;
  return partial apply for differential #1 <A>(_:) in Array<A>._jvpSubscript(index:);
}

uint64_t differential #1 <A>(_:) in Array<A>._jvpSubscript(index:)(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return Array<A>.DifferentiableView<>.subscript.getter(a2, a1, AssociatedTypeWitness);
}

uint64_t (*forward-mode derivative of Array.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  Array<A>._jvpSubscript(index:)(a1, a2, a3, a4, a5);
  v8 = v7;
  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = a5;
  v9[4] = partial apply for differential #1 <A>(_:) in Array<A>._jvpSubscript(index:);
  v9[5] = v8;
  return partial apply for thunk for @escaping @callee_guaranteed (@guaranteed [A.Differentiable.TangentVector]<A>.DifferentiableView) -> (@out A.Differentiable.TangentVector);
}

uint64_t static Array<A>._vjpConcatenate(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = static Array.+ infix(_:_:)();
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a1;
  v9[5] = a2;

  return v8;
}

uint64_t pullback #1 <A>(_:) in static Array<A>._vjpConcatenate(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for Array();

  swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {

    v9 = static Array._allocateUninitialized(_:)();
    static Array._allocateUninitialized(_:)();
    return v9;
  }

  v10 = MEMORY[0x29C2AE390](a1, AssociatedTypeWitness);
  v11 = MEMORY[0x29C2AE390](a2, a4);
  v12 = MEMORY[0x29C2AE390](a3, a4);
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v10 != v11 + v12)
  {
LABEL_9:

    _StringGuts.grow(_:)(91);
    MEMORY[0x29C2AE2B0](0xD000000000000022, 0x8000000299C28D80);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x29C2AE2B0](v14);

    MEMORY[0x29C2AE2B0](0xD00000000000002ELL, 0x8000000299C28DB0);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x29C2AE2B0](v15);

    MEMORY[0x29C2AE2B0](0x20646E6120, 0xE500000000000000);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x29C2AE2B0](v16);

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_10;
  }

  if ((MEMORY[0x29C2AE390](a2, a4) & 0x8000000000000000) == 0)
  {
    Array.subscript.getter();
    type metadata accessor for ArraySlice();
    swift_getWitnessTable();
    v9 = Array.init<A>(_:)();
    swift_getCanonicalSpecializedMetadata();
    swift_getWitnessTable();
    lazy protocol witness table accessor for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>();
    MutableCollection.subscript.getter();

    Array.init<A>(_:)();
    return v9;
  }

LABEL_10:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t reverse-mode derivative of static Array.+ infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = static Array<A>._vjpConcatenate(_:_:)(a1, a2, a3, a4);
  v8 = v7;
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = partial apply for pullback #1 <A>(_:) in static Array<A>._vjpConcatenate(_:_:);
  v9[5] = v8;
  return v6;
}

uint64_t static Array<A>._jvpConcatenate(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = static Array.+ infix(_:_:)();
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a1;
  v9[5] = a2;

  return v8;
}

uint64_t differential #1 <A>(_:_:) in static Array<A>._jvpConcatenate(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  v10 = MEMORY[0x29C2AE390](v9, AssociatedTypeWitness);

  if (v10 == MEMORY[0x29C2AE390](a3, a5) && (v11 = , v12 = MEMORY[0x29C2AE390](v11, AssociatedTypeWitness), , v12 == MEMORY[0x29C2AE390](a4, a5)))
  {

    v13 = static Array.+ infix(_:_:)();

    return v13;
  }

  else
  {
    _StringGuts.grow(_:)(82);
    MEMORY[0x29C2AE2B0](0xD000000000000049, 0x8000000299C28D30);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x29C2AE2B0](v15);

    MEMORY[0x29C2AE2B0](0x20646E6120, 0xE500000000000000);
    MEMORY[0x29C2AE390](a4, a5);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x29C2AE2B0](v16);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t forward-mode derivative of static Array.+ infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = static Array<A>._jvpConcatenate(_:_:)(a1, a2, a3, a4);
  v8 = v7;
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = partial apply for differential #1 <A>(_:_:) in static Array<A>._jvpConcatenate(_:_:);
  v9[5] = v8;
  return v6;
}

uint64_t (*Array<A>._vjpAppend(_:)(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x29C2AE390](*v3, v6);
  (*(v7 + 16))(v10, a1, v6);
  Array.append(_:)();
  v12 = swift_allocObject();
  v12[2] = v6;
  v12[3] = a3;
  v12[4] = v11;
  return partial apply for closure #1 in Array<A>._vjpAppend(_:);
}

uint64_t closure #1 in Array<A>._vjpAppend(_:)(uint64_t *a1)
{
  v1 = *a1;
  swift_getAssociatedTypeWitness();

  Array.subscript.getter();

  return $defer #1 <A>() in closure #1 in Array<A>._vjpAppend(_:)();
}

uint64_t $defer #1 <A>() in closure #1 in Array<A>._vjpAppend(_:)()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v4 = &v6 - v3;
  type metadata accessor for Array();
  swift_getWitnessTable();
  swift_getWitnessTable();
  RangeReplaceableCollection<>.removeLast()();
  return (*(v1 + 8))(v4, AssociatedTypeWitness);
}

uint64_t (*reverse-mode derivative of Array.append(_:)(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  Array<A>._vjpAppend(_:)(a1, a2, a3);
  v7 = v6;
  v8 = *(a2 + 16);
  (*(*(v8 - 8) + 8))(a1, v8);
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a3;
  v9[4] = partial apply for closure #1 in Array<A>._vjpAppend(_:);
  v9[5] = v7;
  return partial apply for autodiff self-reordering reabstraction thunk for @escaping @callee_guaranteed (@inout [A.Differentiable.TangentVector]<A>.DifferentiableView) -> (@out A.Differentiable.TangentVector);
}

uint64_t (*Array<A>._jvpAppend(_:)(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](a1);
  (*(v7 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  Array.append(_:)();
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  *(v8 + 24) = a3;
  return partial apply for closure #1 in Array<A>._jvpAppend(_:);
}

uint64_t closure #1 in Array<A>._jvpAppend(_:)(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  (*(v6 + 16))(&v8 - v5, a2, AssociatedTypeWitness);
  type metadata accessor for Array();
  return Array.append(_:)();
}

uint64_t (*forward-mode derivative of Array.append(_:)(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2)
{
  Array<A>._jvpAppend(_:)(a1, a2, a3);
  v7 = v6;
  v8 = *(a2 + 16);
  (*(*(v8 - 8) + 8))(a1, v8);
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a3;
  v9[4] = partial apply for closure #1 in Array<A>._jvpAppend(_:);
  v9[5] = v7;
  return partial apply for autodiff self-reordering reabstraction thunk for @escaping @callee_guaranteed (@in A.Differentiable.TangentVector, @inout [A.Differentiable.TangentVector]<A>.DifferentiableView) -> ();
}

uint64_t (*static Array<A>._vjpAppend(_:_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t *a1)
{
  v6 = MEMORY[0x29C2AE390](*a1, a3);
  static Array.+= infix(_:_:)();
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = a4;
  v7[4] = v6;
  return partial apply for closure #1 in static Array<A>._vjpAppend(_:_:);
}

uint64_t closure #1 in static Array<A>._vjpAppend(_:_:)(uint64_t *a1)
{
  v1 = *a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for Array();

  swift_getWitnessTable();
  Collection.dropFirst(_:)();
  type metadata accessor for ArraySlice();
  swift_getWitnessTable();
  v3 = Array.init<A>(_:)();

  MEMORY[0x29C2AE390](v4, AssociatedTypeWitness);

  swift_getWitnessTable();
  swift_getWitnessTable();
  RangeReplaceableCollection<>.removeLast(_:)();
  return v3;
}

uint64_t (*reverse-mode derivative of static Array.+= infix(_:_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  static Array<A>._vjpAppend(_:_:)(a1, a2, a3, a4);
  v7 = v6;
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = partial apply for closure #1 in static Array<A>._vjpAppend(_:_:);
  v8[5] = v7;
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A.Differentiable.TangentVector) -> (@owned [A.Differentiable.TangentVector]<A>.DifferentiableView);
}

uint64_t (*static Array<A>._jvpAppend(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  static Array.+= infix(_:_:)();
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  return partial apply for closure #1 in static Array<A>._jvpAppend(_:_:);
}

uint64_t closure #1 in static Array<A>._jvpAppend(_:_:)()
{
  swift_getAssociatedTypeWitness();

  static Array.+= infix(_:_:)();
}

uint64_t (*forward-mode derivative of static Array.+= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  static Array<A>._jvpAppend(_:_:)(a1, a2, a3, a4);
  v7 = v6;
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = partial apply for closure #1 in static Array<A>._jvpAppend(_:_:);
  v8[5] = v7;
  return partial apply for thunk for @escaping @callee_guaranteed (@inout [A.Differentiable.TangentVector]<A>.DifferentiableView, @guaranteed [A.Differentiable.TangentVector]<A>.DifferentiableView) -> ();
}

uint64_t static Array<A>._vjpInit(repeating:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = specialized Array.init(repeating:count:)(a1, a2, a3);
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  return v6;
}

uint64_t closure #1 in static Array<A>._vjpInit(repeating:count:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v10 = &v12[-v9];
  v16 = a1;
  swift_getAssociatedConformanceWitness();

  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v13 = a2;
  v14 = a3;
  v15 = AssociatedTypeWitness;
  type metadata accessor for Array();
  swift_getWitnessTable();
  Sequence.reduce<A>(_:_:)();
  (*(v7 + 8))(v10, AssociatedTypeWitness);
}

uint64_t implicit closure #1 in closure #1 in static Array<A>._vjpInit(repeating:count:)()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
}

uint64_t reverse-mode derivative of Array.init(repeating:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = static Array<A>._vjpInit(repeating:count:)(a1, a2, a3, a4);
  v9 = v8;
  (*(*(a3 - 8) + 8))(a1, a3);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = partial apply for closure #1 in static Array<A>._vjpInit(repeating:count:);
  v10[5] = v9;
  return v7;
}

uint64_t static Array<A>._jvpInit(repeating:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = specialized Array.init(repeating:count:)(a1, a2, a3);
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a2;
  return v7;
}

uint64_t forward-mode derivative of Array.init(repeating:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = static Array<A>._jvpInit(repeating:count:)(a1, a2, a3, a4);
  v9 = v8;
  (*(*(a3 - 8) + 8))(a1, a3);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = partial apply for closure #1 in static Array<A>._jvpInit(repeating:count:);
  v10[5] = v9;
  return v7;
}

uint64_t Array<A>.differentiableMap<A>(_:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = a2;
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = a6;
  v12 = *a1;
  v7 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  return _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@in_guaranteed A) -> (@out A1), v11, v7, a4, MEMORY[0x29EDC9F80], WitnessTable, MEMORY[0x29EDC9F90], v9);
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v51 = a1;
  v52 = a2;
  v43 = *(a5 - 8);
  v44 = a8;
  v10 = *(v43 + 64);
  MEMORY[0x2A1C7C4A8](a1);
  v53 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v50 = *(AssociatedTypeWitness - 8);
  v14 = *(v50 + 64);
  v15 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v45 = &v39 - v16;
  v17 = *(*(a4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v15);
  v46 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_getAssociatedTypeWitness();
  v48 = *(v19 - 8);
  v20 = *(v48 + 64);
  v21 = MEMORY[0x2A1C7C4A8](v19);
  v42 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v21);
  v24 = &v39 - v23;
  v25 = dispatch thunk of Collection.count.getter();
  if (!v25)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v26 = v25;
  v40 = a5;
  v41 = v19;
  v57 = ContiguousArray.init()();
  v49 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v26);
  v54 = v24;
  dispatch thunk of Collection.startIndex.getter();
  if (v26 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_12:
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v27 = (v50 + 16);
    v50 += 8;
    v28 = AssociatedTypeWitness;
    v29 = v45;
    do
    {
      v30 = dispatch thunk of Collection.subscript.read();
      (*v27)(v29);
      v30(v56, 0);
      v31 = v55;
      v51(v29, v53);
      if (v31)
      {
        (*v50)(v29, v28);
        (*(v48 + 8))(v54, v41);

        return (*(v43 + 32))(v44, v53, v40);
      }

      v55 = 0;
      (*v50)(v29, v28);
      ContiguousArray.append(_:)();
      dispatch thunk of Collection.formIndex(after:)();
      --v26;
    }

    while (v26);
    v32 = v42;
    dispatch thunk of Collection.endIndex.getter();
    v33 = v41;
    v34 = *(swift_getAssociatedConformanceWitness() + 8);
    v35 = v54;
    v36 = dispatch thunk of static Equatable.== infix(_:_:)();
    v37 = *(v48 + 8);
    v37(v32, v33);
    if ((v36 & 1) == 0)
    {
      goto LABEL_12;
    }

    v37(v35, v33);
    return v57;
  }

  return result;
}

uint64_t Array<A>._vjpDifferentiableMap<A>(_:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  v42 = a1[1];
  v43 = v11;
  v41 = a1[2];
  v12 = *(*(a4 - 8) + 64);
  v13 = MEMORY[0x2A1C7C4A8](a1);
  v40 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x2A1C7C4A8](v13);
  v34 = v18;
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = static Array._allocateUninitialized(_:)();
  v48 = v20;
  v36 = a5;
  swift_getAssociatedTypeWitness();
  v44 = a4;
  swift_getAssociatedTypeWitness();
  FunctionTypeMetadata1 = swift_getFunctionTypeMetadata1();
  v21 = static Array._allocateUninitialized(_:)();
  v47 = v21;
  if (!MEMORY[0x29C2AE3B0](a2, a3))
  {
LABEL_12:
    v30 = swift_allocObject();
    v31 = v44;
    v30[2] = a3;
    v30[3] = v31;
    v30[4] = v36;
    v30[5] = a6;
    v30[6] = v21;
    return v20;
  }

  v35 = a6;
  v22 = 0;
  v38 = (v16 + 16);
  v37 = (v16 + 8);
  while (1)
  {
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (IsNativeType)
    {
      (*(v16 + 16))(v19, a2 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v22, a3);
      v25 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }

    v29 = _ArrayBuffer._getElementSlowPath(_:)();
    if (v34 != 8)
    {
      break;
    }

    v45[0] = v29;
    (*v38)(v19, v45, a3);
    swift_unknownObjectRelease();
    v25 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
LABEL_10:
      __break(1u);
LABEL_11:
      v21 = v47;
      v20 = v48;
      a6 = v35;
      goto LABEL_12;
    }

LABEL_5:
    v46[0] = v43;
    v46[1] = v42;
    v46[2] = v41;
    v26 = valueWithPullback<A, B>(at:of:)(v40, v19, v46, v24, v44);
    v28 = v27;
    (*v37)(v19, a3);
    type metadata accessor for Array();
    Array.append(_:)();
    v45[0] = v26;
    v45[1] = v28;
    type metadata accessor for Array();
    Array.append(_:)();
    ++v22;
    if (v25 == MEMORY[0x29C2AE3B0](a2, a3))
    {
      goto LABEL_11;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized pullback #1 <A><A1>(_:) in Array<A>._vjpDifferentiableMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Array();
  swift_getAssociatedTypeWitness();
  swift_getFunctionTypeMetadata1();
  v11 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  zip<A, B>(_:_:)();
  v36 = v38;
  v37 = v39;
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v31 = a6;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = partial apply for closure #1 in pullback #1 <A><A1>(_:) in Array<A>._vjpDifferentiableMap<A>(_:);
  v26 = &v27;
  v32 = v10;
  v33 = v11;
  v34 = WitnessTable;
  v35 = v13;
  v14 = type metadata accessor for Zip2Sequence();
  v15 = swift_checkMetadataState();
  v16 = swift_getWitnessTable();
  v18 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(_s13TangentVector16_Differentiation14DifferentiablePQyd__xq_Ri_zRi0_zRi__Ri0__r0_lyAeaDQzIsegnr_AFIgngr_AE_xq_Ri_zRi0_zRi__Ri0__r0_lyAeFIsegnr_tAFs5NeverOIegnrzr_AbCRzAbCRd__r__lTRTA, v20, v14, v15, MEMORY[0x29EDC9F80], v16, MEMORY[0x29EDC9F90], v17);

  return v18;
}

uint64_t _s13TangentVector16_Differentiation14DifferentiablePQyd__xq_Ri_zRi0_zRi__Ri0__r0_lyAeaDQzIsegnr_AFIgngr_AE_xq_Ri_zRi0_zRi__Ri0__r0_lyAeFIsegnr_tAFs5NeverOIegnrzr_AbCRzAbCRd__r__lTR(uint64_t a1, uint64_t (*a2)(uint64_t, void, void))
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_syycMd, &_syycMR);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, *(a1 + *(TupleTypeMetadata2 + 48)), *(a1 + *(TupleTypeMetadata2 + 48) + 8));
}

uint64_t reverse-mode derivative of Array<A>.differentiableMap<A>(_:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a1[1];
  v16[0] = *a1;
  v16[1] = v10;
  v16[2] = a1[2];
  v11 = Array<A>._vjpDifferentiableMap<A>(_:)(v16, a2, a3, a4, a5, a6);
  v13 = v12;
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = a6;
  v14[6] = partial apply for specialized pullback #1 <A><A1>(_:) in Array<A>._vjpDifferentiableMap<A>(_:);
  v14[7] = v13;
  return v11;
}

uint64_t Array<A>._jvpDifferentiableMap<A>(_:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  v42 = a1[1];
  v43 = v11;
  v41 = a1[2];
  v12 = *(*(a4 - 8) + 64);
  v13 = MEMORY[0x2A1C7C4A8](a1);
  v40 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x2A1C7C4A8](v13);
  v34 = v18;
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = static Array._allocateUninitialized(_:)();
  v48 = v20;
  v44 = a4;
  swift_getAssociatedTypeWitness();
  v36 = a5;
  swift_getAssociatedTypeWitness();
  FunctionTypeMetadata1 = swift_getFunctionTypeMetadata1();
  v21 = static Array._allocateUninitialized(_:)();
  v47 = v21;
  if (!MEMORY[0x29C2AE3B0](a2, a3))
  {
LABEL_12:
    v30 = swift_allocObject();
    v31 = v44;
    v30[2] = a3;
    v30[3] = v31;
    v30[4] = v36;
    v30[5] = a6;
    v30[6] = v21;
    return v20;
  }

  v35 = a6;
  v22 = 0;
  v38 = (v16 + 16);
  v37 = (v16 + 8);
  while (1)
  {
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (IsNativeType)
    {
      (*(v16 + 16))(v19, a2 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v22, a3);
      v25 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }

    v29 = _ArrayBuffer._getElementSlowPath(_:)();
    if (v34 != 8)
    {
      break;
    }

    v45[0] = v29;
    (*v38)(v19, v45, a3);
    swift_unknownObjectRelease();
    v25 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
LABEL_10:
      __break(1u);
LABEL_11:
      v21 = v47;
      v20 = v48;
      a6 = v35;
      goto LABEL_12;
    }

LABEL_5:
    v46[0] = v43;
    v46[1] = v42;
    v46[2] = v41;
    v26 = valueWithDifferential<A, B>(at:of:)(v40, v19, v46, v24, v44);
    v28 = v27;
    (*v37)(v19, a3);
    type metadata accessor for Array();
    Array.append(_:)();
    v45[0] = v26;
    v45[1] = v28;
    type metadata accessor for Array();
    Array.append(_:)();
    ++v22;
    if (v25 == MEMORY[0x29C2AE3B0](a2, a3))
    {
      goto LABEL_11;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized differential #1 <A><A1>(_:) in Array<A>._jvpDifferentiableMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Array();
  swift_getAssociatedTypeWitness();
  swift_getFunctionTypeMetadata1();
  v11 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  zip<A, B>(_:_:)();
  v36 = v38;
  v37 = v39;
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v31 = a6;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = partial apply for closure #1 in differential #1 <A><A1>(_:) in Array<A>._jvpDifferentiableMap<A>(_:);
  v26 = &v27;
  v32 = v10;
  v33 = v11;
  v34 = WitnessTable;
  v35 = v13;
  v14 = type metadata accessor for Zip2Sequence();
  v15 = swift_checkMetadataState();
  v16 = swift_getWitnessTable();
  v18 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(_s13TangentVector16_Differentiation14DifferentiablePQzxq_Ri_zRi0_zRi__Ri0__r0_lyAeaDQyd__Isegnr_AFIgngr_AE_xq_Ri_zRi0_zRi__Ri0__r0_lyAeFIsegnr_tAFs5NeverOIegnrzr_AbCRzAbCRd__r__lTRTA, v20, v14, v15, MEMORY[0x29EDC9F80], v16, MEMORY[0x29EDC9F90], v17);

  return v18;
}

uint64_t _s13TangentVector16_Differentiation14DifferentiablePQzxq_Ri_zRi0_zRi__Ri0__r0_lyAeaDQyd__Isegnr_AFIgngr_AE_xq_Ri_zRi0_zRi__Ri0__r0_lyAeFIsegnr_tAFs5NeverOIegnrzr_AbCRzAbCRd__r__lTR(uint64_t a1, uint64_t (*a2)(uint64_t, void, void))
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_syycMd, &_syycMR);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, *(a1 + *(TupleTypeMetadata2 + 48)), *(a1 + *(TupleTypeMetadata2 + 48) + 8));
}

uint64_t forward-mode derivative of Array<A>.differentiableMap<A>(_:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a1[1];
  v16[0] = *a1;
  v16[1] = v10;
  v16[2] = a1[2];
  v11 = Array<A>._jvpDifferentiableMap<A>(_:)(v16, a2, a3, a4, a5, a6);
  v13 = v12;
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = a6;
  v14[6] = partial apply for specialized differential #1 <A><A1>(_:) in Array<A>._jvpDifferentiableMap<A>(_:);
  v14[7] = v13;
  return v11;
}

uint64_t Array<A>.differentiableReduce<A>(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  type metadata accessor for Array();
  swift_getWitnessTable();
  return Sequence.reduce<A>(_:_:)();
}

uint64_t (*Array<A>._vjpDifferentiableReduce<A>(_:_:)(uint64_t a1, void (**a2)(uint64_t, uint64_t, uint64_t), __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))(uint64_t a1, uint64_t a2)
{
  v59 = a2;
  v11 = a1;
  v12 = *a3;
  v57 = a3[1];
  v58 = v12;
  v56 = a3[2];
  v13 = *(a5 - 8);
  v14 = *(v13 + 8);
  v15 = MEMORY[0x2A1C7C4A8](a1);
  v47 = v16;
  v63 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 - 8);
  v19 = v18[8];
  v20 = MEMORY[0x2A1C7C4A8](v15);
  v55 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v20);
  v23 = &v46 - v22;
  v62 = v24;
  swift_getAssociatedTypeWitness();
  v61 = a7;
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  swift_getFunctionTypeMetadata1();
  v66 = static Array._allocateUninitialized(_:)();
  v25 = MEMORY[0x29C2AE390](a4, a5);
  v26 = type metadata accessor for Array();
  v49 = v25;
  v54 = v26;
  Array.reserveCapacity(_:)(v25);
  v27 = v18[2];
  v60 = v23;
  v27(v23, v59, a6);
  if (MEMORY[0x29C2AE3B0](a4, a5))
  {
    v48 = v11;
    v28 = 0;
    v53 = (v13 + 16);
    v52 = v13;
    v51 = (v13 + 8);
    v50 = (v18 + 1);
    v59 = (v18 + 4);
    v29 = v55;
    v30 = v60;
    while (1)
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        (*(v52 + 2))(v63, a4 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 9) * v28, a5);
        v34 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        v41 = _ArrayBuffer._getElementSlowPath(_:)();
        if (v47 != 8)
        {
          result = _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          return result;
        }

        v64[0] = v41;
        (*v53)(v63, v64, a5);
        swift_unknownObjectRelease();
        v34 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
LABEL_10:
          __break(1u);
LABEL_11:
          v11 = v48;
          goto LABEL_13;
        }
      }

      v65[0] = v58;
      v65[1] = v57;
      v65[2] = v56;
      v35 = v63;
      v36 = valueWithPullback<A, B, C>(at:_:of:)(v29, v30, v63, v65, v32, v33, a6);
      v38 = v37;
      (*v51)(v35, a5);
      (*v50)(v30, a6);
      v13 = *v59;
      (*v59)(v30, v29, a6);
      v39 = swift_allocObject();
      v39[2] = a5;
      v39[3] = a6;
      v40 = v62;
      v39[4] = v61;
      v39[5] = v40;
      v39[6] = v36;
      v39[7] = v38;
      v64[0] = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A1.Differentiable.TangentVector) -> (@out A1.Differentiable.TangentVector, @out A.Differentiable.TangentVector);
      v64[1] = v39;
      Array.append(_:)();
      ++v28;
      if (v34 == MEMORY[0x29C2AE3B0](a4, a5))
      {
        goto LABEL_11;
      }
    }
  }

  v13 = v18[4];
LABEL_13:
  v13(v11, v60, a6);
  v42 = v66;
  v43 = swift_allocObject();
  v43[2] = a5;
  v43[3] = a6;
  v44 = v62;
  v43[4] = v61;
  v43[5] = v44;
  v43[6] = v49;
  v43[7] = v42;
  return partial apply for specialized closure #1 in Array<A>._vjpDifferentiableReduce<A>(_:_:);
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed A1.Differentiable.TangentVector) -> (@out A1.Differentiable.TangentVector, @out A.Differentiable.TangentVector)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a3, a3 + *(TupleTypeMetadata2 + 48), a1);
}

uint64_t specialized closure #1 in Array<A>._vjpDifferentiableReduce<A>(_:_:)(uint64_t a1, uint64_t a2, Swift::Int a3, uint64_t a4)
{
  v40 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = *(*(TupleTypeMetadata2 - 8) + 64);
  v11 = MEMORY[0x2A1C7C4A8](TupleTypeMetadata2);
  v13 = &v40 - v12;
  v14 = *(v8 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x2A1C7C4A8](v11);
  v18 = &v40 - v17;
  v19 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x2A1C7C4A8](v16);
  v21 = &v40 - v20;
  v41 = v22;
  (*(v22 + 16))(&v40 - v20, a2, AssociatedTypeWitness);
  v49 = static Array._allocateUninitialized(_:)();
  v44 = v8;
  v46 = type metadata accessor for Array();
  Array.reserveCapacity(_:)(a3);
  v48[4] = a4;
  v47 = AssociatedTypeWitness;
  v43 = TupleTypeMetadata2;
  FunctionTypeMetadata1 = swift_getFunctionTypeMetadata1();
  v24 = type metadata accessor for Array();

  WitnessTable = swift_getWitnessTable();
  MEMORY[0x29C2AE250](v48, v24, WitnessTable);
  v45 = v48[0];
  v42 = FunctionTypeMetadata1;
  result = MEMORY[0x29C2AE3B0]();
  if (result)
  {
    v27 = result;
    v28 = v14;
    v29 = (v41 + 8);
    v30 = (v41 + 32);
    v31 = (v28 + 32);
    while (!__OFSUB__(v27--, 1))
    {
      v33 = Array.subscript.read(v48, v27, v45, v42);
      v36 = *v34;
      v35 = *(v34 + 8);

      (v33)(v48, 0);
      v37 = *(v43 + 48);
      v36(v21);

      v38 = v47;
      (*v29)(v21, v47);
      (*v30)(v21, v13, v38);
      (*v31)(v18, &v13[v37], v44);
      result = Array.append(_:)();
      if (!v27)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    v48[0] = v49;

    swift_getWitnessTable();
    v39 = Sequence.reversed()();
    (*(v41 + 32))(v40, v21, v47);

    return v39;
  }

  return result;
}

uint64_t (*reverse-mode derivative of Array<A>.differentiableReduce<A>(_:_:)(uint64_t a1, void (**a2)(uint64_t, uint64_t, uint64_t), __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))()
{
  v12 = a3[1];
  v17[0] = *a3;
  v17[1] = v12;
  v17[2] = a3[2];
  Array<A>._vjpDifferentiableReduce<A>(_:_:)(a1, a2, v17, a4, a5, a6, a7);
  v14 = v13;
  v15 = swift_allocObject();
  v15[2] = a5;
  v15[3] = a6;
  v15[4] = a7;
  v15[5] = a8;
  v15[6] = partial apply for specialized closure #1 in Array<A>._vjpDifferentiableReduce<A>(_:_:);
  v15[7] = v14;
  return partial apply for autodiff self-reordering reabstraction thunk for @escaping @callee_guaranteed (@in_guaranteed A1.Differentiable.TangentVector) -> (@out A1.Differentiable.TangentVector, @owned [A.Differentiable.TangentVector]<A>.DifferentiableView);
}

uint64_t (*Array<A>._jvpDifferentiableReduce<A>(_:_:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a2;
  v47 = a1;
  v13 = *a3;
  v55 = a3[1];
  v56 = v13;
  v54 = a3[2];
  v58 = *(a5 - 8);
  v14 = *(v58 + 64);
  v15 = MEMORY[0x2A1C7C4A8](a1);
  v45 = v16;
  v61 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 - 8);
  v19 = v18[8];
  v20 = MEMORY[0x2A1C7C4A8](v15);
  v53 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v20);
  v23 = (&v44 - v22);
  swift_getAssociatedTypeWitness();
  v48 = a7;
  swift_getAssociatedTypeWitness();
  swift_getFunctionTypeMetadata2();
  v64 = static Array._allocateUninitialized(_:)();
  v24 = MEMORY[0x29C2AE390](a4, a5);
  v52 = type metadata accessor for Array();
  Array.reserveCapacity(_:)(v24);
  v25 = v18[2];
  v26 = v60;
  v59 = v23;
  v60 = a6;
  v25(v23, v26, a6);
  if (MEMORY[0x29C2AE3B0](a4, a5))
  {
    v46 = a8;
    v27 = 0;
    v51 = (v58 + 16);
    v50 = (v58 + 8);
    v49 = (v18 + 1);
    v57 = (v18 + 4);
    while (1)
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        (*(v58 + 16))(v61, a4 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v27, a5);
        v31 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        v39 = _ArrayBuffer._getElementSlowPath(_:)();
        if (v45 != 8)
        {
          result = _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          return result;
        }

        v62[0] = v39;
        (*v51)(v61, v62, a5);
        swift_unknownObjectRelease();
        v31 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
LABEL_10:
          __break(1u);
LABEL_11:
          a8 = v46;
          goto LABEL_13;
        }
      }

      v63[0] = v56;
      v63[1] = v55;
      v63[2] = v54;
      v32 = v53;
      v33 = v59;
      v34 = v60;
      v35 = v61;
      v36 = valueWithDifferential<A, B, C>(at:_:of:)(v53, v59, v61, v63, v29, v30, v60);
      v38 = v37;
      (*v50)(v35, a5);
      (*v49)(v33, v34);
      v23 = *v57;
      (*v57)(v33, v32, v34);
      v62[0] = v36;
      v62[1] = v38;
      Array.append(_:)();
      ++v27;
      if (v31 == MEMORY[0x29C2AE3B0](a4, a5))
      {
        goto LABEL_11;
      }
    }
  }

  v23 = v18[4];
LABEL_13:
  v40 = v60;
  v23(v47, v59, v60);
  v41 = v64;
  v42 = swift_allocObject();
  v42[2] = a5;
  v42[3] = v40;
  v42[4] = v48;
  v42[5] = a8;
  v42[6] = v41;
  return partial apply for specialized closure #1 in Array<A>._jvpDifferentiableReduce<A>(_:_:);
}

uint64_t specialized closure #1 in Array<A>._jvpDifferentiableReduce<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v50 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v44 = &v39 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v41 = &v39 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_syycMd, &_syycMR);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = type metadata accessor for Optional();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v16 - 8);
  v19 = &v39 - v18;
  v20 = *(v8 + 16);
  v43 = a4;
  v20(a4, a2, AssociatedTypeWitness);
  v21 = v8 + 16;
  v55 = a1;
  *&v54 = v50;
  v22 = type metadata accessor for Array();
  v42 = v11;
  v45 = AssociatedTypeWitness;
  swift_getFunctionTypeMetadata2();
  v23 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v25 = swift_getWitnessTable();
  zip<A, B>(_:_:)();
  v54 = v51;
  v49 = v23;
  v50 = v22;
  v55 = v22;
  v56 = v23;
  v47 = v25;
  v48 = WitnessTable;
  v57 = WitnessTable;
  v58 = v25;
  type metadata accessor for Zip2Sequence();
  Zip2Sequence.makeIterator()();
  v46 = TupleTypeMetadata2 - 8;
  v40 = (v12 + 32);
  v39 = (v12 + 8);
  v26 = (v21 - 8);
  for (i = (v21 + 16); ; (*i)(v37, v33, v36))
  {
    *&v51 = v50;
    *(&v51 + 1) = v49;
    v52 = v48;
    v53 = v47;
    type metadata accessor for Zip2Sequence.Iterator();
    Zip2Sequence.Iterator.next()();
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v19, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v28 = &v19[*(TupleTypeMetadata2 + 48)];
    v30 = *v28;
    v29 = *(v28 + 1);
    v31 = v41;
    v32 = v42;
    (*v40)(v41, v19, v42);
    v33 = v44;
    v34 = TupleTypeMetadata2;
    v35 = v43;
    v30(v43, v31);

    (*v39)(v31, v32);
    v36 = v45;
    (*v26)(v35, v45);
    v37 = v35;
    TupleTypeMetadata2 = v34;
  }
}

uint64_t (*forward-mode derivative of Array<A>.differentiableReduce<A>(_:_:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))(uint64_t a1, uint64_t a2)
{
  v12 = a3[1];
  v17[0] = *a3;
  v17[1] = v12;
  v17[2] = a3[2];
  Array<A>._jvpDifferentiableReduce<A>(_:_:)(a1, a2, v17, a4, a5, a6, a7, a8);
  v14 = v13;
  v15 = swift_allocObject();
  v15[2] = a5;
  v15[3] = a6;
  v15[4] = a7;
  v15[5] = a8;
  v15[6] = partial apply for specialized closure #1 in Array<A>._jvpDifferentiableReduce<A>(_:_:);
  v15[7] = v14;
  return partial apply for autodiff self-reordering reabstraction thunk for @escaping @callee_guaranteed (@in_guaranteed A1.Differentiable.TangentVector, @guaranteed [A.Differentiable.TangentVector]<A>.DifferentiableView) -> (@out A1.Differentiable.TangentVector);
}

uint64_t Optional<A>.TangentVector.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2, v6);
}

uint64_t Optional<A>.TangentVector.value.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  v7 = *(*(v6 - 8) + 40);

  return v7(v2, a1, v6);
}

uint64_t Optional<A>.TangentVector.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(a2, 1, 1, AssociatedTypeWitness);
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 40);

  return v6(a2, a1, v5);
}

uint64_t static Optional<A>.TangentVector.zero.getter@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = type metadata accessor for Optional();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v6 = &v8 - v5;
  swift_getAssociatedConformanceWitness();
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  (*(*(AssociatedTypeWitness - 8) + 56))(v6, 0, 1, AssociatedTypeWitness);
  return Optional<A>.TangentVector.init(_:)(v6, a1);
}

uint64_t static Optional<A>.TangentVector.+ infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a1;
  v33 = a2;
  v34 = a5;
  v35 = a3;
  v36 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v13);
  v17 = &v31 - v16;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v19 = *(*(TupleTypeMetadata2 - 8) + 64);
  v20 = MEMORY[0x2A1C7C4A8](TupleTypeMetadata2 - 8);
  v22 = &v31 - v21;
  v23 = *(v20 + 56);
  v24 = *(v14 + 16);
  v24(&v31 - v21, v32, v13);
  v24(&v22[v23], v33, v13);
  v25 = *(v6 + 48);
  LODWORD(v13) = v25(v22, 1, AssociatedTypeWitness);
  v26 = v25(&v22[v23], 1, AssociatedTypeWitness);
  if (v13 != 1)
  {
    v28 = *(v6 + 32);
    if (v26 != 1)
    {
      v28(v12, v22, AssociatedTypeWitness);
      v28(v10, &v22[v23], AssociatedTypeWitness);
      swift_getAssociatedConformanceWitness();
      dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
      v29 = *(v6 + 8);
      v29(v10, AssociatedTypeWitness);
      v29(v12, AssociatedTypeWitness);
      v27 = 0;
      goto LABEL_10;
    }

    v28(v17, v22, AssociatedTypeWitness);
LABEL_7:
    v27 = 0;
    goto LABEL_10;
  }

  if (v26 != 1)
  {
    (*(v6 + 32))(v17, &v22[v23], AssociatedTypeWitness);
    goto LABEL_7;
  }

  v27 = 1;
LABEL_10:
  (*(v6 + 56))(v17, v27, 1, AssociatedTypeWitness);
  return Optional<A>.TangentVector.init(_:)(v17, v34);
}

uint64_t static Optional<A>.TangentVector.- infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a1;
  v33 = a2;
  v34 = a5;
  v35 = a3;
  v36 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v13);
  v17 = &v31 - v16;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v19 = *(*(TupleTypeMetadata2 - 8) + 64);
  v20 = MEMORY[0x2A1C7C4A8](TupleTypeMetadata2 - 8);
  v22 = &v31 - v21;
  v23 = *(v20 + 56);
  v24 = *(v14 + 16);
  v24(&v31 - v21, v32, v13);
  v24(&v22[v23], v33, v13);
  v25 = *(v6 + 48);
  LODWORD(v13) = v25(v22, 1, AssociatedTypeWitness);
  v26 = v25(&v22[v23], 1, AssociatedTypeWitness);
  if (v13 != 1)
  {
    v28 = *(v6 + 32);
    if (v26 == 1)
    {
      v28(v17, v22, AssociatedTypeWitness);
      v27 = 0;
      goto LABEL_10;
    }

    v28(v12, v22, AssociatedTypeWitness);
    v28(v10, &v22[v23], AssociatedTypeWitness);
    swift_getAssociatedConformanceWitness();
    goto LABEL_9;
  }

  if (v26 != 1)
  {
    (*(v6 + 32))(v12, &v22[v23], AssociatedTypeWitness);
    swift_getAssociatedConformanceWitness();
    dispatch thunk of static AdditiveArithmetic.zero.getter();
LABEL_9:
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v29 = *(v6 + 8);
    v29(v10, AssociatedTypeWitness);
    v29(v12, AssociatedTypeWitness);
    v27 = 0;
    goto LABEL_10;
  }

  v27 = 1;
LABEL_10:
  (*(v6 + 56))(v17, v27, 1, AssociatedTypeWitness);
  return Optional<A>.TangentVector.init(_:)(v17, v34);
}

uint64_t Optional<A>.TangentVector.move(by:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x2A1C7C4A8](v6);
  v11 = v19 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v15 = v19 - v14;
  (*(v7 + 16))(v11, a1, v6);
  v16 = *(v12 + 48);
  if (v16(v11, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v7 + 8))(v11, v6);
  }

  (*(v12 + 32))(v15, v11, AssociatedTypeWitness);
  if (!v16(v19[1], 1, AssociatedTypeWitness))
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 32))(v15, AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  return (*(v12 + 8))(v15, AssociatedTypeWitness);
}

BOOL static Optional<A>.TangentVector.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29[1] = a4;
  v29[2] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v29[0] = v29 - v9;
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v32 = v29 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v30 = *(TupleTypeMetadata2 - 8);
  v15 = *(v30 + 64);
  v16 = MEMORY[0x2A1C7C4A8](TupleTypeMetadata2);
  v18 = v29 - v17;
  v19 = *(v16 + 48);
  v31 = v11;
  v20 = *(v11 + 16);
  v20(v29 - v17, a1, v10);
  v20(&v18[v19], a2, v10);
  v21 = *(v7 + 48);
  if (v21(v18, 1, AssociatedTypeWitness) != 1)
  {
    v20(v32, v18, v10);
    if (v21(&v18[v19], 1, AssociatedTypeWitness) != 1)
    {
      v23 = &v18[v19];
      v24 = v29[0];
      (*(v7 + 32))(v29[0], v23, AssociatedTypeWitness);
      v25 = *(swift_getAssociatedConformanceWitness() + 8);
      v26 = v32;
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      v28 = *(v7 + 8);
      v28(v24, AssociatedTypeWitness);
      v28(v26, AssociatedTypeWitness);
      (*(v31 + 8))(v18, v10);
      return (v27 & 1) != 0;
    }

    (*(v7 + 8))(v32, AssociatedTypeWitness);
LABEL_6:
    (*(v30 + 8))(v18, TupleTypeMetadata2);
    return 0;
  }

  if (v21(&v18[v19], 1, AssociatedTypeWitness) != 1)
  {
    goto LABEL_6;
  }

  (*(v31 + 8))(v18, v10);
  return 1;
}

uint64_t protocol witness for static AdditiveArithmetic.zero.getter in conformance A?<A>.TangentVector@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  return static Optional<A>.TangentVector.zero.getter(a1);
}

uint64_t Optional<A>.move(by:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x2A1C7C4A8](v8);
  v13 = &v19 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v17 = &v19 - v16;
  (*(v9 + 16))(v13, a1, v8);
  if ((*(v14 + 48))(v13, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v9 + 8))(v13, v8);
  }

  (*(v14 + 32))(v17, v13, AssociatedTypeWitness);
  if (!(*(*(v6 - 8) + 48))(v3, 1, v6))
  {
    (*(a3 + 32))(v17, v6, a3);
  }

  return (*(v14 + 8))(v17, AssociatedTypeWitness);
}

uint64_t Optional<A>.TangentVector.customMirror.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  v3 = type metadata accessor for Optional();

  return MEMORY[0x2A1C729D0](v3);
}

__int16 Float16.move(by:)@<H0>(__n128 a1@<Q0>)
{
  *&result = *v1 + *a1.n128_u16;
  *v1 = *&result;
  return result;
}

__int16 protocol witness for Differentiable.move(by:) in conformance Float16@<H0>(short float *a1@<X0>)
{
  *&result = *a1 + *v1;
  *v1 = *&result;
  return result;
}

uint64_t (*static Float16._vjpInit(x:)(float _S0))()
{
  __asm { FCVT            H0, S0 }

  return closure #1 in static Float16._vjpInit(x:);
}

uint64_t (*static Float16._jvpInit(x:)(float _S0))()
{
  __asm { FCVT            H0, S0 }

  return closure #1 in static Float16._jvpInit(x:);
}

uint64_t (*static Float16._vjpInit(x:)(double _D0))()
{
  __asm { FCVT            H0, D0 }

  return closure #1 in static Float16._vjpInit(x:);
}

uint64_t (*static Float16._jvpInit(x:)(double _D0))()
{
  __asm { FCVT            H0, D0 }

  return closure #1 in static Float16._jvpInit(x:);
}

__int16 closure #1 in static Float16._jvpAddAssign(_:_:)@<H0>(short float *a1@<X0>, __n128 a2@<Q0>)
{
  *&result = *a1 + *a2.n128_u16;
  *a1 = *&result;
  return result;
}

__int16 closure #1 in static Float16._jvpSubtractAssign(_:_:)@<H0>(short float *a1@<X0>, __n128 a2@<Q0>)
{
  *&result = *a1 - *a2.n128_u16;
  *a1 = *&result;
  return result;
}

float static Float16._vjpMultiply(lhs:rhs:)(__n128 a1, __n128 a2)
{
  v3 = a2.n128_u16[0];
  v4 = a1.n128_u16[0];
  *&v2 = *a1.n128_u16 * *a2.n128_u16;
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 18) = v4;
  return v2;
}

float reverse-mode derivative of static Float16.* infix(_:_:)(__n128 a1, __n128 a2)
{
  v3 = a2.n128_u16[0];
  v4 = a1.n128_u16[0];
  *&v2 = *a1.n128_u16 * *a2.n128_u16;
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 18) = v4;
  return v2;
}

float static Float16._jvpMultiply(lhs:rhs:)(__n128 a1, __n128 a2)
{
  v3 = a2.n128_u16[0];
  v4 = a1.n128_u16[0];
  *&v2 = *a1.n128_u16 * *a2.n128_u16;
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 18) = v3;
  return v2;
}

float forward-mode derivative of static Float16.* infix(_:_:)(__n128 a1, __n128 a2)
{
  v3 = a2.n128_u16[0];
  v4 = a1.n128_u16[0];
  *&v2 = *a1.n128_u16 * *a2.n128_u16;
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 18) = v3;
  return v2;
}

__int16 (*static Float16._vjpMultiplyAssign(_:_:)(short float *a1, __n128 a2))@<H0>(short float *a1@<X0>)
{
  v2 = *a2.n128_u16;
  v4 = *a1;
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 18) = v2;
  *a1 = v4 * v2;
  return partial apply for closure #1 in static Float16._vjpMultiplyAssign(_:_:);
}

uint64_t (*reverse-mode derivative of static Float16.*= infix(_:_:)(short float *a1, __n128 a2))()
{
  v2 = *a2.n128_u16;
  v4 = *a1;
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 18) = v2;
  *a1 = v4 * v2;
  return closure #1 in static Float16._vjpMultiplyAssign(_:_:)partial apply;
}

__int16 (*static Float16._jvpMultiplyAssign(_:_:)(short float *a1, __n128 a2))@<H0>(short float *a1@<X0>, __n128 a2@<Q0>)
{
  v2 = a2.n128_u16[0];
  v3 = *a1;
  *a1 = *a1 * *a2.n128_u16;
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 18) = v3;
  return partial apply for closure #1 in static Float16._jvpMultiplyAssign(_:_:);
}

uint64_t (*forward-mode derivative of static Float16.*= infix(_:_:)(short float *a1, __n128 a2))()
{
  v2 = a2.n128_u16[0];
  v3 = *a1;
  *a1 = *a1 * *a2.n128_u16;
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 18) = v3;
  return closure #1 in static Float16._jvpMultiplyAssign(_:_:)partial apply;
}

float static Float16._vjpDivide(lhs:rhs:)(__n128 a1, __n128 a2)
{
  v3 = a2.n128_u16[0];
  v4 = a1.n128_u16[0];
  *&v2 = *a1.n128_u16 / *a2.n128_u16;
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 18) = v4;
  return v2;
}

float reverse-mode derivative of static Float16./ infix(_:_:)(__n128 a1, __n128 a2)
{
  v3 = a2.n128_u16[0];
  v4 = a1.n128_u16[0];
  *&v2 = *a1.n128_u16 / *a2.n128_u16;
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 18) = v4;
  return v2;
}

float static Float16._jvpDivide(lhs:rhs:)(__n128 a1, __n128 a2)
{
  v3 = a2.n128_u16[0];
  v4 = a1.n128_u16[0];
  *&v2 = *a1.n128_u16 / *a2.n128_u16;
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 18) = v4;
  return v2;
}

float forward-mode derivative of static Float16./ infix(_:_:)(__n128 a1, __n128 a2)
{
  v3 = a2.n128_u16[0];
  v4 = a1.n128_u16[0];
  *&v2 = *a1.n128_u16 / *a2.n128_u16;
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 18) = v4;
  return v2;
}

__int16 (*static Float16._vjpDivideAssign(_:_:)(short float *a1, __n128 a2))@<H0>(short float *a1@<X0>)
{
  v2 = *a2.n128_u16;
  v4 = *a1;
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 18) = v2;
  *a1 = v4 / v2;
  return partial apply for closure #1 in static Float16._vjpDivideAssign(_:_:);
}

uint64_t (*reverse-mode derivative of static Float16./= infix(_:_:)(short float *a1, __n128 a2))()
{
  v2 = *a2.n128_u16;
  v4 = *a1;
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 18) = v2;
  *a1 = v4 / v2;
  return closure #1 in static Float16._vjpDivideAssign(_:_:)partial apply;
}

__int16 (*static Float16._jvpDivideAssign(_:_:)(short float *a1, __n128 a2))@<H0>(short float *a1@<X0>, __n128 a2@<Q0>)
{
  v2 = a2.n128_u16[0];
  v3 = *a1;
  *a1 = *a1 / *a2.n128_u16;
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 18) = v3;
  return partial apply for closure #1 in static Float16._jvpDivideAssign(_:_:);
}

uint64_t (*forward-mode derivative of static Float16./= infix(_:_:)(short float *a1, __n128 a2))()
{
  v2 = a2.n128_u16[0];
  v3 = *a1;
  *a1 = *a1 / *a2.n128_u16;
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 18) = v3;
  return closure #1 in static Float16._jvpDivideAssign(_:_:)partial apply;
}

float protocol witness for Differentiable.move(by:) in conformance Float(float *a1)
{
  result = *a1 + *v1;
  *v1 = result;
  return result;
}

uint64_t (*static Float._vjpInit(x:)(__n128 _Q0))()
{
  __asm { FCVT            S0, H0 }

  return closure #1 in static Float16._jvpInit(x:);
}

__int16 _ss7Float16V16_DifferentiationE8_jvpInit1xAB5value_ABSfc12differentialtSf_tFZABSfcfU__0@<H0>(float _S0@<S0>)
{
  __asm { FCVT            H0, S0 }

  return result;
}

uint64_t (*static Float._jvpInit(x:)(__n128 _Q0))()
{
  __asm { FCVT            S0, H0 }

  return closure #1 in static Float16._vjpInit(x:);
}

float _ss7Float16V16_DifferentiationE8_vjpInit1xAB5value_SfABc8pullbacktSf_tFZSfABcfU__0(__n128 _Q0)
{
  __asm { FCVT            S0, H0 }

  return result;
}

uint64_t (*static Float._vjpInit(x:)())()
{
  return _ConcreteDerivativeBox._base.modify;
}

{
  return closure #1 in static Float._vjpInit(x:);
}

uint64_t (*static Float._jvpInit(x:)())()
{
  return _ConcreteDerivativeBox._base.modify;
}

{
  return closure #1 in static Float._jvpInit(x:);
}

float closure #1 in static Float._jvpAddAssign(_:_:)(float *a1, float a2)
{
  result = *a1 + a2;
  *a1 = result;
  return result;
}

float closure #1 in static Float._jvpSubtractAssign(_:_:)(float *a1, float a2)
{
  result = *a1 - a2;
  *a1 = result;
  return result;
}

float static Float._vjpMultiply(lhs:rhs:)(float a1, float a2)
{
  v4 = a1 * a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 20) = a1;
  return v4;
}

float reverse-mode derivative of static Float.* infix(_:_:)(float a1, float a2)
{
  v4 = a1 * a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 20) = a1;
  return v4;
}

float static Float._jvpMultiply(lhs:rhs:)(float a1, float a2)
{
  v4 = a1 * a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 20) = a2;
  return v4;
}

float forward-mode derivative of static Float.* infix(_:_:)(float a1, float a2)
{
  v4 = a1 * a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 20) = a2;
  return v4;
}

float (*static Float._vjpMultiplyAssign(_:_:)(float *a1, float a2))(float *a1)
{
  v4 = *a1;
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 20) = a2;
  *a1 = v4 * a2;
  return partial apply for closure #1 in static Float._vjpMultiplyAssign(_:_:);
}

uint64_t (*reverse-mode derivative of static Float.*= infix(_:_:)(float *a1, float a2))()
{
  v4 = *a1;
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 20) = a2;
  *a1 = v4 * a2;
  return closure #1 in static Float._vjpMultiplyAssign(_:_:)partial apply;
}

float (*static Float._jvpMultiplyAssign(_:_:)(float *a1, float a2))(float *a1, float a2)
{
  v3 = *a1;
  *a1 = *a1 * a2;
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 20) = v3;
  return partial apply for closure #1 in static Float._jvpMultiplyAssign(_:_:);
}

uint64_t (*forward-mode derivative of static Float.*= infix(_:_:)(float *a1, float a2))()
{
  v3 = *a1;
  *a1 = *a1 * a2;
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 20) = v3;
  return closure #1 in static Float._jvpMultiplyAssign(_:_:)partial apply;
}

float static Float._vjpDivide(lhs:rhs:)(float a1, float a2)
{
  v4 = a1 / a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 20) = a1;
  return v4;
}

float reverse-mode derivative of static Float./ infix(_:_:)(float a1, float a2)
{
  v4 = a1 / a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 20) = a1;
  return v4;
}

float static Float._jvpDivide(lhs:rhs:)(float a1, float a2)
{
  v4 = a1 / a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 20) = a1;
  return v4;
}

float forward-mode derivative of static Float./ infix(_:_:)(float a1, float a2)
{
  v4 = a1 / a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 20) = a1;
  return v4;
}

float (*static Float._vjpDivideAssign(_:_:)(float *a1, float a2))(float *a1)
{
  v4 = *a1;
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 20) = a2;
  *a1 = v4 / a2;
  return partial apply for closure #1 in static Float._vjpDivideAssign(_:_:);
}

uint64_t (*reverse-mode derivative of static Float./= infix(_:_:)(float *a1, float a2))()
{
  v4 = *a1;
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 20) = a2;
  *a1 = v4 / a2;
  return closure #1 in static Float._vjpDivideAssign(_:_:)partial apply;
}

float (*static Float._jvpDivideAssign(_:_:)(float *a1, float a2))(float *a1, float a2)
{
  v3 = *a1;
  *a1 = *a1 / a2;
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 20) = v3;
  return partial apply for closure #1 in static Float._jvpDivideAssign(_:_:);
}

uint64_t (*forward-mode derivative of static Float./= infix(_:_:)(float *a1, float a2))()
{
  v3 = *a1;
  *a1 = *a1 / a2;
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 20) = v3;
  return closure #1 in static Float._jvpDivideAssign(_:_:)partial apply;
}

double protocol witness for Differentiable.move(by:) in conformance Double(double *a1)
{
  result = *a1 + *v1;
  *v1 = result;
  return result;
}

uint64_t (*static Double._vjpInit(x:)(__n128 _Q0))()
{
  __asm { FCVT            D0, H0 }

  return closure #1 in static Float16._jvpInit(x:);
}

__int16 _ss7Float16V16_DifferentiationE8_jvpInit1xAB5value_ABSdc12differentialtSd_tFZABSdcfU__0@<H0>(double _D0@<D0>)
{
  __asm { FCVT            H0, D0 }

  return result;
}

uint64_t (*static Double._jvpInit(x:)(__n128 _Q0))()
{
  __asm { FCVT            D0, H0 }

  return closure #1 in static Float16._vjpInit(x:);
}

double _ss7Float16V16_DifferentiationE8_vjpInit1xAB5value_SdABc8pullbacktSd_tFZSdABcfU__0(__n128 _Q0)
{
  __asm { FCVT            D0, H0 }

  return result;
}

uint64_t (*static Double._vjpInit(x:)())()
{
  return closure #1 in static Float._jvpInit(x:);
}

{
  return _ConcreteDerivativeBox._base.modify;
}

uint64_t (*static Double._jvpInit(x:)())()
{
  return closure #1 in static Float._vjpInit(x:);
}

{
  return _ConcreteDerivativeBox._base.modify;
}

double closure #1 in static Double._jvpAddAssign(_:_:)(double *a1, double a2)
{
  result = *a1 + a2;
  *a1 = result;
  return result;
}

double closure #1 in static Double._jvpSubtractAssign(_:_:)(double *a1, double a2)
{
  result = *a1 - a2;
  *a1 = result;
  return result;
}

double static Double._vjpMultiply(lhs:rhs:)(double a1, double a2)
{
  v4 = a1 * a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a1;
  return v4;
}

double reverse-mode derivative of static Double.* infix(_:_:)(double a1, double a2)
{
  v4 = a1 * a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a1;
  return v4;
}

double static Double._jvpMultiply(lhs:rhs:)(double a1, double a2)
{
  v4 = a1 * a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return v4;
}

double forward-mode derivative of static Double.* infix(_:_:)(double a1, double a2)
{
  v4 = a1 * a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return v4;
}

double (*static Double._vjpMultiplyAssign(_:_:)(double *a1, double a2))(double *a1)
{
  v4 = *a1;
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a2;
  *a1 = v4 * a2;
  return partial apply for closure #1 in static Double._vjpMultiplyAssign(_:_:);
}

uint64_t (*reverse-mode derivative of static Double.*= infix(_:_:)(double *a1, double a2))()
{
  v4 = *a1;
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a2;
  *a1 = v4 * a2;
  return closure #1 in static Double._vjpMultiplyAssign(_:_:)partial apply;
}

double (*static Double._jvpMultiplyAssign(_:_:)(double *a1, double a2))(double *a1, double a2)
{
  v3 = *a1;
  *a1 = *a1 * a2;
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = v3;
  return partial apply for closure #1 in static Double._jvpMultiplyAssign(_:_:);
}

uint64_t (*forward-mode derivative of static Double.*= infix(_:_:)(double *a1, double a2))()
{
  v3 = *a1;
  *a1 = *a1 * a2;
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = v3;
  return closure #1 in static Double._jvpMultiplyAssign(_:_:)partial apply;
}

double static Double._vjpDivide(lhs:rhs:)(double a1, double a2)
{
  v4 = a1 / a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a1;
  return v4;
}

double reverse-mode derivative of static Double./ infix(_:_:)(double a1, double a2)
{
  v4 = a1 / a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a1;
  return v4;
}

double static Double._jvpDivide(lhs:rhs:)(double a1, double a2)
{
  v4 = a1 / a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a1;
  return v4;
}

double forward-mode derivative of static Double./ infix(_:_:)(double a1, double a2)
{
  v4 = a1 / a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a1;
  return v4;
}

double (*static Double._vjpDivideAssign(_:_:)(double *a1, double a2))(double *a1)
{
  v4 = *a1;
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a2;
  *a1 = v4 / a2;
  return partial apply for closure #1 in static Double._vjpDivideAssign(_:_:);
}

uint64_t (*reverse-mode derivative of static Double./= infix(_:_:)(double *a1, double a2))()
{
  v4 = *a1;
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a2;
  *a1 = v4 / a2;
  return closure #1 in static Double._vjpDivideAssign(_:_:)partial apply;
}

double (*static Double._jvpDivideAssign(_:_:)(double *a1, double a2))(double *a1, double a2)
{
  v3 = *a1;
  *a1 = *a1 / a2;
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = v3;
  return partial apply for closure #1 in static Double._jvpDivideAssign(_:_:);
}

uint64_t (*forward-mode derivative of static Double./= infix(_:_:)(double *a1, double a2))()
{
  v3 = *a1;
  *a1 = *a1 / a2;
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = v3;
  return closure #1 in static Double._jvpDivideAssign(_:_:)partial apply;
}

uint64_t (*FloatingPoint<>._vjpAddingProduct(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a6;
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v13 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v23 - v14;
  dispatch thunk of FloatingPoint.addingProduct(_:_:)();
  v16 = *(v10 + 16);
  v16(v15, a3, a4);
  v16(v13, a2, a4);
  v17 = *(v10 + 80);
  v18 = (v17 + 40) & ~v17;
  v19 = (v11 + v17 + v18) & ~v17;
  v20 = swift_allocObject();
  *(v20 + 2) = a4;
  *(v20 + 3) = a5;
  *(v20 + 4) = v24;
  v21 = *(v10 + 32);
  v21(&v20[v18], v15, a4);
  v21(&v20[v19], v13, a4);
  return partial apply for closure #1 in FloatingPoint<>._vjpAddingProduct(_:_:);
}

uint64_t closure #1 in FloatingPoint<>._vjpAddingProduct(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  (*(*(a7 - 8) + 16))(a1, a4, a7);
  v9 = *(*(a8 + 16) + 8);
  dispatch thunk of static Numeric.* infix(_:_:)();
  return dispatch thunk of static Numeric.* infix(_:_:)();
}

uint64_t (*reverse-mode derivative of FloatingPoint.addingProduct(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FloatingPoint<>._vjpAddingProduct(_:_:)(a1, a2, a3, a4, a5, a6);
  v10 = v9;
  v11 = swift_allocObject();
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = a6;
  v11[5] = partial apply for closure #1 in FloatingPoint<>._vjpAddingProduct(_:_:);
  v11[6] = v10;
  return partial apply for autodiff self-reordering reabstraction thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out A, @out A, @out A);
}

uint64_t (*FloatingPoint<>._vjpSquareRoot()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x2A1C7C4A8](a1);
  v11 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v18 - v12;
  dispatch thunk of FloatingPoint.squareRoot()();
  (*(v8 + 16))(a1, v13, a2);
  v14 = *(v8 + 32);
  v14(v11, v13, a2);
  v15 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a2;
  *(v16 + 3) = a3;
  *(v16 + 4) = a4;
  v14(&v16[v15], v11, a2);
  return partial apply for closure #1 in FloatingPoint<>._vjpSquareRoot();
}

uint64_t (*static FloatingPoint<>._vjpMinimum(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))()
{
  v12 = *(*(a5 + 24) + 8);
  if (dispatch thunk of static Comparable.<= infix(_:_:)() & 1) != 0 || (dispatch thunk of FloatingPoint.isNaN.getter())
  {
    v13 = partial apply for closure #1 in static FloatingPoint<>._vjpMinimum(_:_:);
  }

  else
  {
    v13 = partial apply for closure #2 in static FloatingPoint<>._vjpMinimum(_:_:);
    a2 = a3;
  }

  (*(*(a4 - 8) + 16))(a1, a2, a4);
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  return v13;
}

uint64_t (*static FloatingPoint<>._vjpMaximum(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *(*(a5 + 24) + 8);
  if (dispatch thunk of static Comparable.> infix(_:_:)() & 1) != 0 || (dispatch thunk of FloatingPoint.isNaN.getter())
  {
    v13 = partial apply for closure #1 in static FloatingPoint<>._vjpMaximum(_:_:);
  }

  else
  {
    v13 = partial apply for closure #2 in static FloatingPoint<>._vjpMaximum(_:_:);
    a2 = a3;
  }

  (*(*(a4 - 8) + 16))(a1, a2, a4);
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  return v13;
}

uint64_t closure #1 in static FloatingPoint<>._vjpMinimum(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*(a4 - 8) + 16))(a1, a3, a4);
  swift_getAssociatedConformanceWitness();
  return dispatch thunk of static AdditiveArithmetic.zero.getter();
}

uint64_t closure #2 in static FloatingPoint<>._vjpMinimum(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedConformanceWitness();
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v7 = *(*(a4 - 8) + 16);

  return v7(a2, a3, a4);
}

uint64_t (*_jvpFma<A>(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a7;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x2A1C7C4A8](a1);
  v14 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v16 = &v24 - v15;
  dispatch thunk of FloatingPoint.addingProduct(_:_:)();
  v17 = *(v11 + 16);
  v17(v16, a3, a5);
  v17(v14, a2, a5);
  v18 = *(v11 + 80);
  v19 = (v18 + 40) & ~v18;
  v20 = (v12 + v18 + v19) & ~v18;
  v21 = swift_allocObject();
  *(v21 + 2) = a5;
  *(v21 + 3) = a6;
  *(v21 + 4) = v25;
  v22 = *(v11 + 32);
  v22(&v21[v19], v16, a5);
  v22(&v21[v20], v14, a5);
  return partial apply for closure #1 in _jvpFma<A>(_:_:_:);
}

uint64_t closure #1 in _jvpFma<A>(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21[1] = a3;
  v7 = *(a6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x2A1C7C4A8](a1);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x2A1C7C4A8](v9);
  v14 = v21 - v13;
  MEMORY[0x2A1C7C4A8](v12);
  v16 = v21 - v15;
  v18 = *(*(v17 + 16) + 8);
  dispatch thunk of static Numeric.* infix(_:_:)();
  dispatch thunk of static Numeric.* infix(_:_:)();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v19 = *(v7 + 8);
  v19(v11, a6);
  v19(v14, a6);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  return (v19)(v16, a6);
}

uint64_t (*_vjpFma<A>(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a7;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x2A1C7C4A8](a1);
  v14 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v16 = &v24 - v15;
  dispatch thunk of FloatingPoint.addingProduct(_:_:)();
  v17 = *(v11 + 16);
  v17(v16, a3, a5);
  v17(v14, a2, a5);
  v18 = *(v11 + 80);
  v19 = (v18 + 40) & ~v18;
  v20 = (v12 + v18 + v19) & ~v18;
  v21 = swift_allocObject();
  *(v21 + 2) = a5;
  *(v21 + 3) = a6;
  *(v21 + 4) = v25;
  v22 = *(v11 + 32);
  v22(&v21[v19], v16, a5);
  v22(&v21[v20], v14, a5);
  return partial apply for closure #1 in _vjpFma<A>(_:_:_:);
}

uint64_t closure #1 in _vjpFma<A>(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(*(a8 + 16) + 8);
  dispatch thunk of static Numeric.* infix(_:_:)();
  dispatch thunk of static Numeric.* infix(_:_:)();
  v12 = *(*(a7 - 8) + 16);

  return v12(a3, a4, a7);
}

uint64_t (*_vjpRemainder<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a6;
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v13 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v23 - v14;
  dispatch thunk of FloatingPoint.remainder(dividingBy:)();
  v16 = *(v10 + 16);
  v16(v15, a2, a4);
  v16(v13, a3, a4);
  v17 = *(v10 + 80);
  v18 = (v17 + 40) & ~v17;
  v19 = (v11 + v17 + v18) & ~v17;
  v20 = swift_allocObject();
  *(v20 + 2) = a4;
  *(v20 + 3) = a5;
  *(v20 + 4) = v24;
  v21 = *(v10 + 32);
  v21(&v20[v18], v15, a4);
  v21(&v20[v19], v13, a4);
  return partial apply for closure #1 in _vjpRemainder<A>(_:_:);
}

uint64_t (*_vjpFmod<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a6;
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v13 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v23 - v14;
  dispatch thunk of FloatingPoint.truncatingRemainder(dividingBy:)();
  v16 = *(v10 + 16);
  v16(v15, a2, a4);
  v16(v13, a3, a4);
  v17 = *(v10 + 80);
  v18 = (v17 + 40) & ~v17;
  v19 = (v11 + v17 + v18) & ~v17;
  v20 = swift_allocObject();
  *(v20 + 2) = a4;
  *(v20 + 3) = a5;
  *(v20 + 4) = v24;
  v21 = *(v10 + 32);
  v21(&v20[v18], v15, a4);
  v21(&v20[v19], v13, a4);
  return partial apply for closure #1 in _vjpFmod<A>(_:_:);
}

uint64_t closure #1 in _vjpRemainder<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int *a9)
{
  v32[1] = a4;
  v36 = a2;
  v34 = a5;
  v35 = a9;
  v33 = type metadata accessor for FloatingPointRoundingRule();
  v13 = *(v33 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x2A1C7C4A8](v33);
  v17 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a6 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x2A1C7C4A8](v15);
  v22 = v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x2A1C7C4A8](v20);
  v25 = v32 - v24;
  MEMORY[0x2A1C7C4A8](v23);
  v27 = v32 - v26;
  (*(v18 + 16))(a1, a3, a6);
  v32[0] = *(a7 + 16);
  dispatch thunk of static SignedNumeric.- prefix(_:)();
  dispatch thunk of static FloatingPoint./ infix(_:_:)();
  v28 = v33;
  (*(v13 + 104))(v17, *v35, v33);
  dispatch thunk of FloatingPoint.rounded(_:)();
  (*(v13 + 8))(v17, v28);
  v29 = *(v18 + 8);
  v29(v22, a6);
  v30 = *(v32[0] + 8);
  dispatch thunk of static Numeric.* infix(_:_:)();
  v29(v25, a6);
  return (v29)(v27, a6);
}

uint64_t (*_jvpSqrt<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x2A1C7C4A8](a1);
  v12 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v19 - v13;
  dispatch thunk of FloatingPoint.squareRoot()();
  (*(v9 + 16))(a1, v14, a3);
  v15 = *(v9 + 32);
  v15(v12, v14, a3);
  v16 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a3;
  *(v17 + 3) = a4;
  *(v17 + 4) = a5;
  v15(&v17[v16], v12, a3);
  return partial apply for closure #1 in _jvpSqrt<A>(_:);
}

uint64_t (*_jvpCeil<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  v8 = type metadata accessor for FloatingPointRoundingRule();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v12, *MEMORY[0x29EDC9EC0], v8);
  dispatch thunk of FloatingPoint.rounded(_:)();
  (*(v9 + 8))(v12, v8);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  return partial apply for closure #1 in _jvpCeil<A>(_:);
}

uint64_t (*_jvpFloor<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v8 = type metadata accessor for FloatingPointRoundingRule();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v12, *MEMORY[0x29EDC9EC8], v8);
  dispatch thunk of FloatingPoint.rounded(_:)();
  (*(v9 + 8))(v12, v8);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  return partial apply for closure #1 in _jvpFloor<A>(_:);
}

uint64_t (*_jvpRound<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v8 = type metadata accessor for FloatingPointRoundingRule();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v12, *MEMORY[0x29EDC9EB8], v8);
  dispatch thunk of FloatingPoint.rounded(_:)();
  (*(v9 + 8))(v12, v8);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  return partial apply for closure #1 in _jvpFloor<A>(_:);
}

uint64_t (*_jvpTrunc<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v8 = type metadata accessor for FloatingPointRoundingRule();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v12, *MEMORY[0x29EDC9EA0], v8);
  dispatch thunk of FloatingPoint.rounded(_:)();
  (*(v9 + 8))(v12, v8);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  return partial apply for closure #1 in _jvpFloor<A>(_:);
}

uint64_t (*_vjpSqrt<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x2A1C7C4A8](a1);
  v12 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v19 - v13;
  dispatch thunk of FloatingPoint.squareRoot()();
  (*(v9 + 16))(a1, v14, a3);
  v15 = *(v9 + 32);
  v15(v12, v14, a3);
  v16 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a3;
  *(v17 + 3) = a4;
  *(v17 + 4) = a5;
  v15(&v17[v16], v12, a3);
  return partial apply for closure #1 in FloatingPoint<>._vjpSquareRoot();
}

uint64_t closure #1 in FloatingPoint<>._vjpSquareRoot()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19[1] = a2;
  v19[2] = a5;
  v19[3] = a1;
  v6 = *(*(*(a4 + 16) + 8) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  v9 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x2A1C7C4A8](v9);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v16 = v19 - v15;
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  dispatch thunk of static Numeric.* infix(_:_:)();
  v17 = *(v10 + 8);
  v17(v14, a3);
  dispatch thunk of static FloatingPoint./ infix(_:_:)();
  return (v17)(v16, a3);
}

uint64_t (*_vjpCeil<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v8 = type metadata accessor for FloatingPointRoundingRule();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v12, *MEMORY[0x29EDC9EC0], v8);
  dispatch thunk of FloatingPoint.rounded(_:)();
  (*(v9 + 8))(v12, v8);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  return partial apply for closure #1 in _jvpFloor<A>(_:);
}

uint64_t (*_vjpFloor<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v8 = type metadata accessor for FloatingPointRoundingRule();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v12, *MEMORY[0x29EDC9EC8], v8);
  dispatch thunk of FloatingPoint.rounded(_:)();
  (*(v9 + 8))(v12, v8);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  return partial apply for closure #1 in _jvpFloor<A>(_:);
}

uint64_t (*_vjpRound<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v8 = type metadata accessor for FloatingPointRoundingRule();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v12, *MEMORY[0x29EDC9EB8], v8);
  dispatch thunk of FloatingPoint.rounded(_:)();
  (*(v9 + 8))(v12, v8);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  return partial apply for closure #1 in _jvpFloor<A>(_:);
}

uint64_t (*_vjpTrunc<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v8 = type metadata accessor for FloatingPointRoundingRule();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v12, *MEMORY[0x29EDC9EA0], v8);
  dispatch thunk of FloatingPoint.rounded(_:)();
  (*(v9 + 8))(v12, v8);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  return partial apply for closure #1 in _jvpFloor<A>(_:);
}

uint64_t closure #1 in _jvpCeil<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) + 8) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  return dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
}

double _jvpFma(_:_:_:)(long double a1, long double a2, long double a3)
{
  v5 = fma(a1, a2, a3);
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a1;
  return v5;
}

double fmaTJfSSSpSr(long double a1, long double a2, long double a3)
{
  v5 = fma(a1, a2, a3);
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a1;
  return v5;
}

double _vjpFma(_:_:_:)(long double a1, long double a2, long double a3)
{
  v5 = fma(a1, a2, a3);
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a1;
  return v5;
}

double fmaTJrSSSpSr(long double a1, long double a2, long double a3)
{
  v5 = fma(a1, a2, a3);
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a1;
  return v5;
}

double _vjpRemainder(_:_:)(long double a1, long double a2)
{
  v4 = remainder(a1, a2);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return v4;
}

double remainderTJrSSpSr(long double a1, long double a2)
{
  v4 = remainder(a1, a2);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return v4;
}

double _vjpFmod(_:_:)(long double a1, long double a2)
{
  v4 = fmod(a1, a2);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return v4;
}

double fmodTJrSSpSr(long double a1, long double a2)
{
  v4 = fmod(a1, a2);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return v4;
}

double _jvpSqrt(_:)(long double a1)
{
  v1 = sqrt(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

double sqrtTJfSpSr(long double a1)
{
  v1 = sqrt(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

double _vjpSqrt(_:)(long double a1)
{
  v1 = sqrt(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

double sqrtTJrSpSr(long double a1)
{
  v1 = sqrt(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

float _jvpExp(_:)(float a1)
{
  v1 = expf(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

float forward-mode derivative of exp(_:)(float a1)
{
  v1 = expf(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

float _jvpExp2(_:)(float a1)
{
  v1 = exp2f(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

float forward-mode derivative of exp2(_:)(float a1)
{
  v1 = exp2f(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

float _jvpLog(_:)(float a1)
{
  v2 = logf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float forward-mode derivative of log(_:)(float a1)
{
  v2 = logf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _jvpLog10(_:)(float a1)
{
  v2 = log10f(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float forward-mode derivative of log10(_:)(float a1)
{
  v2 = log10f(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _jvpLog2(_:)(float a1)
{
  v2 = log2f(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float forward-mode derivative of log2(_:)(float a1)
{
  v2 = log2f(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _jvpSin(_:)(float a1)
{
  v2 = sinf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float forward-mode derivative of sin(_:)(float a1)
{
  v2 = sinf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _jvpCos(_:)(float a1)
{
  v2 = cosf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float forward-mode derivative of cos(_:)(float a1)
{
  v2 = cosf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _jvpTan(_:)(float a1)
{
  v1 = tanf(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

float forward-mode derivative of tan(_:)(float a1)
{
  v1 = tanf(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

float _jvpAsin(_:)(float a1)
{
  v2 = asinf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float forward-mode derivative of asin(_:)(float a1)
{
  v2 = asinf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _jvpAcos(_:)(float a1)
{
  v2 = acosf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float forward-mode derivative of acos(_:)(float a1)
{
  v2 = acosf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _jvpAtan(_:)(float a1)
{
  v2 = atanf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float forward-mode derivative of atan(_:)(float a1)
{
  v2 = atanf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _jvpSinh(_:)(float a1)
{
  v2 = sinhf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float forward-mode derivative of sinh(_:)(float a1)
{
  v2 = sinhf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _jvpCosh(_:)(float a1)
{
  v2 = coshf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float forward-mode derivative of cosh(_:)(float a1)
{
  v2 = coshf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _jvpTanh(_:)(float a1)
{
  v1 = tanhf(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

float forward-mode derivative of tanh(_:)(float a1)
{
  v1 = tanhf(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

float _jvpAsinh(_:)(float a1)
{
  v2 = asinhf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float forward-mode derivative of asinh(_:)(float a1)
{
  v2 = asinhf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _jvpAcosh(_:)(float a1)
{
  v2 = acoshf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float forward-mode derivative of acosh(_:)(float a1)
{
  v2 = acoshf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _jvpAtanh(_:)(float a1)
{
  v2 = atanhf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float forward-mode derivative of atanh(_:)(float a1)
{
  v2 = atanhf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _jvpExpm1(_:)(float a1)
{
  v2 = expm1f(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float forward-mode derivative of expm1(_:)(float a1)
{
  v2 = expm1f(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _jvpLog1p(_:)(float a1)
{
  v2 = log1pf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float forward-mode derivative of log1p(_:)(float a1)
{
  v2 = log1pf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _jvpErf(_:)(float a1)
{
  v2 = erff(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float forward-mode derivative of erf(_:)(float a1)
{
  v2 = erff(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _jvpErfc(_:)(float a1)
{
  v2 = erfcf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float forward-mode derivative of erfc(_:)(float a1)
{
  v2 = erfcf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _jvpExp(_:)(long double a1)
{
  v1 = exp(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

double forward-mode derivative of exp(_:)(long double a1)
{
  v1 = exp(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

double _jvpExp2(_:)(long double a1)
{
  v1 = exp2(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

double forward-mode derivative of exp2(_:)(long double a1)
{
  v1 = exp2(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

double _jvpLog(_:)(long double a1)
{
  v2 = log(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double forward-mode derivative of log(_:)(long double a1)
{
  v2 = log(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _jvpLog10(_:)(long double a1)
{
  v2 = log10(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double forward-mode derivative of log10(_:)(long double a1)
{
  v2 = log10(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _jvpLog2(_:)(long double a1)
{
  v2 = log2(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double forward-mode derivative of log2(_:)(long double a1)
{
  v2 = log2(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _jvpSin(_:)(long double a1)
{
  v2 = sin(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double forward-mode derivative of sin(_:)(long double a1)
{
  v2 = sin(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _jvpCos(_:)(long double a1)
{
  v2 = cos(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double forward-mode derivative of cos(_:)(long double a1)
{
  v2 = cos(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _jvpTan(_:)(long double a1)
{
  v1 = tan(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

double tanTJfSpSr(long double a1)
{
  v1 = tan(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

double _jvpAsin(_:)(long double a1)
{
  v2 = asin(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double asinTJfSpSr(long double a1)
{
  v2 = asin(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _jvpAcos(_:)(long double a1)
{
  v2 = acos(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double acosTJfSpSr(long double a1)
{
  v2 = acos(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _jvpAtan(_:)(long double a1)
{
  v2 = atan(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double atanTJfSpSr(long double a1)
{
  v2 = atan(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _jvpSinh(_:)(long double a1)
{
  v2 = sinh(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double sinhTJfSpSr(long double a1)
{
  v2 = sinh(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _jvpCosh(_:)(long double a1)
{
  v2 = cosh(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double coshTJfSpSr(long double a1)
{
  v2 = cosh(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _jvpTanh(_:)(long double a1)
{
  v1 = tanh(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

double tanhTJfSpSr(long double a1)
{
  v1 = tanh(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

double _jvpAsinh(_:)(long double a1)
{
  v2 = asinh(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double asinhTJfSpSr(long double a1)
{
  v2 = asinh(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _jvpAcosh(_:)(long double a1)
{
  v2 = acosh(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double acoshTJfSpSr(long double a1)
{
  v2 = acosh(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _jvpAtanh(_:)(long double a1)
{
  v2 = atanh(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double atanhTJfSpSr(long double a1)
{
  v2 = atanh(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _jvpExpm1(_:)(long double a1)
{
  v2 = expm1(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double expm1TJfSpSr(long double a1)
{
  v2 = expm1(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _jvpLog1p(_:)(long double a1)
{
  v2 = log1p(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double log1pTJfSpSr(long double a1)
{
  v2 = log1p(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _jvpErf(_:)(long double a1)
{
  v2 = erf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double erfTJfSpSr(long double a1)
{
  v2 = erf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _jvpErfc(_:)(long double a1)
{
  v2 = erfc(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double erfcTJfSpSr(long double a1)
{
  v2 = erfc(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _vjpExp(_:)(float a1)
{
  v1 = expf(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

float reverse-mode derivative of exp(_:)(float a1)
{
  v1 = expf(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

float _vjpExp2(_:)(float a1)
{
  v1 = exp2f(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

float reverse-mode derivative of exp2(_:)(float a1)
{
  v1 = exp2f(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

float _vjpLog(_:)(float a1)
{
  v2 = logf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float reverse-mode derivative of log(_:)(float a1)
{
  v2 = logf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _vjpLog10(_:)(float a1)
{
  v2 = log10f(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float reverse-mode derivative of log10(_:)(float a1)
{
  v2 = log10f(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _vjpLog2(_:)(float a1)
{
  v2 = log2f(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float reverse-mode derivative of log2(_:)(float a1)
{
  v2 = log2f(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _vjpSin(_:)(float a1)
{
  v2 = sinf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float reverse-mode derivative of sin(_:)(float a1)
{
  v2 = sinf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _vjpCos(_:)(float a1)
{
  v2 = cosf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float reverse-mode derivative of cos(_:)(float a1)
{
  v2 = cosf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _vjpTan(_:)(float a1)
{
  v1 = tanf(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

float reverse-mode derivative of tan(_:)(float a1)
{
  v1 = tanf(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

float _vjpAsin(_:)(float a1)
{
  v2 = asinf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float reverse-mode derivative of asin(_:)(float a1)
{
  v2 = asinf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _vjpAcos(_:)(float a1)
{
  v2 = acosf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float reverse-mode derivative of acos(_:)(float a1)
{
  v2 = acosf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _vjpAtan(_:)(float a1)
{
  v2 = atanf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float reverse-mode derivative of atan(_:)(float a1)
{
  v2 = atanf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _vjpSinh(_:)(float a1)
{
  v2 = sinhf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float reverse-mode derivative of sinh(_:)(float a1)
{
  v2 = sinhf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _vjpCosh(_:)(float a1)
{
  v2 = coshf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float reverse-mode derivative of cosh(_:)(float a1)
{
  v2 = coshf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _vjpTanh(_:)(float a1)
{
  v1 = tanhf(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

float reverse-mode derivative of tanh(_:)(float a1)
{
  v1 = tanhf(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

float _vjpAsinh(_:)(float a1)
{
  v2 = asinhf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float reverse-mode derivative of asinh(_:)(float a1)
{
  v2 = asinhf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _vjpAcosh(_:)(float a1)
{
  v2 = acoshf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float reverse-mode derivative of acosh(_:)(float a1)
{
  v2 = acoshf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _vjpAtanh(_:)(float a1)
{
  v2 = atanhf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float reverse-mode derivative of atanh(_:)(float a1)
{
  v2 = atanhf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _vjpExpm1(_:)(float a1)
{
  v2 = expm1f(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float reverse-mode derivative of expm1(_:)(float a1)
{
  v2 = expm1f(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _vjpLog1p(_:)(float a1)
{
  v2 = log1pf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float reverse-mode derivative of log1p(_:)(float a1)
{
  v2 = log1pf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _vjpErf(_:)(float a1)
{
  v2 = erff(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float reverse-mode derivative of erf(_:)(float a1)
{
  v2 = erff(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _vjpErfc(_:)(float a1)
{
  v2 = erfcf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float reverse-mode derivative of erfc(_:)(float a1)
{
  v2 = erfcf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _vjpExp(_:)(long double a1)
{
  v1 = exp(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

double reverse-mode derivative of exp(_:)(long double a1)
{
  v1 = exp(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

double _vjpExp2(_:)(long double a1)
{
  v1 = exp2(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

double reverse-mode derivative of exp2(_:)(long double a1)
{
  v1 = exp2(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

double _vjpLog(_:)(long double a1)
{
  v2 = log(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double reverse-mode derivative of log(_:)(long double a1)
{
  v2 = log(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _vjpLog10(_:)(long double a1)
{
  v2 = log10(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double reverse-mode derivative of log10(_:)(long double a1)
{
  v2 = log10(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _vjpLog2(_:)(long double a1)
{
  v2 = log2(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double reverse-mode derivative of log2(_:)(long double a1)
{
  v2 = log2(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _vjpSin(_:)(long double a1)
{
  v2 = sin(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double reverse-mode derivative of sin(_:)(long double a1)
{
  v2 = sin(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _vjpCos(_:)(long double a1)
{
  v2 = cos(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double reverse-mode derivative of cos(_:)(long double a1)
{
  v2 = cos(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _vjpTan(_:)(long double a1)
{
  v1 = tan(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

double tanTJrSpSr(long double a1)
{
  v1 = tan(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

double _vjpAsin(_:)(long double a1)
{
  v2 = asin(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double asinTJrSpSr(long double a1)
{
  v2 = asin(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _vjpAcos(_:)(long double a1)
{
  v2 = acos(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double acosTJrSpSr(long double a1)
{
  v2 = acos(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _vjpAtan(_:)(long double a1)
{
  v2 = atan(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double atanTJrSpSr(long double a1)
{
  v2 = atan(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _vjpSinh(_:)(long double a1)
{
  v2 = sinh(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double sinhTJrSpSr(long double a1)
{
  v2 = sinh(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _vjpCosh(_:)(long double a1)
{
  v2 = cosh(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double coshTJrSpSr(long double a1)
{
  v2 = cosh(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _vjpTanh(_:)(long double a1)
{
  v1 = tanh(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

double tanhTJrSpSr(long double a1)
{
  v1 = tanh(a1);
  *(swift_allocObject() + 16) = v1;
  return v1;
}

double _vjpAsinh(_:)(long double a1)
{
  v2 = asinh(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double asinhTJrSpSr(long double a1)
{
  v2 = asinh(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _vjpAcosh(_:)(long double a1)
{
  v2 = acosh(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double acoshTJrSpSr(long double a1)
{
  v2 = acosh(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _vjpAtanh(_:)(long double a1)
{
  v2 = atanh(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double atanhTJrSpSr(long double a1)
{
  v2 = atanh(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _vjpExpm1(_:)(long double a1)
{
  v2 = expm1(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double expm1TJrSpSr(long double a1)
{
  v2 = expm1(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _vjpLog1p(_:)(long double a1)
{
  v2 = log1p(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double log1pTJrSpSr(long double a1)
{
  v2 = log1p(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _vjpErf(_:)(long double a1)
{
  v2 = erf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double erfTJrSpSr(long double a1)
{
  v2 = erf(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double _vjpErfc(_:)(long double a1)
{
  v2 = erfc(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

double erfcTJrSpSr(long double a1)
{
  v2 = erfc(a1);
  *(swift_allocObject() + 16) = a1;
  return v2;
}

float _vjpPow(_:_:)(float a1, float a2)
{
  v4 = powf(a1, a2);
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 20) = a1;
  *(v5 + 24) = v4;
  return v4;
}

float reverse-mode derivative of pow(_:_:)(float a1, float a2)
{
  v4 = powf(a1, a2);
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 20) = a1;
  *(v5 + 24) = v4;
  return v4;
}

float _jvpPow(_:_:)(float a1, float a2)
{
  v4 = powf(a1, a2);
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 20) = a1;
  *(v5 + 24) = v4;
  return v4;
}

float forward-mode derivative of pow(_:_:)(float a1, float a2)
{
  v4 = powf(a1, a2);
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 20) = a1;
  *(v5 + 24) = v4;
  return v4;
}

double _vjpPow(_:_:)(long double a1, long double a2)
{
  v4 = pow(a1, a2);
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a1;
  *(v5 + 32) = v4;
  return v4;
}

double powTJrSSpSr(long double a1, long double a2)
{
  v4 = pow(a1, a2);
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a1;
  *(v5 + 32) = v4;
  return v4;
}

double _jvpPow(_:_:)(long double a1, long double a2)
{
  v4 = pow(a1, a2);
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a1;
  *(v5 + 32) = v4;
  return v4;
}

double powTJfSSpSr(long double a1, long double a2)
{
  v4 = pow(a1, a2);
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a1;
  *(v5 + 32) = v4;
  return v4;
}

uint64_t protocol witness for static AdditiveArithmetic.zero.getter in conformance <> SIMD2<A>(uint64_t a1)
{
  return protocol witness for static AdditiveArithmetic.zero.getter in conformance <> SIMD2<A>(a1);
}

{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return dispatch thunk of SIMDStorage.init()();
}

uint64_t protocol witness for static AdditiveArithmetic.+= infix(_:_:) in conformance <> SIMD2<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  WitnessTable = swift_getWitnessTable();
  return static SIMD<>.+= infix(_:_:)(a1, a2, a3, a4, WitnessTable, v8, MEMORY[0x29EDC9E50]);
}

uint64_t protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance <> SIMD2<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, char *, uint64_t, uint64_t))
{
  v17[1] = a2;
  v18 = *(a4 - 8);
  v19 = a5;
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x2A1C7C4A8](a1);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x2A1C7C4A8](v7);
  v12 = v17 - v11;
  MEMORY[0x2A1C7C4A8](v10);
  v14 = *(v13 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SIMDStorage.init()();
  dispatch thunk of SIMDStorage.subscript.getter();
  dispatch thunk of SIMDStorage.subscript.getter();
  v15 = v19;
  v18 = *(*(*(v18 + 16) + 8) + 8);
  (v19)(v12, v9, v5);
  dispatch thunk of SIMDStorage.subscript.setter();
  dispatch thunk of SIMDStorage.subscript.getter();
  dispatch thunk of SIMDStorage.subscript.getter();
  v15(v12, v9, v5, v18);
  return dispatch thunk of SIMDStorage.subscript.setter();
}

uint64_t protocol witness for static AdditiveArithmetic.-= infix(_:_:) in conformance <> SIMD2<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  WitnessTable = swift_getWitnessTable();
  return static SIMD<>.+= infix(_:_:)(a1, a2, a3, a4, WitnessTable, v8, MEMORY[0x29EDC9E58]);
}

uint64_t static SIMD<>.+= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(char *, uint64_t, uint64_t, uint64_t))
{
  v12 = *(a3 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8]();
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 32))(v15, a1);
  a7(v15, a2, a3, a4);
  return (*(v12 + 8))(v15, a3);
}

uint64_t (*SIMD2<>._vjpSubscript(_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  if (a2 >= 2)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v9 = *(a3 + 16);
    v8 = *(a3 + 24);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.getter();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = a4;
    v10[4] = v8;
    v10[5] = a5;
    v10[6] = a2;
    return partial apply for closure #1 in SIMD2<>._vjpSubscript(_:);
  }

  return result;
}

uint64_t closure #1 in SIMD2<>._vjpSubscript(_:)(const void *a1, unint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](a1);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SIMDStorage.init()();
  memcpy(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  if (a2 < 2)
  {
    return dispatch thunk of SIMDStorage.subscript.setter();
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t (*reverse-mode derivative of SIMD2.subscript.getter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  SIMD2<>._vjpSubscript(_:)(a1, a2, a3, a4, a5);
  v9 = v8;
  v10 = swift_allocObject();
  v11 = *(a3 + 24);
  v10[2] = *(a3 + 16);
  v10[3] = a4;
  v10[4] = v11;
  v10[5] = a5;
  v10[6] = partial apply for closure #1 in SIMD2<>._vjpSubscript(_:);
  v10[7] = v9;
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out SIMD2<A>);
}

uint64_t (*SIMD2<>._jvpSubscript(index:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  if (a2 >= 2)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v9 = *(a3 + 16);
    v8 = *(a3 + 24);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.getter();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = a4;
    v10[4] = v8;
    v10[5] = a5;
    v10[6] = a2;
    return partial apply for closure #1 in SIMD2<>._jvpSubscript(index:);
  }

  return result;
}

uint64_t closure #1 in SIMD2<>._jvpSubscript(index:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](a1);
  if (v4 >= 2)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.getter();
    return dispatch thunk of BinaryFloatingPoint.init<A>(_:)();
  }

  return result;
}

uint64_t (*forward-mode derivative of SIMD2.subscript.getter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  SIMD2<>._jvpSubscript(index:)(a1, a2, a3, a4, a5);
  v9 = v8;
  v10 = swift_allocObject();
  v11 = *(a3 + 24);
  v10[2] = *(a3 + 16);
  v10[3] = a4;
  v10[4] = v11;
  v10[5] = a5;
  v10[6] = partial apply for closure #1 in SIMD2<>._jvpSubscript(index:);
  v10[7] = v9;
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed SIMD2<A>) -> (@out A);
}

uint64_t (*SIMD2<>._vjpSubscriptSetter(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  v9 = *(a3 + 16);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](a1);
  memcpy(&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v12, v11);
  if (a2 >= 2)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v13 = *(a3 + 24);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.setter();
    v14 = swift_allocObject();
    v14[2] = v9;
    v14[3] = a4;
    v14[4] = v13;
    v14[5] = a5;
    v14[6] = a2;
    return partial apply for closure #1 in SIMD2<>._vjpSubscriptSetter(_:_:);
  }

  return result;
}

uint64_t closure #1 in SIMD2<>._vjpSubscriptSetter(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](a1);
  v6 = *(*(*(*(v5 + 16) + 16) + 8) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  if (a2 >= 2)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.getter();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    return dispatch thunk of SIMDStorage.subscript.setter();
  }

  return result;
}

uint64_t (*reverse-mode derivative of SIMD2.subscript.setter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  SIMD2<>._vjpSubscriptSetter(_:_:)(a1, a2, a3, a4, a5);
  v9 = v8;
  v10 = swift_allocObject();
  v11 = *(a3 + 24);
  v10[2] = *(a3 + 16);
  v10[3] = a4;
  v10[4] = v11;
  v10[5] = a5;
  v10[6] = partial apply for closure #1 in SIMD2<>._vjpSubscriptSetter(_:_:);
  v10[7] = v9;
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed SIMD2<A>) -> (@out A);
}

uint64_t protocol witness for static AdditiveArithmetic.+= infix(_:_:) in conformance <> SIMD4<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  WitnessTable = swift_getWitnessTable();
  return static SIMD<>.+= infix(_:_:)(a1, a2, a3, a4, WitnessTable, v8, MEMORY[0x29EDC9E50]);
}

uint64_t protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance <> SIMD4<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(char *, char *, uint64_t, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v23 = a2;
  v24 = a5;
  v22 = a6;
  v21 = *(a4 - 8);
  v7 = *(a3 + 16);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x2A1C7C4A8](a1);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x2A1C7C4A8](v9);
  v14 = v20 - v13;
  MEMORY[0x2A1C7C4A8](v12);
  v16 = *(v15 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SIMDStorage.init()();
  v20[1] = a1;
  dispatch thunk of SIMDStorage.subscript.getter();
  dispatch thunk of SIMDStorage.subscript.getter();
  v21 = *(*(*(v21 + 16) + 8) + 8);
  v17 = v21;
  v18 = v24;
  v24(v14, v11, v7, v21);
  dispatch thunk of SIMDStorage.subscript.setter();
  dispatch thunk of SIMDStorage.subscript.getter();
  dispatch thunk of SIMDStorage.subscript.getter();
  v18(v14, v11, v7, v17);
  dispatch thunk of SIMDStorage.subscript.setter();
  dispatch thunk of SIMDStorage.subscript.getter();
  dispatch thunk of SIMDStorage.subscript.getter();
  v24(v14, v11, v7, v21);
  dispatch thunk of SIMDStorage.subscript.setter();
  dispatch thunk of SIMDStorage.subscript.getter();
  dispatch thunk of SIMDStorage.subscript.getter();
  v24(v14, v11, v7, v21);
  return dispatch thunk of SIMDStorage.subscript.setter();
}

uint64_t protocol witness for static AdditiveArithmetic.-= infix(_:_:) in conformance <> SIMD4<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  WitnessTable = swift_getWitnessTable();
  return static SIMD<>.+= infix(_:_:)(a1, a2, a3, a4, WitnessTable, v8, MEMORY[0x29EDC9E58]);
}

uint64_t (*SIMD4<>._vjpSubscript(_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  if (a2 >= 4)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v9 = *(a3 + 16);
    v8 = *(a3 + 24);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.getter();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = a4;
    v10[4] = v8;
    v10[5] = a5;
    v10[6] = a2;
    return partial apply for closure #1 in SIMD4<>._vjpSubscript(_:);
  }

  return result;
}

uint64_t closure #1 in SIMD4<>._vjpSubscript(_:)(const void *a1, unint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](a1);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SIMDStorage.init()();
  memcpy(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  if (a2 < 4)
  {
    return dispatch thunk of SIMDStorage.subscript.setter();
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t (*reverse-mode derivative of SIMD4.subscript.getter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  SIMD4<>._vjpSubscript(_:)(a1, a2, a3, a4, a5);
  v9 = v8;
  v10 = swift_allocObject();
  v11 = *(a3 + 24);
  v10[2] = *(a3 + 16);
  v10[3] = a4;
  v10[4] = v11;
  v10[5] = a5;
  v10[6] = partial apply for closure #1 in SIMD4<>._vjpSubscript(_:);
  v10[7] = v9;
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out SIMD2<A>);
}

uint64_t (*SIMD4<>._jvpSubscript(index:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  if (a2 >= 4)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v9 = *(a3 + 16);
    v8 = *(a3 + 24);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.getter();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = a4;
    v10[4] = v8;
    v10[5] = a5;
    v10[6] = a2;
    return partial apply for closure #1 in SIMD4<>._jvpSubscript(index:);
  }

  return result;
}

uint64_t closure #1 in SIMD4<>._jvpSubscript(index:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](a1);
  if (v4 >= 4)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.getter();
    return dispatch thunk of BinaryFloatingPoint.init<A>(_:)();
  }

  return result;
}

uint64_t (*forward-mode derivative of SIMD4.subscript.getter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  SIMD4<>._jvpSubscript(index:)(a1, a2, a3, a4, a5);
  v9 = v8;
  v10 = swift_allocObject();
  v11 = *(a3 + 24);
  v10[2] = *(a3 + 16);
  v10[3] = a4;
  v10[4] = v11;
  v10[5] = a5;
  v10[6] = partial apply for closure #1 in SIMD4<>._jvpSubscript(index:);
  v10[7] = v9;
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out SIMD2<A>);
}

uint64_t (*SIMD4<>._vjpSubscriptSetter(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  v9 = *(a3 + 16);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](a1);
  memcpy(&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v12, v11);
  if (a2 >= 4)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v13 = *(a3 + 24);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.setter();
    v14 = swift_allocObject();
    v14[2] = v9;
    v14[3] = a4;
    v14[4] = v13;
    v14[5] = a5;
    v14[6] = a2;
    return partial apply for closure #1 in SIMD4<>._vjpSubscriptSetter(_:_:);
  }

  return result;
}

uint64_t closure #1 in SIMD4<>._vjpSubscriptSetter(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](a1);
  v6 = *(*(*(*(v5 + 16) + 16) + 8) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  if (a2 >= 4)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.getter();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    return dispatch thunk of SIMDStorage.subscript.setter();
  }

  return result;
}

uint64_t (*reverse-mode derivative of SIMD4.subscript.setter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  SIMD4<>._vjpSubscriptSetter(_:_:)(a1, a2, a3, a4, a5);
  v9 = v8;
  v10 = swift_allocObject();
  v11 = *(a3 + 24);
  v10[2] = *(a3 + 16);
  v10[3] = a4;
  v10[4] = v11;
  v10[5] = a5;
  v10[6] = partial apply for closure #1 in SIMD4<>._vjpSubscriptSetter(_:_:);
  v10[7] = v9;
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out SIMD2<A>);
}

uint64_t protocol witness for static AdditiveArithmetic.+= infix(_:_:) in conformance <> SIMD8<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  WitnessTable = swift_getWitnessTable();
  return static SIMD<>.+= infix(_:_:)(a1, a2, a3, a4, WitnessTable, v8, MEMORY[0x29EDC9E50]);
}

uint64_t protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance <> SIMD8<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, char *, uint64_t, void))
{
  v17[2] = a2;
  v18 = a5;
  v17[0] = *(a4 - 8);
  v17[1] = a1;
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x2A1C7C4A8](a1);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x2A1C7C4A8](v7);
  v12 = v17 - v11;
  MEMORY[0x2A1C7C4A8](v10);
  v14 = *(v13 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SIMDStorage.init()();
  for (i = 0; i != 8; ++i)
  {
    dispatch thunk of SIMDStorage.subscript.getter();
    dispatch thunk of SIMDStorage.subscript.getter();
    v18(v12, v9, v5, *(*(*(v17[0] + 16) + 8) + 8));
    result = dispatch thunk of SIMDStorage.subscript.setter();
  }

  return result;
}

uint64_t protocol witness for static AdditiveArithmetic.-= infix(_:_:) in conformance <> SIMD8<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  WitnessTable = swift_getWitnessTable();
  return static SIMD<>.+= infix(_:_:)(a1, a2, a3, a4, WitnessTable, v8, MEMORY[0x29EDC9E58]);
}

uint64_t (*SIMD8<>._vjpSubscript(_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  if (a2 >= 8)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v9 = *(a3 + 16);
    v8 = *(a3 + 24);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.getter();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = a4;
    v10[4] = v8;
    v10[5] = a5;
    v10[6] = a2;
    return partial apply for closure #1 in SIMD8<>._vjpSubscript(_:);
  }

  return result;
}

uint64_t closure #1 in SIMD8<>._vjpSubscript(_:)(const void *a1, unint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](a1);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SIMDStorage.init()();
  memcpy(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  if (a2 < 8)
  {
    return dispatch thunk of SIMDStorage.subscript.setter();
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t (*reverse-mode derivative of SIMD8.subscript.getter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  SIMD8<>._vjpSubscript(_:)(a1, a2, a3, a4, a5);
  v9 = v8;
  v10 = swift_allocObject();
  v11 = *(a3 + 24);
  v10[2] = *(a3 + 16);
  v10[3] = a4;
  v10[4] = v11;
  v10[5] = a5;
  v10[6] = partial apply for closure #1 in SIMD8<>._vjpSubscript(_:);
  v10[7] = v9;
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out SIMD2<A>);
}

uint64_t (*SIMD8<>._jvpSubscript(index:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  if (a2 >= 8)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v9 = *(a3 + 16);
    v8 = *(a3 + 24);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.getter();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = a4;
    v10[4] = v8;
    v10[5] = a5;
    v10[6] = a2;
    return partial apply for closure #1 in SIMD8<>._jvpSubscript(index:);
  }

  return result;
}

uint64_t closure #1 in SIMD8<>._jvpSubscript(index:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](a1);
  if (v4 >= 8)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.getter();
    return dispatch thunk of BinaryFloatingPoint.init<A>(_:)();
  }

  return result;
}

uint64_t (*forward-mode derivative of SIMD8.subscript.getter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  SIMD8<>._jvpSubscript(index:)(a1, a2, a3, a4, a5);
  v9 = v8;
  v10 = swift_allocObject();
  v11 = *(a3 + 24);
  v10[2] = *(a3 + 16);
  v10[3] = a4;
  v10[4] = v11;
  v10[5] = a5;
  v10[6] = partial apply for closure #1 in SIMD8<>._jvpSubscript(index:);
  v10[7] = v9;
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out SIMD2<A>);
}

uint64_t (*SIMD8<>._vjpSubscriptSetter(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  v9 = *(a3 + 16);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](a1);
  memcpy(&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v12, v11);
  if (a2 >= 8)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v13 = *(a3 + 24);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.setter();
    v14 = swift_allocObject();
    v14[2] = v9;
    v14[3] = a4;
    v14[4] = v13;
    v14[5] = a5;
    v14[6] = a2;
    return partial apply for closure #1 in SIMD8<>._vjpSubscriptSetter(_:_:);
  }

  return result;
}

uint64_t closure #1 in SIMD8<>._vjpSubscriptSetter(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](a1);
  v6 = *(*(*(*(v5 + 16) + 16) + 8) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  if (a2 >= 8)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.getter();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    return dispatch thunk of SIMDStorage.subscript.setter();
  }

  return result;
}

uint64_t (*reverse-mode derivative of SIMD8.subscript.setter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  SIMD8<>._vjpSubscriptSetter(_:_:)(a1, a2, a3, a4, a5);
  v9 = v8;
  v10 = swift_allocObject();
  v11 = *(a3 + 24);
  v10[2] = *(a3 + 16);
  v10[3] = a4;
  v10[4] = v11;
  v10[5] = a5;
  v10[6] = partial apply for closure #1 in SIMD8<>._vjpSubscriptSetter(_:_:);
  v10[7] = v9;
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out SIMD2<A>);
}

uint64_t protocol witness for static AdditiveArithmetic.+= infix(_:_:) in conformance <> SIMD16<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  WitnessTable = swift_getWitnessTable();
  return static SIMD<>.+= infix(_:_:)(a1, a2, a3, a4, WitnessTable, v8, MEMORY[0x29EDC9E50]);
}

uint64_t protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance <> SIMD16<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, char *, uint64_t, void))
{
  v17[2] = a2;
  v18 = a5;
  v17[0] = *(a4 - 8);
  v17[1] = a1;
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x2A1C7C4A8](a1);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x2A1C7C4A8](v7);
  v12 = v17 - v11;
  MEMORY[0x2A1C7C4A8](v10);
  v14 = *(v13 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SIMDStorage.init()();
  for (i = 0; i != 16; ++i)
  {
    dispatch thunk of SIMDStorage.subscript.getter();
    dispatch thunk of SIMDStorage.subscript.getter();
    v18(v12, v9, v5, *(*(*(v17[0] + 16) + 8) + 8));
    result = dispatch thunk of SIMDStorage.subscript.setter();
  }

  return result;
}

uint64_t protocol witness for static AdditiveArithmetic.-= infix(_:_:) in conformance <> SIMD16<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  WitnessTable = swift_getWitnessTable();
  return static SIMD<>.+= infix(_:_:)(a1, a2, a3, a4, WitnessTable, v8, MEMORY[0x29EDC9E58]);
}

uint64_t (*SIMD16<>._vjpSubscript(_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  if (a2 >= 0x10)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v9 = *(a3 + 16);
    v8 = *(a3 + 24);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.getter();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = a4;
    v10[4] = v8;
    v10[5] = a5;
    v10[6] = a2;
    return partial apply for closure #1 in SIMD16<>._vjpSubscript(_:);
  }

  return result;
}

uint64_t closure #1 in SIMD16<>._vjpSubscript(_:)(const void *a1, unint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](a1);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SIMDStorage.init()();
  memcpy(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  if (a2 < 0x10)
  {
    return dispatch thunk of SIMDStorage.subscript.setter();
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t (*reverse-mode derivative of SIMD16.subscript.getter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  SIMD16<>._vjpSubscript(_:)(a1, a2, a3, a4, a5);
  v9 = v8;
  v10 = swift_allocObject();
  v11 = *(a3 + 24);
  v10[2] = *(a3 + 16);
  v10[3] = a4;
  v10[4] = v11;
  v10[5] = a5;
  v10[6] = partial apply for closure #1 in SIMD16<>._vjpSubscript(_:);
  v10[7] = v9;
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out SIMD2<A>);
}

uint64_t (*SIMD16<>._jvpSubscript(index:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  if (a2 >= 0x10)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v9 = *(a3 + 16);
    v8 = *(a3 + 24);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.getter();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = a4;
    v10[4] = v8;
    v10[5] = a5;
    v10[6] = a2;
    return partial apply for closure #1 in SIMD16<>._jvpSubscript(index:);
  }

  return result;
}

uint64_t closure #1 in SIMD16<>._jvpSubscript(index:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](a1);
  if (v4 >= 0x10)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.getter();
    return dispatch thunk of BinaryFloatingPoint.init<A>(_:)();
  }

  return result;
}

uint64_t (*forward-mode derivative of SIMD16.subscript.getter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  SIMD16<>._jvpSubscript(index:)(a1, a2, a3, a4, a5);
  v9 = v8;
  v10 = swift_allocObject();
  v11 = *(a3 + 24);
  v10[2] = *(a3 + 16);
  v10[3] = a4;
  v10[4] = v11;
  v10[5] = a5;
  v10[6] = partial apply for closure #1 in SIMD16<>._jvpSubscript(index:);
  v10[7] = v9;
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out SIMD2<A>);
}

uint64_t (*SIMD16<>._vjpSubscriptSetter(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  v9 = *(a3 + 16);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](a1);
  memcpy(&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v12, v11);
  if (a2 >= 0x10)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v13 = *(a3 + 24);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.setter();
    v14 = swift_allocObject();
    v14[2] = v9;
    v14[3] = a4;
    v14[4] = v13;
    v14[5] = a5;
    v14[6] = a2;
    return partial apply for closure #1 in SIMD16<>._vjpSubscriptSetter(_:_:);
  }

  return result;
}

uint64_t closure #1 in SIMD16<>._vjpSubscriptSetter(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](a1);
  v6 = *(*(*(*(v5 + 16) + 16) + 8) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  if (a2 >= 0x10)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.getter();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    return dispatch thunk of SIMDStorage.subscript.setter();
  }

  return result;
}

uint64_t (*reverse-mode derivative of SIMD16.subscript.setter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  SIMD16<>._vjpSubscriptSetter(_:_:)(a1, a2, a3, a4, a5);
  v9 = v8;
  v10 = swift_allocObject();
  v11 = *(a3 + 24);
  v10[2] = *(a3 + 16);
  v10[3] = a4;
  v10[4] = v11;
  v10[5] = a5;
  v10[6] = partial apply for closure #1 in SIMD16<>._vjpSubscriptSetter(_:_:);
  v10[7] = v9;
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out SIMD2<A>);
}

uint64_t protocol witness for static AdditiveArithmetic.+= infix(_:_:) in conformance <> SIMD32<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  WitnessTable = swift_getWitnessTable();
  return static SIMD<>.+= infix(_:_:)(a1, a2, a3, a4, WitnessTable, v8, MEMORY[0x29EDC9E50]);
}

uint64_t protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance <> SIMD32<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, char *, uint64_t, void))
{
  v17[2] = a2;
  v18 = a5;
  v17[0] = *(a4 - 8);
  v17[1] = a1;
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x2A1C7C4A8](a1);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x2A1C7C4A8](v7);
  v12 = v17 - v11;
  MEMORY[0x2A1C7C4A8](v10);
  v14 = *(v13 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SIMDStorage.init()();
  for (i = 0; i != 32; ++i)
  {
    dispatch thunk of SIMDStorage.subscript.getter();
    dispatch thunk of SIMDStorage.subscript.getter();
    v18(v12, v9, v5, *(*(*(v17[0] + 16) + 8) + 8));
    result = dispatch thunk of SIMDStorage.subscript.setter();
  }

  return result;
}

uint64_t protocol witness for static AdditiveArithmetic.-= infix(_:_:) in conformance <> SIMD32<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  WitnessTable = swift_getWitnessTable();
  return static SIMD<>.+= infix(_:_:)(a1, a2, a3, a4, WitnessTable, v8, MEMORY[0x29EDC9E58]);
}

uint64_t (*SIMD32<>._vjpSubscript(_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  if (a2 >= 0x20)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v9 = *(a3 + 16);
    v8 = *(a3 + 24);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.getter();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = a4;
    v10[4] = v8;
    v10[5] = a5;
    v10[6] = a2;
    return partial apply for closure #1 in SIMD32<>._vjpSubscript(_:);
  }

  return result;
}

uint64_t closure #1 in SIMD32<>._vjpSubscript(_:)(const void *a1, unint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](a1);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SIMDStorage.init()();
  memcpy(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  if (a2 < 0x20)
  {
    return dispatch thunk of SIMDStorage.subscript.setter();
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t (*reverse-mode derivative of SIMD32.subscript.getter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  SIMD32<>._vjpSubscript(_:)(a1, a2, a3, a4, a5);
  v9 = v8;
  v10 = swift_allocObject();
  v11 = *(a3 + 24);
  v10[2] = *(a3 + 16);
  v10[3] = a4;
  v10[4] = v11;
  v10[5] = a5;
  v10[6] = partial apply for closure #1 in SIMD32<>._vjpSubscript(_:);
  v10[7] = v9;
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out SIMD2<A>);
}

uint64_t (*SIMD32<>._jvpSubscript(index:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  if (a2 >= 0x20)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v9 = *(a3 + 16);
    v8 = *(a3 + 24);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.getter();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = a4;
    v10[4] = v8;
    v10[5] = a5;
    v10[6] = a2;
    return partial apply for closure #1 in SIMD32<>._jvpSubscript(index:);
  }

  return result;
}

uint64_t closure #1 in SIMD32<>._jvpSubscript(index:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](a1);
  if (v4 >= 0x20)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.getter();
    return dispatch thunk of BinaryFloatingPoint.init<A>(_:)();
  }

  return result;
}

uint64_t (*forward-mode derivative of SIMD32.subscript.getter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  SIMD32<>._jvpSubscript(index:)(a1, a2, a3, a4, a5);
  v9 = v8;
  v10 = swift_allocObject();
  v11 = *(a3 + 24);
  v10[2] = *(a3 + 16);
  v10[3] = a4;
  v10[4] = v11;
  v10[5] = a5;
  v10[6] = partial apply for closure #1 in SIMD32<>._jvpSubscript(index:);
  v10[7] = v9;
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out SIMD2<A>);
}

uint64_t (*SIMD32<>._vjpSubscriptSetter(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  v9 = *(a3 + 16);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](a1);
  memcpy(&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v12, v11);
  if (a2 >= 0x20)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v13 = *(a3 + 24);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.setter();
    v14 = swift_allocObject();
    v14[2] = v9;
    v14[3] = a4;
    v14[4] = v13;
    v14[5] = a5;
    v14[6] = a2;
    return partial apply for closure #1 in SIMD32<>._vjpSubscriptSetter(_:_:);
  }

  return result;
}

uint64_t closure #1 in SIMD32<>._vjpSubscriptSetter(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](a1);
  v6 = *(*(*(*(v5 + 16) + 16) + 8) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  if (a2 >= 0x20)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.getter();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    return dispatch thunk of SIMDStorage.subscript.setter();
  }

  return result;
}

uint64_t (*reverse-mode derivative of SIMD32.subscript.setter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  SIMD32<>._vjpSubscriptSetter(_:_:)(a1, a2, a3, a4, a5);
  v9 = v8;
  v10 = swift_allocObject();
  v11 = *(a3 + 24);
  v10[2] = *(a3 + 16);
  v10[3] = a4;
  v10[4] = v11;
  v10[5] = a5;
  v10[6] = partial apply for closure #1 in SIMD32<>._vjpSubscriptSetter(_:_:);
  v10[7] = v9;
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out SIMD2<A>);
}

uint64_t protocol witness for static AdditiveArithmetic.+= infix(_:_:) in conformance <> SIMD64<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  WitnessTable = swift_getWitnessTable();
  return static SIMD<>.+= infix(_:_:)(a1, a2, a3, a4, WitnessTable, v8, MEMORY[0x29EDC9E50]);
}

uint64_t protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance <> SIMD64<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, char *, uint64_t, void))
{
  v17[2] = a2;
  v18 = a5;
  v17[0] = *(a4 - 8);
  v17[1] = a1;
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x2A1C7C4A8](a1);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x2A1C7C4A8](v7);
  v12 = v17 - v11;
  MEMORY[0x2A1C7C4A8](v10);
  v14 = *(v13 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SIMDStorage.init()();
  for (i = 0; i != 64; ++i)
  {
    dispatch thunk of SIMDStorage.subscript.getter();
    dispatch thunk of SIMDStorage.subscript.getter();
    v18(v12, v9, v5, *(*(*(v17[0] + 16) + 8) + 8));
    result = dispatch thunk of SIMDStorage.subscript.setter();
  }

  return result;
}

uint64_t protocol witness for static AdditiveArithmetic.-= infix(_:_:) in conformance <> SIMD64<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  WitnessTable = swift_getWitnessTable();
  return static SIMD<>.+= infix(_:_:)(a1, a2, a3, a4, WitnessTable, v8, MEMORY[0x29EDC9E58]);
}

uint64_t (*SIMD64<>._vjpSubscript(_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  if (a2 >= 0x40)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v9 = *(a3 + 16);
    v8 = *(a3 + 24);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.getter();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = a4;
    v10[4] = v8;
    v10[5] = a5;
    v10[6] = a2;
    return partial apply for closure #1 in SIMD64<>._vjpSubscript(_:);
  }

  return result;
}

uint64_t closure #1 in SIMD64<>._vjpSubscript(_:)(const void *a1, unint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](a1);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SIMDStorage.init()();
  memcpy(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  if (a2 < 0x40)
  {
    return dispatch thunk of SIMDStorage.subscript.setter();
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t (*reverse-mode derivative of SIMD64.subscript.getter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  SIMD64<>._vjpSubscript(_:)(a1, a2, a3, a4, a5);
  v9 = v8;
  v10 = swift_allocObject();
  v11 = *(a3 + 24);
  v10[2] = *(a3 + 16);
  v10[3] = a4;
  v10[4] = v11;
  v10[5] = a5;
  v10[6] = partial apply for closure #1 in SIMD64<>._vjpSubscript(_:);
  v10[7] = v9;
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out SIMD2<A>);
}

uint64_t (*SIMD64<>._jvpSubscript(index:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  if (a2 >= 0x40)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v9 = *(a3 + 16);
    v8 = *(a3 + 24);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.getter();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = a4;
    v10[4] = v8;
    v10[5] = a5;
    v10[6] = a2;
    return partial apply for closure #1 in SIMD64<>._jvpSubscript(index:);
  }

  return result;
}

uint64_t closure #1 in SIMD64<>._jvpSubscript(index:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](a1);
  if (v4 >= 0x40)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.getter();
    return dispatch thunk of BinaryFloatingPoint.init<A>(_:)();
  }

  return result;
}

uint64_t (*forward-mode derivative of SIMD64.subscript.getter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  SIMD64<>._jvpSubscript(index:)(a1, a2, a3, a4, a5);
  v9 = v8;
  v10 = swift_allocObject();
  v11 = *(a3 + 24);
  v10[2] = *(a3 + 16);
  v10[3] = a4;
  v10[4] = v11;
  v10[5] = a5;
  v10[6] = partial apply for closure #1 in SIMD64<>._jvpSubscript(index:);
  v10[7] = v9;
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out SIMD2<A>);
}

uint64_t (*SIMD64<>._vjpSubscriptSetter(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  v9 = *(a3 + 16);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](a1);
  memcpy(&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v12, v11);
  if (a2 >= 0x40)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v13 = *(a3 + 24);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.setter();
    v14 = swift_allocObject();
    v14[2] = v9;
    v14[3] = a4;
    v14[4] = v13;
    v14[5] = a5;
    v14[6] = a2;
    return partial apply for closure #1 in SIMD64<>._vjpSubscriptSetter(_:_:);
  }

  return result;
}

uint64_t closure #1 in SIMD64<>._vjpSubscriptSetter(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](a1);
  v6 = *(*(*(*(v5 + 16) + 16) + 8) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  if (a2 >= 0x40)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.getter();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    return dispatch thunk of SIMDStorage.subscript.setter();
  }

  return result;
}

uint64_t (*reverse-mode derivative of SIMD64.subscript.setter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  SIMD64<>._vjpSubscriptSetter(_:_:)(a1, a2, a3, a4, a5);
  v9 = v8;
  v10 = swift_allocObject();
  v11 = *(a3 + 24);
  v10[2] = *(a3 + 16);
  v10[3] = a4;
  v10[4] = v11;
  v10[5] = a5;
  v10[6] = partial apply for closure #1 in SIMD64<>._vjpSubscriptSetter(_:_:);
  v10[7] = v9;
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out SIMD2<A>);
}

uint64_t protocol witness for static AdditiveArithmetic.+= infix(_:_:) in conformance <> SIMD3<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  WitnessTable = swift_getWitnessTable();
  return static SIMD<>.+= infix(_:_:)(a1, a2, a3, a4, WitnessTable, v8, MEMORY[0x29EDC9E50]);
}

uint64_t protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance <> SIMD3<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, char *, uint64_t, uint64_t))
{
  v22 = a2;
  v6 = *(a4 - 8);
  v20 = a5;
  v21 = v6;
  v7 = *(a3 + 16);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x2A1C7C4A8](a1);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x2A1C7C4A8](v9);
  v14 = &v19 - v13;
  MEMORY[0x2A1C7C4A8](v12);
  v16 = *(v15 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SIMDStorage.init()();
  v19 = a1;
  dispatch thunk of SIMDStorage.subscript.getter();
  dispatch thunk of SIMDStorage.subscript.getter();
  v17 = v20;
  v21 = *(*(*(v21 + 16) + 8) + 8);
  (v20)(v14, v11, v7);
  dispatch thunk of SIMDStorage.subscript.setter();
  dispatch thunk of SIMDStorage.subscript.getter();
  dispatch thunk of SIMDStorage.subscript.getter();
  v17(v14, v11, v7, v21);
  dispatch thunk of SIMDStorage.subscript.setter();
  dispatch thunk of SIMDStorage.subscript.getter();
  dispatch thunk of SIMDStorage.subscript.getter();
  v17(v14, v11, v7, v21);
  return dispatch thunk of SIMDStorage.subscript.setter();
}

uint64_t protocol witness for static AdditiveArithmetic.-= infix(_:_:) in conformance <> SIMD3<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  WitnessTable = swift_getWitnessTable();
  return static SIMD<>.+= infix(_:_:)(a1, a2, a3, a4, WitnessTable, v8, MEMORY[0x29EDC9E58]);
}

uint64_t (*SIMD3<>._vjpSubscript(_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  if (a2 >= 3)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v9 = *(a3 + 16);
    v8 = *(a3 + 24);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.getter();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = a4;
    v10[4] = v8;
    v10[5] = a5;
    v10[6] = a2;
    return partial apply for closure #1 in SIMD3<>._vjpSubscript(_:);
  }

  return result;
}

uint64_t closure #1 in SIMD3<>._vjpSubscript(_:)(const void *a1, unint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](a1);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SIMDStorage.init()();
  memcpy(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  if (a2 < 3)
  {
    return dispatch thunk of SIMDStorage.subscript.setter();
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t (*reverse-mode derivative of SIMD3.subscript.getter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  SIMD3<>._vjpSubscript(_:)(a1, a2, a3, a4, a5);
  v9 = v8;
  v10 = swift_allocObject();
  v11 = *(a3 + 24);
  v10[2] = *(a3 + 16);
  v10[3] = a4;
  v10[4] = v11;
  v10[5] = a5;
  v10[6] = partial apply for closure #1 in SIMD3<>._vjpSubscript(_:);
  v10[7] = v9;
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out SIMD2<A>);
}

uint64_t (*SIMD3<>._jvpSubscript(index:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  if (a2 >= 3)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v9 = *(a3 + 16);
    v8 = *(a3 + 24);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.getter();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = a4;
    v10[4] = v8;
    v10[5] = a5;
    v10[6] = a2;
    return partial apply for closure #1 in SIMD3<>._jvpSubscript(index:);
  }

  return result;
}

uint64_t closure #1 in SIMD3<>._jvpSubscript(index:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](a1);
  if (v4 >= 3)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.getter();
    return dispatch thunk of BinaryFloatingPoint.init<A>(_:)();
  }

  return result;
}

uint64_t (*forward-mode derivative of SIMD3.subscript.getter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  SIMD3<>._jvpSubscript(index:)(a1, a2, a3, a4, a5);
  v9 = v8;
  v10 = swift_allocObject();
  v11 = *(a3 + 24);
  v10[2] = *(a3 + 16);
  v10[3] = a4;
  v10[4] = v11;
  v10[5] = a5;
  v10[6] = partial apply for closure #1 in SIMD3<>._jvpSubscript(index:);
  v10[7] = v9;
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out SIMD2<A>);
}

uint64_t (*SIMD3<>._vjpSubscriptSetter(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  v9 = *(a3 + 16);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](a1);
  memcpy(&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v12, v11);
  if (a2 >= 3)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v13 = *(a3 + 24);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.setter();
    v14 = swift_allocObject();
    v14[2] = v9;
    v14[3] = a4;
    v14[4] = v13;
    v14[5] = a5;
    v14[6] = a2;
    return partial apply for closure #1 in SIMD3<>._vjpSubscriptSetter(_:_:);
  }

  return result;
}

uint64_t closure #1 in SIMD3<>._vjpSubscriptSetter(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](a1);
  v6 = *(*(*(*(v5 + 16) + 16) + 8) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  if (a2 >= 3)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SIMDStorage.subscript.getter();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    return dispatch thunk of SIMDStorage.subscript.setter();
  }

  return result;
}

uint64_t (*reverse-mode derivative of SIMD3.subscript.setter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  SIMD3<>._vjpSubscriptSetter(_:_:)(a1, a2, a3, a4, a5);
  v9 = v8;
  v10 = swift_allocObject();
  v11 = *(a3 + 24);
  v10[2] = *(a3 + 16);
  v10[3] = a4;
  v10[4] = v11;
  v10[5] = a5;
  v10[6] = partial apply for closure #1 in SIMD3<>._vjpSubscriptSetter(_:_:);
  v10[7] = v9;
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out SIMD2<A>);
}

uint64_t (*static SIMD<>._vjpAdd(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a6;
  v45 = a8;
  v51 = a7;
  v49 = a3;
  v39 = a2;
  v42 = a1;
  v43 = a5;
  v10 = *(a5 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  v11 = *(v52 + 64);
  v12 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v14 = &AssociatedTypeWitness - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x2A1C7C4A8](v12);
  v38 = &AssociatedTypeWitness - v16;
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v19 = &AssociatedTypeWitness - v18;
  v41 = *(a4 - 8);
  v20 = *(v41 + 64);
  MEMORY[0x2A1C7C4A8](v17);
  v22 = &AssociatedTypeWitness - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of SIMDStorage.init()();
  v23 = v22;
  v24 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v24 < 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v40 = a9;
    v25 = v38;
    v50 = v23;
    v48 = v19;
    v26 = AssociatedTypeWitness;
    if (v24)
    {
      v27 = 0;
      v46 = v52 + 8;
      v47 = v24;
      v28 = (v52 + 8);
      do
      {
        v52 = v27 + 1;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        v29 = *(*(*(*(v51 + 16) + 16) + 8) + 8);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v30 = *v28;
        (*v28)(v14, v26);
        v30(v25, v26);
        dispatch thunk of SIMDStorage.subscript.setter();
        v27 = v52;
      }

      while (v47 != v52);
    }

    (*(v41 + 32))(v42, v50, a4);
    v31 = swift_allocObject();
    v32 = v43;
    v33 = v44;
    v31[2] = a4;
    v31[3] = v32;
    v34 = v51;
    v31[4] = v33;
    v31[5] = v34;
    v35 = v40;
    v31[6] = v45;
    v31[7] = v35;
    return partial apply for closure #1 in static SIMD<>._vjpAdd(lhs:rhs:);
  }

  return result;
}

uint64_t (*static SIMD<>._jvpAdd(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9))(uint64_t a1, uint64_t a2)
{
  v44 = a6;
  v45 = a8;
  v51 = a7;
  v49 = a3;
  v39 = a2;
  v42 = a1;
  v43 = a5;
  v10 = *(a5 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  v11 = *(v52 + 64);
  v12 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v14 = &AssociatedTypeWitness - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x2A1C7C4A8](v12);
  v38 = &AssociatedTypeWitness - v16;
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v19 = &AssociatedTypeWitness - v18;
  v41 = *(a4 - 8);
  v20 = *(v41 + 64);
  MEMORY[0x2A1C7C4A8](v17);
  v22 = &AssociatedTypeWitness - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of SIMDStorage.init()();
  v23 = v22;
  v24 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v24 < 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v40 = a9;
    v25 = v38;
    v50 = v23;
    v48 = v19;
    v26 = AssociatedTypeWitness;
    if (v24)
    {
      v27 = 0;
      v46 = v52 + 8;
      v47 = v24;
      v28 = (v52 + 8);
      do
      {
        v52 = v27 + 1;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        v29 = *(*(*(*(v51 + 16) + 16) + 8) + 8);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v30 = *v28;
        (*v28)(v14, v26);
        v30(v25, v26);
        dispatch thunk of SIMDStorage.subscript.setter();
        v27 = v52;
      }

      while (v47 != v52);
    }

    (*(v41 + 32))(v42, v50, a4);
    v31 = swift_allocObject();
    v32 = v43;
    v33 = v44;
    v31[2] = a4;
    v31[3] = v32;
    v34 = v51;
    v31[4] = v33;
    v31[5] = v34;
    v35 = v40;
    v31[6] = v45;
    v31[7] = v35;
    return partial apply for closure #1 in static SIMD<>._jvpAdd(lhs:rhs:);
  }

  return result;
}

uint64_t (*static SIMD<>._vjpSubtract(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a6;
  v45 = a8;
  v51 = a7;
  v49 = a3;
  v39 = a2;
  v42 = a1;
  v43 = a5;
  v10 = *(a5 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  v11 = *(v52 + 64);
  v12 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v14 = &AssociatedTypeWitness - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x2A1C7C4A8](v12);
  v38 = &AssociatedTypeWitness - v16;
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v19 = &AssociatedTypeWitness - v18;
  v41 = *(a4 - 8);
  v20 = *(v41 + 64);
  MEMORY[0x2A1C7C4A8](v17);
  v22 = &AssociatedTypeWitness - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of SIMDStorage.init()();
  v23 = v22;
  v24 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v24 < 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v40 = a9;
    v25 = v38;
    v50 = v23;
    v48 = v19;
    v26 = AssociatedTypeWitness;
    if (v24)
    {
      v27 = 0;
      v46 = v52 + 8;
      v47 = v24;
      v28 = (v52 + 8);
      do
      {
        v52 = v27 + 1;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        v29 = *(*(*(*(v51 + 16) + 16) + 8) + 8);
        dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
        v30 = *v28;
        (*v28)(v14, v26);
        v30(v25, v26);
        dispatch thunk of SIMDStorage.subscript.setter();
        v27 = v52;
      }

      while (v47 != v52);
    }

    (*(v41 + 32))(v42, v50, a4);
    v31 = swift_allocObject();
    v32 = v43;
    v33 = v44;
    v31[2] = a4;
    v31[3] = v32;
    v34 = v51;
    v31[4] = v33;
    v31[5] = v34;
    v35 = v40;
    v31[6] = v45;
    v31[7] = v35;
    return partial apply for closure #1 in static SIMD<>._vjpSubtract(lhs:rhs:);
  }

  return result;
}

uint64_t closure #1 in static SIMD<>._vjpSubtract(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v67 = a3;
  v68 = a2;
  v70 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v71 = &v58 - v16;
  v69 = *(a8 + 48);
  v17 = swift_getAssociatedTypeWitness();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x2A1C7C4A8](v17);
  v60 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x2A1C7C4A8](v20);
  v59 = &v58 - v23;
  v24 = MEMORY[0x2A1C7C4A8](v22);
  v66 = &v58 - v25;
  v26 = MEMORY[0x2A1C7C4A8](v24);
  v28 = &v58 - v27;
  MEMORY[0x2A1C7C4A8](v26);
  v30 = &v58 - v29;
  v65 = *(*(*(a9 + 16) + 16) + 8);
  v31 = *(v65 + 16);
  v32 = swift_getAssociatedTypeWitness();
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v32);
  v62 = v11;
  (*(v11 + 16))(v70, v67, AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v70 = v18;
  v34 = *(v18 + 16);
  v35 = v28;
  v64 = v30;
  v58 = v17;
  v36 = v17;
  v37 = v34;
  v34(v28, v30, v36);
  dispatch thunk of SIMDStorage.init()();
  v61 = AssociatedTypeWitness;
  v38 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v38 < 0)
  {
    goto LABEL_10;
  }

  v39 = v38;
  v40 = v61;
  v41 = v15;
  v42 = v37;
  v43 = v58;
  v44 = v66;
  if (v38)
  {
    v45 = 0;
    do
    {
      v42(v44, v35, v43);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v45;
    }

    while (v39 != v45);
  }

  v46 = v70 + 8;
  v47 = *(v70 + 8);
  v47(v35, v43);
  (*(v62 + 32))(v71, v41, v40);
  dispatch thunk of SIMDStorage.init()();
  v48 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v48 < 0)
  {
LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v49 = v48;
    v47(v64, v43);
    v50 = v71;
    v70 = v46;
    v51 = v59;
    v52 = v60;
    v53 = v61;
    v64 = v47;
    if (v49)
    {
      v54 = 0;
      v63 = v49;
      do
      {
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        v55 = *(v65 + 8);
        dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
        v56 = v64;
        (v64)(v52, v43);
        v56(v51, v43);
        dispatch thunk of SIMDStorage.subscript.setter();
        v50 = v71;
        ++v54;
      }

      while (v63 != v54);
    }

    return (*(v62 + 8))(v50, v53);
  }

  return result;
}

uint64_t (*static SIMD<>._jvpSubtract(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9))(uint64_t a1, uint64_t a2)
{
  v44 = a6;
  v45 = a8;
  v51 = a7;
  v49 = a3;
  v39 = a2;
  v42 = a1;
  v43 = a5;
  v10 = *(a5 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  v11 = *(v52 + 64);
  v12 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v14 = &AssociatedTypeWitness - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x2A1C7C4A8](v12);
  v38 = &AssociatedTypeWitness - v16;
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v19 = &AssociatedTypeWitness - v18;
  v41 = *(a4 - 8);
  v20 = *(v41 + 64);
  MEMORY[0x2A1C7C4A8](v17);
  v22 = &AssociatedTypeWitness - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of SIMDStorage.init()();
  v23 = v22;
  v24 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v24 < 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v40 = a9;
    v25 = v38;
    v50 = v23;
    v48 = v19;
    v26 = AssociatedTypeWitness;
    if (v24)
    {
      v27 = 0;
      v46 = v52 + 8;
      v47 = v24;
      v28 = (v52 + 8);
      do
      {
        v52 = v27 + 1;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        v29 = *(*(*(*(v51 + 16) + 16) + 8) + 8);
        dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
        v30 = *v28;
        (*v28)(v14, v26);
        v30(v25, v26);
        dispatch thunk of SIMDStorage.subscript.setter();
        v27 = v52;
      }

      while (v47 != v52);
    }

    (*(v41 + 32))(v42, v50, a4);
    v31 = swift_allocObject();
    v32 = v43;
    v33 = v44;
    v31[2] = a4;
    v31[3] = v32;
    v34 = v51;
    v31[4] = v33;
    v31[5] = v34;
    v35 = v40;
    v31[6] = v45;
    v31[7] = v35;
    return partial apply for closure #1 in static SIMD<>._jvpSubtract(lhs:rhs:);
  }

  return result;
}

uint64_t closure #1 in static SIMD<>._jvpAdd(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return a9(a1, a2, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t (*static SIMD<>._vjpNegate(rhs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))()
{
  v80 = a7;
  v81 = a8;
  v78 = a5;
  v86 = a2;
  v76 = a1;
  v83 = *(a3 - 8);
  v10 = *(v83 + 64);
  v11 = MEMORY[0x2A1C7C4A8](a1);
  v91 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x2A1C7C4A8](v11);
  v15 = &v70 - v14;
  MEMORY[0x2A1C7C4A8](v13);
  v90 = &v70 - v16;
  v77 = v17;
  v18 = *(v17 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(AssociatedTypeWitness - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v75 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x2A1C7C4A8](v22);
  v74 = &v70 - v25;
  v26 = MEMORY[0x2A1C7C4A8](v24);
  v87 = &v70 - v27;
  v28 = MEMORY[0x2A1C7C4A8](v26);
  v30 = &v70 - v29;
  MEMORY[0x2A1C7C4A8](v28);
  v32 = &v70 - v31;
  v79 = a6;
  v73 = *(*(*(a6 + 16) + 16) + 8);
  v33 = *(v73 + 16);
  v34 = swift_getAssociatedTypeWitness();
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v34);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v88 = v20;
  v36 = *(v20 + 16);
  v37 = v30;
  v92 = v32;
  v70 = AssociatedTypeWitness;
  v84 = (v20 + 16);
  v85 = v36;
  (v36)(v30, v32, AssociatedTypeWitness);
  dispatch thunk of SIMDStorage.init()();
  v38 = v15;
  v82 = a3;
  v89 = v18;
  v39 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v39 < 0)
  {
    goto LABEL_10;
  }

  v40 = v39;
  v41 = v82;
  v42 = v87;
  v43 = v85;
  v44 = v70;
  if (v39)
  {
    v45 = 0;
    do
    {
      v43(v42, v37, v44);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v45;
    }

    while (v40 != v45);
  }

  v47 = v88 + 8;
  v46 = *(v88 + 8);
  v46(v37, v44);
  v48 = *(v83 + 32);
  v72 = v83 + 32;
  v71 = v48;
  v48(v90, v38, v41);
  dispatch thunk of SIMDStorage.init()();
  v49 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v49 < 0)
  {
LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v50 = v49;
    v46(v92, v44);
    v88 = v47;
    v51 = v90;
    v52 = v74;
    v53 = v75;
    v54 = v82;
    v55 = v44;
    v85 = v46;
    v56 = v73;
    if (v50)
    {
      v57 = 0;
      v84 = v50;
      do
      {
        v92 = v57 + 1;
        v58 = v52;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        v59 = *(v56 + 8);
        dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
        v60 = v56;
        v61 = v54;
        v62 = v85;
        v85(v53, v55);
        v62(v58, v55);
        v54 = v61;
        v56 = v60;
        dispatch thunk of SIMDStorage.subscript.setter();
        v52 = v58;
        v51 = v90;
        v57 = v92;
      }

      while (v84 != v92);
    }

    (*(v83 + 8))(v51, v54);
    v71(v76, v91, v54);
    v63 = swift_allocObject();
    v64 = v77;
    v65 = v78;
    v63[2] = v54;
    v63[3] = v64;
    v66 = v79;
    v67 = v80;
    v63[4] = v65;
    v63[5] = v66;
    v68 = v81;
    v63[6] = v67;
    v63[7] = v68;
    return partial apply for closure #1 in static SIMD<>._vjpNegate(rhs:);
  }

  return result;
}

uint64_t (*static SIMD<>._jvpNegate(rhs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))()
{
  v80 = a7;
  v81 = a8;
  v78 = a5;
  v86 = a2;
  v76 = a1;
  v83 = *(a3 - 8);
  v10 = *(v83 + 64);
  v11 = MEMORY[0x2A1C7C4A8](a1);
  v91 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x2A1C7C4A8](v11);
  v15 = &v70 - v14;
  MEMORY[0x2A1C7C4A8](v13);
  v90 = &v70 - v16;
  v77 = v17;
  v18 = *(v17 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(AssociatedTypeWitness - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v75 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x2A1C7C4A8](v22);
  v74 = &v70 - v25;
  v26 = MEMORY[0x2A1C7C4A8](v24);
  v87 = &v70 - v27;
  v28 = MEMORY[0x2A1C7C4A8](v26);
  v30 = &v70 - v29;
  MEMORY[0x2A1C7C4A8](v28);
  v32 = &v70 - v31;
  v79 = a6;
  v73 = *(*(*(a6 + 16) + 16) + 8);
  v33 = *(v73 + 16);
  v34 = swift_getAssociatedTypeWitness();
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v34);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v88 = v20;
  v36 = *(v20 + 16);
  v37 = v30;
  v92 = v32;
  v70 = AssociatedTypeWitness;
  v84 = (v20 + 16);
  v85 = v36;
  (v36)(v30, v32, AssociatedTypeWitness);
  dispatch thunk of SIMDStorage.init()();
  v38 = v15;
  v82 = a3;
  v89 = v18;
  v39 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v39 < 0)
  {
    goto LABEL_10;
  }

  v40 = v39;
  v41 = v82;
  v42 = v87;
  v43 = v85;
  v44 = v70;
  if (v39)
  {
    v45 = 0;
    do
    {
      v43(v42, v37, v44);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v45;
    }

    while (v40 != v45);
  }

  v47 = v88 + 8;
  v46 = *(v88 + 8);
  v46(v37, v44);
  v48 = *(v83 + 32);
  v72 = v83 + 32;
  v71 = v48;
  v48(v90, v38, v41);
  dispatch thunk of SIMDStorage.init()();
  v49 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v49 < 0)
  {
LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v50 = v49;
    v46(v92, v44);
    v88 = v47;
    v51 = v90;
    v52 = v74;
    v53 = v75;
    v54 = v82;
    v55 = v44;
    v85 = v46;
    v56 = v73;
    if (v50)
    {
      v57 = 0;
      v84 = v50;
      do
      {
        v92 = v57 + 1;
        v58 = v52;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        v59 = *(v56 + 8);
        dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
        v60 = v56;
        v61 = v54;
        v62 = v85;
        v85(v53, v55);
        v62(v58, v55);
        v54 = v61;
        v56 = v60;
        dispatch thunk of SIMDStorage.subscript.setter();
        v52 = v58;
        v51 = v90;
        v57 = v92;
      }

      while (v84 != v92);
    }

    (*(v83 + 8))(v51, v54);
    v71(v76, v91, v54);
    v63 = swift_allocObject();
    v64 = v77;
    v65 = v78;
    v63[2] = v54;
    v63[3] = v64;
    v66 = v79;
    v67 = v80;
    v63[4] = v65;
    v63[5] = v66;
    v68 = v81;
    v63[6] = v67;
    v63[7] = v68;
    return partial apply for closure #1 in static SIMD<>._jvpNegate(rhs:);
  }

  return result;
}

uint64_t closure #1 in static SIMD<>._vjpNegate(rhs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{
  v67 = a1;
  v68 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v64 = *(AssociatedTypeWitness - 8);
  v7 = *(v64 + 64);
  v8 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v72 = &v58 - v11;
  v12 = *(a2 + 48);
  v13 = swift_getAssociatedTypeWitness();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x2A1C7C4A8](v13);
  v62 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x2A1C7C4A8](v16);
  v61 = &v58 - v19;
  v20 = MEMORY[0x2A1C7C4A8](v18);
  v69 = &v58 - v21;
  v22 = MEMORY[0x2A1C7C4A8](v20);
  v24 = &v58 - v23;
  MEMORY[0x2A1C7C4A8](v22);
  v26 = &v58 - v25;
  v60 = *(*(*(a3 + 16) + 16) + 8);
  v27 = *(v60 + 16);
  v28 = swift_getAssociatedTypeWitness();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v28);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v70 = v14;
  v30 = *(v14 + 16);
  v73 = v26;
  v59 = v13;
  v65 = (v14 + 16);
  v66 = v30;
  (v30)(v24, v26, v13);
  dispatch thunk of SIMDStorage.init()();
  v31 = v10;
  v63 = AssociatedTypeWitness;
  v71 = v12;
  v32 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v32 < 0)
  {
    goto LABEL_10;
  }

  v33 = v32;
  v34 = v63;
  v35 = v69;
  v36 = v66;
  v37 = v59;
  if (v32)
  {
    v38 = 0;
    do
    {
      v36(v35, v24, v37);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v38;
    }

    while (v33 != v38);
  }

  v40 = v70 + 8;
  v39 = *(v70 + 8);
  v39(v24, v37);
  (*(v64 + 32))(v72, v31, v34);
  dispatch thunk of SIMDStorage.init()();
  v41 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v41 < 0)
  {
LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v42 = v41;
    v39(v73, v37);
    v44 = v71;
    v43 = v72;
    v70 = v40;
    v46 = v61;
    v45 = v62;
    v47 = v37;
    v48 = v63;
    v49 = v60;
    v66 = v39;
    if (v42)
    {
      v50 = 0;
      v65 = v42;
      do
      {
        v73 = v50 + 1;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        v51 = *(v49 + 8);
        dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
        v52 = v45;
        v53 = v44;
        v54 = v45;
        v55 = v48;
        v56 = v66;
        v66(v52, v47);
        v56(v46, v47);
        v48 = v55;
        v45 = v54;
        v44 = v53;
        dispatch thunk of SIMDStorage.subscript.setter();
        v43 = v72;
        v50 = v73;
      }

      while (v65 != v73);
    }

    return (*(v64 + 8))(v43, v48);
  }

  return result;
}

uint64_t (*static SIMD<>._vjpMultiply(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a3;
  v62 = a7;
  v55 = a5;
  v56 = a6;
  v60 = a2;
  v54 = a1;
  v8 = *(a5 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = *(AssociatedTypeWitness - 8);
  v10 = *(v48 + 64);
  v11 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x2A1C7C4A8](v11);
  v49 = &v47 - v15;
  v16 = MEMORY[0x2A1C7C4A8](v14);
  v18 = &v47 - v17;
  v50 = *(a4 - 8);
  v19 = *(v50 + 64);
  v20 = MEMORY[0x2A1C7C4A8](v16);
  v53 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x2A1C7C4A8](v20);
  v51 = &v47 - v23;
  v52 = v24;
  MEMORY[0x2A1C7C4A8](v22);
  v26 = &v47 - v25;
  dispatch thunk of SIMDStorage.init()();
  v27 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v27 < 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v58 = v18;
    v59 = v26;
    v28 = v49;
    if (v27)
    {
      v29 = 0;
      v30 = (v48 + 8);
      v57 = v27;
      do
      {
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        v31 = *(*(*(v62 + 16) + 16) + 8);
        dispatch thunk of static Numeric.* infix(_:_:)();
        v32 = *v30;
        (*v30)(v13, AssociatedTypeWitness);
        v32(v28, AssociatedTypeWitness);
        dispatch thunk of SIMDStorage.subscript.setter();
        ++v29;
      }

      while (v57 != v29);
    }

    v33 = v50;
    v34 = a4;
    v35 = *(v50 + 32);
    v35(v54, v59, a4);
    v36 = *(v33 + 16);
    v37 = v51;
    v36(v51, v61, v34);
    v38 = v53;
    v36(v53, v60, v34);
    v39 = *(v33 + 80);
    v40 = (v39 + 48) & ~v39;
    v41 = (v52 + v39 + v40) & ~v39;
    v42 = swift_allocObject();
    v43 = v55;
    v44 = v56;
    v42[2] = v34;
    v42[3] = v43;
    v45 = v62;
    v42[4] = v44;
    v42[5] = v45;
    v35(v42 + v40, v37, v34);
    v35(v42 + v41, v38, v34);
    return partial apply for closure #1 in static SIMD<>._vjpMultiply(lhs:rhs:);
  }

  return result;
}

uint64_t closure #1 in static SIMD<>._vjpMultiply(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(char *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v47 = a4;
  v48 = a5;
  v44 = a3;
  v51 = a2;
  v11 = *(a7 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = *(AssociatedTypeWitness - 8);
  v41 = AssociatedTypeWitness;
  v13 = *(v40 + 64);
  v14 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v43 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x2A1C7C4A8](v14);
  v42 = &v37 - v17;
  v18 = MEMORY[0x2A1C7C4A8](v16);
  v54 = &v37 - v19;
  v38 = *(a6 - 8);
  v20 = *(v38 + 64);
  MEMORY[0x2A1C7C4A8](v18);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of SIMDStorage.init()();
  v23 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v23 < 0)
  {
    goto LABEL_10;
  }

  v39 = a1;
  v53 = a9;
  v24 = v43;
  v49 = v11;
  v50 = v22;
  v26 = v41;
  v25 = v42;
  if (v23)
  {
    v27 = 0;
    v45 = (v40 + 8);
    v46 = v23;
    do
    {
      v52 = v27 + 1;
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of SIMDStorage.subscript.getter();
      v28 = *(*(*(v53 + 16) + 16) + 8);
      dispatch thunk of static Numeric.* infix(_:_:)();
      v29 = *v45;
      (*v45)(v24, v26);
      v29(v25, v26);
      dispatch thunk of SIMDStorage.subscript.setter();
      v27 = v52;
    }

    while (v46 != v52);
  }

  (*(v38 + 32))(v39, v50, a6);
  dispatch thunk of SIMDStorage.init()();
  result = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (result < 0)
  {
LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v31 = v43;
    v33 = v41;
    v32 = v42;
    if (result)
    {
      v34 = 0;
      v47 = (v40 + 8);
      v50 = result;
      do
      {
        v52 = v34 + 1;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        v35 = *(*(*(v53 + 16) + 16) + 8);
        dispatch thunk of static Numeric.* infix(_:_:)();
        v36 = *v47;
        (*v47)(v31, v33);
        v36(v32, v33);
        dispatch thunk of SIMDStorage.subscript.setter();
        result = v50;
        v34 = v52;
      }

      while (v50 != v52);
    }
  }

  return result;
}

uint64_t (*static SIMD<>._jvpMultiply(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))(uint64_t a1, uint64_t a2)
{
  v61 = a3;
  v62 = a7;
  v55 = a5;
  v56 = a6;
  v60 = a2;
  v54 = a1;
  v8 = *(a5 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = *(AssociatedTypeWitness - 8);
  v10 = *(v48 + 64);
  v11 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x2A1C7C4A8](v11);
  v49 = &v47 - v15;
  v16 = MEMORY[0x2A1C7C4A8](v14);
  v18 = &v47 - v17;
  v50 = *(a4 - 8);
  v19 = *(v50 + 64);
  v20 = MEMORY[0x2A1C7C4A8](v16);
  v53 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x2A1C7C4A8](v20);
  v51 = &v47 - v23;
  v52 = v24;
  MEMORY[0x2A1C7C4A8](v22);
  v26 = &v47 - v25;
  dispatch thunk of SIMDStorage.init()();
  v27 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v27 < 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v58 = v18;
    v59 = v26;
    v28 = v49;
    if (v27)
    {
      v29 = 0;
      v30 = (v48 + 8);
      v57 = v27;
      do
      {
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        v31 = *(*(*(v62 + 16) + 16) + 8);
        dispatch thunk of static Numeric.* infix(_:_:)();
        v32 = *v30;
        (*v30)(v13, AssociatedTypeWitness);
        v32(v28, AssociatedTypeWitness);
        dispatch thunk of SIMDStorage.subscript.setter();
        ++v29;
      }

      while (v57 != v29);
    }

    v33 = v50;
    v34 = a4;
    v35 = *(v50 + 32);
    v35(v54, v59, a4);
    v36 = *(v33 + 16);
    v37 = v51;
    v36(v51, v60, v34);
    v38 = v53;
    v36(v53, v61, v34);
    v39 = *(v33 + 80);
    v40 = (v39 + 48) & ~v39;
    v41 = (v52 + v39 + v40) & ~v39;
    v42 = swift_allocObject();
    v43 = v55;
    v44 = v56;
    v42[2] = v34;
    v42[3] = v43;
    v45 = v62;
    v42[4] = v44;
    v42[5] = v45;
    v35(v42 + v40, v37, v34);
    v35(v42 + v41, v38, v34);
    return partial apply for closure #1 in static SIMD<>._jvpMultiply(lhs:rhs:);
  }

  return result;
}

uint64_t closure #1 in static SIMD<>._jvpMultiply(lhs:rhs:)@<X0>(uint64_t a1@<X0>, void (**a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v70 = a8;
  v52 = a1;
  v53 = a7;
  v64 = a4;
  v50 = a3;
  v54 = a9;
  v11 = *(a6 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v55 = *(AssociatedTypeWitness - 8);
  v56 = AssociatedTypeWitness;
  v13 = *(v55 + 64);
  v14 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v58 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x2A1C7C4A8](v14);
  v57 = &v50 - v17;
  v18 = MEMORY[0x2A1C7C4A8](v16);
  v69 = &v50 - v19;
  v60 = *(a5 - 8);
  v20 = v60[8];
  v21 = MEMORY[0x2A1C7C4A8](v18);
  v67 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x2A1C7C4A8](v21);
  v51 = &v50 - v24;
  v25 = MEMORY[0x2A1C7C4A8](v23);
  v27 = &v50 - v26;
  MEMORY[0x2A1C7C4A8](v25);
  v59 = &v50 - v28;
  dispatch thunk of SIMDStorage.init()();
  v29 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v29 < 0)
  {
    goto LABEL_10;
  }

  v63 = a2;
  v65 = v11;
  v66 = v27;
  v30 = v57;
  v31 = v58;
  v32 = v56;
  if (v29)
  {
    v33 = 0;
    v61 = (v55 + 8);
    v62 = v29;
    do
    {
      v68 = v33 + 1;
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of SIMDStorage.subscript.getter();
      v34 = *(*(*(v70 + 16) + 16) + 8);
      dispatch thunk of static Numeric.* infix(_:_:)();
      v35 = *v61;
      (*v61)(v31, v32);
      v35(v30, v32);
      dispatch thunk of SIMDStorage.subscript.setter();
      v33 = v68;
    }

    while (v62 != v68);
  }

  v61 = v60[4];
  v62 = (v60 + 4);
  (v61)(v59, v66, a5);
  dispatch thunk of SIMDStorage.init()();
  v36 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v36 < 0)
  {
LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v37 = a5;
    v38 = v57;
    v39 = v58;
    v40 = v56;
    if (v36)
    {
      v41 = 0;
      v63 = (v55 + 8);
      v66 = v36;
      do
      {
        v68 = v41 + 1;
        v42 = v37;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        v43 = *(*(*(v70 + 16) + 16) + 8);
        dispatch thunk of static Numeric.* infix(_:_:)();
        v44 = *v63;
        (*v63)(v39, v40);
        v44(v38, v40);
        dispatch thunk of SIMDStorage.subscript.setter();
        v37 = v42;
        v41 = v68;
      }

      while (v66 != v68);
    }

    v45 = v51;
    v46 = v37;
    (v61)(v51, v67, v37);
    swift_getAssociatedConformanceWitness();
    v47 = v59;
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v48 = v60[1];
    v48(v45, v46);
    return (v48)(v47, v46);
  }

  return result;
}

uint64_t (*static SIMD<>._vjpDivide(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a3;
  v62 = a7;
  v55 = a5;
  v56 = a6;
  v60 = a2;
  v54 = a1;
  v8 = *(a5 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = *(AssociatedTypeWitness - 8);
  v10 = *(v48 + 64);
  v11 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x2A1C7C4A8](v11);
  v49 = &v47 - v15;
  v16 = MEMORY[0x2A1C7C4A8](v14);
  v18 = &v47 - v17;
  v50 = *(a4 - 8);
  v19 = *(v50 + 64);
  v20 = MEMORY[0x2A1C7C4A8](v16);
  v53 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x2A1C7C4A8](v20);
  v51 = &v47 - v23;
  v52 = v24;
  MEMORY[0x2A1C7C4A8](v22);
  v26 = &v47 - v25;
  dispatch thunk of SIMDStorage.init()();
  v27 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v27 < 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v58 = v18;
    v59 = v26;
    v28 = v49;
    if (v27)
    {
      v29 = 0;
      v30 = (v48 + 8);
      v57 = v27;
      do
      {
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        v31 = *(v62 + 16);
        dispatch thunk of static FloatingPoint./ infix(_:_:)();
        v32 = *v30;
        (*v30)(v13, AssociatedTypeWitness);
        v32(v28, AssociatedTypeWitness);
        dispatch thunk of SIMDStorage.subscript.setter();
        ++v29;
      }

      while (v57 != v29);
    }

    v33 = v50;
    v34 = a4;
    v35 = *(v50 + 32);
    v35(v54, v59, a4);
    v36 = *(v33 + 16);
    v37 = v51;
    v36(v51, v61, v34);
    v38 = v53;
    v36(v53, v60, v34);
    v39 = *(v33 + 80);
    v40 = (v39 + 48) & ~v39;
    v41 = (v52 + v39 + v40) & ~v39;
    v42 = swift_allocObject();
    v43 = v55;
    v44 = v56;
    v42[2] = v34;
    v42[3] = v43;
    v45 = v62;
    v42[4] = v44;
    v42[5] = v45;
    v35(v42 + v40, v37, v34);
    v35(v42 + v41, v38, v34);
    return partial apply for closure #1 in static SIMD<>._vjpDivide(lhs:rhs:);
  }

  return result;
}

uint64_t closure #1 in static SIMD<>._vjpDivide(lhs:rhs:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v129 = a5;
  v131 = a4;
  v132 = a2;
  v133 = a3;
  v11 = *(a7 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v145 = *(AssociatedTypeWitness - 8);
  v13 = v145[8];
  v14 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v126 = v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x2A1C7C4A8](v14);
  v18 = v114 - v17;
  v19 = MEMORY[0x2A1C7C4A8](v16);
  v144 = v114 - v20;
  v21 = MEMORY[0x2A1C7C4A8](v19);
  v118 = v114 - v22;
  MEMORY[0x2A1C7C4A8](v21);
  v119 = v114 - v23;
  v141 = *(a9 + 16);
  v142 = *(*(v141 + 16) + 8);
  v116 = *(v142 + 16);
  v25 = v24;
  v115 = swift_getAssociatedTypeWitness();
  v26 = *(*(v115 - 8) + 64);
  v27 = MEMORY[0x2A1C7C4A8](v115);
  v114[1] = v114 - v28;
  v127 = *(a6 - 8);
  v29 = v127[8];
  v30 = MEMORY[0x2A1C7C4A8](v27);
  v139 = v114 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x2A1C7C4A8](v30);
  v137 = v114 - v33;
  v34 = MEMORY[0x2A1C7C4A8](v32);
  v120 = v114 - v35;
  v36 = MEMORY[0x2A1C7C4A8](v34);
  v135 = v114 - v37;
  v38 = MEMORY[0x2A1C7C4A8](v36);
  v40 = v114 - v39;
  v41 = MEMORY[0x2A1C7C4A8](v38);
  v134 = v114 - v42;
  v43 = MEMORY[0x2A1C7C4A8](v41);
  v138 = v114 - v44;
  v45 = MEMORY[0x2A1C7C4A8](v43);
  v121 = v114 - v46;
  MEMORY[0x2A1C7C4A8](v45);
  v48 = v114 - v47;
  dispatch thunk of SIMDStorage.init()();
  v49 = v48;
  v50 = a6;
  v51 = v11;
  v52 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v52 < 0)
  {
    goto LABEL_26;
  }

  v117 = v40;
  v125 = a1;
  v140 = v49;
  v53 = v126;
  v54 = v50;
  v130 = v25;
  if (v52)
  {
    v55 = v144;
    v56 = 0;
    v128 = (v145 + 1);
    v136 = v52;
    do
    {
      v143 = v56 + 1;
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of SIMDStorage.subscript.getter();
      v57 = v130;
      dispatch thunk of static FloatingPoint./ infix(_:_:)();
      v58 = v51;
      v59 = v55;
      v60 = *v128;
      (*v128)(v53, v57);
      v60(v18, v57);
      v55 = v59;
      v51 = v58;
      dispatch thunk of SIMDStorage.subscript.setter();
      v56 = v143;
    }

    while (v136 != v143);
  }

  v122 = v18;
  v61 = v127[4];
  v124 = v127 + 4;
  v123 = v61;
  v61(v125, v140, v54);
  v62 = v130;
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  v63 = v119;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v64 = v145[2];
  v64(v118, v63, v62);
  dispatch thunk of SIMDStorage.init()();
  v125 = v54;
  v136 = v51;
  v65 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v65 < 0)
  {
    goto LABEL_26;
  }

  v66 = v65;
  v67 = v125;
  v68 = v118;
  v69 = v117;
  v70 = v144;
  if (v65)
  {
    v71 = 0;
    do
    {
      v64(v70, v68, v62);
      dispatch thunk of SIMDStorage.subscript.setter();
      ++v71;
    }

    while (v66 != v71);
  }

  v73 = v145 + 1;
  v72 = v145[1];
  v72(v68, v62);
  v123(v134, v69, v67);
  dispatch thunk of SIMDStorage.init()();
  v74 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v74 < 0)
  {
    goto LABEL_26;
  }

  v75 = v74;
  v72(v119, v62);
  v145 = v73;
  v76 = v142;
  v143 = v72;
  v78 = v125;
  v77 = v126;
  v79 = v122;
  v80 = v136;
  v81 = v134;
  v82 = v62;
  if (v75)
  {
    v83 = 0;
    v128 = v75;
    v84 = v143;
    do
    {
      v140 = v83 + 1;
      v85 = v79;
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of SIMDStorage.subscript.getter();
      v86 = *(v76 + 8);
      dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
      (v84)(v77, v82);
      (v84)(v85, v82);
      dispatch thunk of SIMDStorage.subscript.setter();
      v79 = v85;
      v81 = v134;
      v83 = v140;
    }

    while (v128 != v140);
  }

  v87 = v127[1];
  ++v127;
  v134 = v87;
  (v87)(v81, v78);
  v123(v138, v135, v78);
  dispatch thunk of SIMDStorage.init()();
  v88 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v88 < 0)
  {
    goto LABEL_26;
  }

  v90 = v125;
  v89 = v126;
  v91 = v122;
  v92 = v82;
  if (v88)
  {
    v93 = 0;
    v135 = v88;
    do
    {
      v140 = v93 + 1;
      v94 = v91;
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of static Numeric.* infix(_:_:)();
      v95 = v80;
      v96 = v143;
      (v143)(v89, v92);
      (v96)(v94, v92);
      v80 = v95;
      dispatch thunk of SIMDStorage.subscript.setter();
      v91 = v94;
      v93 = v140;
    }

    while (v135 != v140);
  }

  v123(v120, v137, v90);
  dispatch thunk of SIMDStorage.init()();
  v97 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v97 < 0)
  {
    goto LABEL_26;
  }

  v98 = v80;
  v99 = v125;
  v100 = v126;
  v101 = v122;
  v102 = v120;
  if (v97)
  {
    v103 = 0;
    v137 = v97;
    do
    {
      v140 = v103 + 1;
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of SIMDStorage.subscript.getter();
      dispatch thunk of static FloatingPoint./ infix(_:_:)();
      v104 = v143;
      (v143)(v100, v92);
      (v104)(v101, v92);
      dispatch thunk of SIMDStorage.subscript.setter();
      v103 = v140;
    }

    while (v137 != v140);
  }

  v105 = v134;
  (v134)(v102, v99);
  v105(v138, v99);
  v123(v121, v139, v99);
  dispatch thunk of SIMDStorage.init()();
  v106 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v106 < 0)
  {
LABEL_26:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v107 = v121;
    if (v106)
    {
      v108 = 0;
      v140 = v106;
      do
      {
        v141 = v108 + 1;
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of static Numeric.* infix(_:_:)();
        v109 = v100;
        v110 = v100;
        v111 = v98;
        v112 = v143;
        (v143)(v109, v92);
        (v112)(v101, v92);
        v98 = v111;
        v100 = v110;
        dispatch thunk of SIMDStorage.subscript.setter();
        v108 = v141;
      }

      while (v140 != v141);
    }

    return (v134)(v107, v99);
  }

  return result;
}

uint64_t (*static SIMD<>._jvpDivide(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))(uint64_t a1, uint64_t a2)
{
  v61 = a3;
  v62 = a7;
  v55 = a5;
  v56 = a6;
  v60 = a2;
  v54 = a1;
  v8 = *(a5 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = *(AssociatedTypeWitness - 8);
  v10 = *(v48 + 64);
  v11 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x2A1C7C4A8](v11);
  v49 = &v47 - v15;
  v16 = MEMORY[0x2A1C7C4A8](v14);
  v18 = &v47 - v17;
  v50 = *(a4 - 8);
  v19 = *(v50 + 64);
  v20 = MEMORY[0x2A1C7C4A8](v16);
  v53 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x2A1C7C4A8](v20);
  v51 = &v47 - v23;
  v52 = v24;
  MEMORY[0x2A1C7C4A8](v22);
  v26 = &v47 - v25;
  dispatch thunk of SIMDStorage.init()();
  v27 = dispatch thunk of SIMDStorage.scalarCount.getter();
  if (v27 < 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v58 = v18;
    v59 = v26;
    v28 = v49;
    if (v27)
    {
      v29 = 0;
      v30 = (v48 + 8);
      v57 = v27;
      do
      {
        dispatch thunk of SIMDStorage.subscript.getter();
        dispatch thunk of SIMDStorage.subscript.getter();
        v31 = *(v62 + 16);
        dispatch thunk of static FloatingPoint./ infix(_:_:)();
        v32 = *v30;
        (*v30)(v13, AssociatedTypeWitness);
        v32(v28, AssociatedTypeWitness);
        dispatch thunk of SIMDStorage.subscript.setter();
        ++v29;
      }

      while (v57 != v29);
    }

    v33 = v50;
    v34 = a4;
    v35 = *(v50 + 32);
    v35(v54, v59, a4);
    v36 = *(v33 + 16);
    v37 = v51;
    v36(v51, v61, v34);
    v38 = v53;
    v36(v53, v60, v34);
    v39 = *(v33 + 80);
    v40 = (v39 + 48) & ~v39;
    v41 = (v52 + v39 + v40) & ~v39;
    v42 = swift_allocObject();
    v43 = v55;
    v44 = v56;
    v42[2] = v34;
    v42[3] = v43;
    v45 = v62;
    v42[4] = v44;
    v42[5] = v45;
    v35(v42 + v40, v37, v34);
    v35(v42 + v41, v38, v34);
    return partial apply for closure #1 in static SIMD<>._jvpDivide(lhs:rhs:);
  }

  return result;
}