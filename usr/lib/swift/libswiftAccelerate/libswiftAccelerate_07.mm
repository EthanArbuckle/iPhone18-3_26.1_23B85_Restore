void (**closure #1 in closure #1 in closure #1 in Quadrature.integrate(over:integrand:)(void (**result)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t *a3, void *a4))(uint64_t *__return_ptr, uint64_t *)
{
  if (result)
  {
    v4 = a2;
    if (a2 < 0)
    {
      __break(1u);
    }

    else if (a2)
    {
      v7 = *result;

      do
      {
        v8 = *a3++;
        v10 = v8;
        v7(&v9, &v10);
        *a4++ = v9;
        --v4;
      }

      while (v4);
    }
  }

  return result;
}

void static Quadrature.Integrator.nonAdaptive.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
}

void *static Quadrature.Integrator.adaptive(pointsPerInterval:maxIntervals:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  return result;
}

uint64_t static Quadrature.Integrator.adaptiveWithSingularities(maxIntervals:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return result;
}

unint64_t Quadrature.Error.errorDescription.getter()
{
  v1 = *v0;
  v2 = 0x20636972656E6547;
  v3 = 0xD00000000000003FLL;
  v4 = 0xD000000000000071;
  if (v1 == 3)
  {
    v4 = 0xD000000000000060;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

Swift::Int Quadrature.Error.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B8CB1810](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type Quadrature.Error and conformance Quadrature.Error()
{
  result = lazy protocol witness table cache variable for type Quadrature.Error and conformance Quadrature.Error;
  if (!lazy protocol witness table cache variable for type Quadrature.Error and conformance Quadrature.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Quadrature.Error and conformance Quadrature.Error);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Quadrature.Integrator(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Quadrature.Integrator(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for Quadrature.Integrator(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t destructiveInjectEnumTag for Quadrature.Integrator(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t static vDSP.evaluatePolynomial<A>(usingCoefficients:withVariables:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return static vDSP.evaluatePolynomial<A>(usingCoefficients:withVariables:)(a1, a2, a3, a4, partial apply for closure #1 in static vDSP.evaluatePolynomial<A>(usingCoefficients:withVariables:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5);
}

{
  return static vDSP.evaluatePolynomial<A>(usingCoefficients:withVariables:)(a1, a2, a3, a4, partial apply for closure #1 in static vDSP.evaluatePolynomial<A>(usingCoefficients:withVariables:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5);
}

uint64_t partial apply for closure #1 in static vDSP.evaluatePolynomial<A>(usingCoefficients:withVariables:)(uint64_t a1, uint64_t *a2)
{
  return closure #1 in static vDSP.evaluatePolynomial<A>(usingCoefficients:withVariables:)(a1, a2, v2[4], v2[5], v2[2], v2[3], &_sSrySfGMd, &_sSrySfGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, static vDSP.evaluatePolynomial<A, B>(usingCoefficients:withVariables:result:));
}

{
  return closure #1 in static vDSP.evaluatePolynomial<A>(usingCoefficients:withVariables:)(a1, a2, v2[4], v2[5], v2[2], v2[3], &_sSrySdGMd, &_sSrySdGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, static vDSP.evaluatePolynomial<A, B>(usingCoefficients:withVariables:result:));
}

uint64_t static vDSP.evaluatePolynomial<A, B>(usingCoefficients:withVariables:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  return static vDSP.evaluatePolynomial<A, B>(usingCoefficients:withVariables:result:)(a1, a2, a3, a4, a5, a6, a7, partial apply for closure #1 in static vDSP.evaluatePolynomial<A, B>(usingCoefficients:withVariables:result:));
}

{
  return static vDSP.evaluatePolynomial<A, B>(usingCoefficients:withVariables:result:)(a1, a2, a3, a4, a5, a6, a7, partial apply for closure #1 in static vDSP.evaluatePolynomial<A, B>(usingCoefficients:withVariables:result:));
}

uint64_t static vDSP.evaluatePolynomial<A>(usingCoefficients:withVariables:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, void *))
{
  v12 = (*(a4 + 16))(a3, a4);
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a1;
  v14[5] = a2;
  return a6(v12, a5, v14);
}

uint64_t closure #1 in static vDSP.evaluatePolynomial<A>(usingCoefficients:withVariables:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, unint64_t *a9, void (*a10)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a7);
  v17 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(a9, a7);
  a10(a3, a4, a1, a5, v16, a6, v17);
  result = (*(a6 + 16))(a5, a6);
  *a2 = result;
  return result;
}

uint64_t static vDSP.evaluatePolynomial<A, B>(usingCoefficients:withVariables:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = (*(a6 + 16))(a4, a6);
  result = (*(*(a7 + 8) + 16))(a5);
  if (result >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = result;
  }

  if (v14 < 0)
  {
    __break(1u);
  }

  else if (*(a1 + 16))
  {
    MEMORY[0x1EEE9AC00](result);
    return (*(a7 + 16))(a8);
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in static vDSP.evaluatePolynomial<A, B>(usingCoefficients:withVariables:result:)(uint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t))
{
  if (result)
  {
    if (*a4)
    {
      return a7(a3 + 32, 1, result, 1, *a4, 1, a5, a6);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in static vDSP.evaluatePolynomial<A, B>(usingCoefficients:withVariables:result:)(uint64_t a1)
{
  return partial apply for closure #1 in static vDSP.evaluatePolynomial<A, B>(usingCoefficients:withVariables:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.evaluatePolynomial<A, B>(usingCoefficients:withVariables:result:));
}

{
  return partial apply for closure #1 in static vDSP.evaluatePolynomial<A, B>(usingCoefficients:withVariables:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.evaluatePolynomial<A, B>(usingCoefficients:withVariables:result:));
}

uint64_t partial apply for closure #1 in static vDSP.evaluatePolynomial<A, B>(usingCoefficients:withVariables:result:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  v6[2] = *(v2 + 56);
  v6[3] = a1;
  v7 = *(v2 + 64);
  return (*(v4 + 24))(a2, v6, MEMORY[0x1E69E7CA8] + 8, v3);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.evaluatePolynomial<A, B>(usingCoefficients:withVariables:result:)(uint64_t a1, uint64_t a2)
{
  return closure #1 in closure #1 in static vDSP.evaluatePolynomial<A, B>(usingCoefficients:withVariables:result:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), MEMORY[0x1E69590B8]);
}

{
  return closure #1 in closure #1 in static vDSP.evaluatePolynomial<A, B>(usingCoefficients:withVariables:result:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), MEMORY[0x1E69590B0]);
}

__n128 BNNS.FusedConvolutionParameters.init(type:weights:bias:stride:dilationStride:groupSize:padding:)@<Q0>(char *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v16 = *a1;
  v17 = *(a10 + 32);
  _sSo21BNNSNDArrayDescriptoraSgWOi0_(v39);
  v18 = a2[5];
  *&v40[71] = a2[4];
  v19 = a2[2];
  *&v40[55] = a2[3];
  v20 = a2[6];
  *&v40[119] = a2[7];
  v21 = a2[9];
  *&v40[135] = a2[8];
  *&v40[151] = v21;
  *&v40[167] = a2[10];
  *&v40[87] = v18;
  *&v40[103] = v20;
  v22 = a2[1];
  *&v40[7] = *a2;
  *&v40[23] = v22;
  *&v40[39] = v19;
  v23 = *&v40[144];
  *(a9 + 129) = *&v40[128];
  *(a9 + 145) = v23;
  *(a9 + 161) = *&v40[160];
  v24 = *&v40[80];
  *(a9 + 65) = *&v40[64];
  *(a9 + 81) = v24;
  v25 = *&v40[112];
  *(a9 + 97) = *&v40[96];
  *(a9 + 113) = v25;
  v26 = *&v40[16];
  *(a9 + 1) = *v40;
  *(a9 + 17) = v26;
  v27 = *&v40[48];
  *(a9 + 33) = *&v40[32];
  *(a9 + 49) = v27;
  v28 = *(a3 + 128);
  v29 = *(a3 + 160);
  *(a9 + 328) = *(a3 + 144);
  *(a9 + 344) = v29;
  v30 = *(a3 + 80);
  *(a9 + 248) = *(a3 + 64);
  v31 = *(a3 + 96);
  v32 = *(a3 + 112);
  *(a9 + 264) = v30;
  *(a9 + 280) = v31;
  *a9 = v16;
  *(a9 + 176) = *&v40[175];
  *(a9 + 360) = *(a3 + 176);
  *(a9 + 296) = v32;
  *(a9 + 312) = v28;
  v33 = *(a3 + 16);
  *(a9 + 184) = *a3;
  *(a9 + 200) = v33;
  v34 = *(a3 + 48);
  *(a9 + 216) = *(a3 + 32);
  *(a9 + 232) = v34;
  *(a9 + 368) = a4;
  *(a9 + 376) = a5;
  *(a9 + 384) = a6;
  *(a9 + 392) = a7;
  *(a9 + 400) = a8;
  result = *a10;
  v36 = *(a10 + 16);
  *(a9 + 408) = *a10;
  *(a9 + 424) = v36;
  *(a9 + 440) = v17;
  return result;
}

__n128 BNNS.FusedConvolutionParameters.weights.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  v3 = *(v1 + 152);
  *(a1 + 128) = *(v1 + 136);
  *(a1 + 144) = v3;
  *(a1 + 160) = *(v1 + 168);
  v4 = *(v1 + 56);
  v5 = *(v1 + 88);
  *(a1 + 64) = *(v1 + 72);
  *(a1 + 80) = v5;
  *(a1 + 96) = *(v1 + 104);
  *(a1 + 112) = v2;
  v6 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = v6;
  result = *(v1 + 40);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

__n128 BNNS.FusedConvolutionParameters.weights.setter(uint64_t a1)
{
  v2 = *(a1 + 96);
  *(v1 + 120) = *(a1 + 112);
  v3 = *(a1 + 144);
  *(v1 + 136) = *(a1 + 128);
  *(v1 + 152) = v3;
  *(v1 + 168) = *(a1 + 160);
  v4 = *(a1 + 32);
  *(v1 + 56) = *(a1 + 48);
  v5 = *(a1 + 80);
  *(v1 + 72) = *(a1 + 64);
  *(v1 + 88) = v5;
  *(v1 + 104) = v2;
  result = *a1;
  v7 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v7;
  *(v1 + 40) = v4;
  return result;
}

__n128 BNNS.FusedConvolutionParameters.bias.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 248);
  v3 = *(v1 + 200);
  *a1 = *(v1 + 184);
  *(a1 + 16) = v3;
  v4 = *(v1 + 232);
  *(a1 + 32) = *(v1 + 216);
  *(a1 + 48) = v4;
  v5 = *(v1 + 328);
  v6 = *(v1 + 344);
  v7 = *(v1 + 296);
  *(a1 + 128) = *(v1 + 312);
  *(a1 + 144) = v5;
  *(a1 + 160) = v6;
  v8 = *(v1 + 264);
  v9 = *(v1 + 280);
  *(a1 + 64) = result;
  *(a1 + 80) = v8;
  *(a1 + 176) = *(v1 + 360);
  *(a1 + 96) = v9;
  *(a1 + 112) = v7;
  return result;
}

__n128 BNNS.FusedConvolutionParameters.bias.setter(uint64_t a1)
{
  v2 = *(a1 + 128);
  v3 = *(a1 + 160);
  *(v1 + 328) = *(a1 + 144);
  *(v1 + 344) = v3;
  v4 = *(a1 + 80);
  *(v1 + 248) = *(a1 + 64);
  v5 = *(a1 + 96);
  v6 = *(a1 + 112);
  *(v1 + 264) = v4;
  *(v1 + 280) = v5;
  *(v1 + 296) = v6;
  *(v1 + 312) = v2;
  v7 = *(a1 + 16);
  *(v1 + 184) = *a1;
  *(v1 + 200) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  *(v1 + 216) = result;
  *(v1 + 360) = *(a1 + 176);
  *(v1 + 232) = v9;
  return result;
}

uint64_t BNNS.FusedConvolutionParameters.stride.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 368) = result;
  *(v2 + 376) = a2;
  return result;
}

uint64_t BNNS.FusedConvolutionParameters.dilationStride.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 384) = result;
  *(v2 + 392) = a2;
  return result;
}

__n128 BNNS.FusedConvolutionParameters.padding.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 440);
  result = *(v1 + 408);
  v4 = *(v1 + 424);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 BNNS.FusedConvolutionParameters.padding.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 408) = *a1;
  *(v1 + 424) = v4;
  *(v1 + 440) = v2;
  return result;
}

__n128 protocol witness for FusableLayerParametersWrapper.layerParameters(input:output:) in conformance BNNS.FusedConvolutionParameters@<Q0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(v3 + 120);
  v8 = *(v3 + 152);
  v70 = *(v3 + 136);
  v71 = v8;
  v72 = *(v3 + 168);
  v9 = *(v3 + 56);
  v10 = *(v3 + 88);
  v66 = *(v3 + 72);
  v67 = v10;
  v68 = *(v3 + 104);
  v69 = v7;
  v11 = *(v3 + 24);
  v62 = *(v3 + 8);
  v63 = v11;
  v64 = *(v3 + 40);
  v65 = v9;
  if (*(v3 + 440) == 1)
  {
    v35 = *(v3 + 424);
    v36 = *(v3 + 408);
    v37 = 0u;
  }

  else
  {
    v36 = 0u;
    v37 = *(v3 + 408);
    v35 = 0u;
  }

  v33 = *(v3 + 384);
  v34 = *(v3 + 368);
  v12 = *(v3 + 400);
  v13 = *(v3 + 328);
  v58 = *(v3 + 312);
  v59 = v13;
  v60 = *(v3 + 344);
  v61 = *(v3 + 360);
  v14 = *(v3 + 248);
  v55 = *(v3 + 264);
  v15 = *(v3 + 296);
  v56 = *(v3 + 280);
  v57 = v15;
  v16 = *(v3 + 200);
  v50 = *(v3 + 184);
  v51 = v16;
  v17 = *(v3 + 232);
  v52 = *(v3 + 216);
  v53 = v17;
  v54 = v14;
  if (_sSo21BNNSNDArrayDescriptoraSgWOg(&v50) == 1)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
  }

  else
  {
    v47 = v58;
    v48 = v59;
    v49 = v60;
    v43 = v54;
    v44 = v55;
    v45 = v56;
    v46 = v57;
    v39 = v50;
    v40 = v51;
    v41 = v52;
    v42 = v53;
  }

  v18 = a1[9];
  __src[8] = a1[8];
  __src[9] = v18;
  v19 = a1[10];
  v20 = a1[5];
  __src[4] = a1[4];
  __src[5] = v20;
  v21 = a1[7];
  __src[6] = a1[6];
  __src[7] = v21;
  v22 = a1[1];
  __src[0] = *a1;
  __src[1] = v22;
  v23 = a1[3];
  __src[2] = a1[2];
  __src[3] = v23;
  __src[18] = v69;
  __src[19] = v70;
  __src[20] = v71;
  __src[21] = v72;
  __src[14] = v65;
  __src[15] = v66;
  __src[16] = v67;
  __src[17] = v68;
  __src[10] = v19;
  __src[11] = v62;
  __src[12] = v63;
  __src[13] = v64;
  v24 = a2[9];
  __src[30] = a2[8];
  __src[31] = v24;
  v25 = a2[5];
  __src[26] = a2[4];
  __src[27] = v25;
  v26 = a2[7];
  __src[28] = a2[6];
  __src[29] = v26;
  v27 = a2[1];
  __src[22] = *a2;
  __src[23] = v27;
  v28 = a2[3];
  __src[24] = a2[2];
  __src[25] = v28;
  __src[40] = v46;
  __src[41] = v47;
  __src[42] = v48;
  __src[43] = v49;
  __src[36] = v42;
  __src[37] = v43;
  v29 = a2[10];
  __src[38] = v44;
  __src[39] = v45;
  __src[32] = v29;
  __src[33] = v39;
  __src[34] = v40;
  __src[35] = v41;
  type metadata accessor for BNNSLayerParametersConvolution(0);
  a3[3] = v30;
  a3[4] = &protocol witness table for BNNSLayerParametersConvolution;
  v31 = swift_allocObject();
  *a3 = v31;
  memcpy((v31 + 16), __src, 0x2C0uLL);
  *(v31 + 720) = 0x7FC0000000000000;
  *(v31 + 728) = 0x17FC00000;
  *(v31 + 736) = 0u;
  *(v31 + 752) = 0u;
  *(v31 + 768) = v34;
  *(v31 + 784) = v33;
  *(v31 + 800) = v37;
  *(v31 + 816) = v12;
  result = v36;
  *(v31 + 824) = v36;
  *(v31 + 840) = v35;
  return result;
}

uint64_t protocol witness for FusableLayerParametersWrapper.filterType.getter in conformance BNNS.FusedConvolutionParameters()
{
  if (*v0)
  {
    return 6;
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for BNNS.FusedConvolutionParameters(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[441])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for BNNS.FusedConvolutionParameters(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 440) = 0;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 441) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 441) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

Swift::Int vDSP.Radix.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B8CB1810](v1);
  return Hasher._finalize()();
}

uint64_t vDSP.FFT.init(log2n:radix:ofType:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v5 = *a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = (*(AssociatedConformanceWitness + 16))(a1, &v10, AssociatedTypeWitness, AssociatedConformanceWitness);
  if (v8)
  {
    *(v3 + 32) = v8;
  }

  else
  {
    type metadata accessor for vDSP.FFT();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v3;
}

uint64_t vDSP.FFT.transform<A>(input:output:direction:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a3;
  v10 = *(v8 + 32);
  v11 = *(v8 + 16);
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = v10;
  v13[5] = v11;
  v13[6] = a2;
  v14 = v9;
  return _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static vDSP_FFTFunctions.fftTransform<A>(fftSetup:log2n:source:destination:direction:), v13, a4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], a8);
}

uint64_t static vDSP_FFTFunctions.fftTransform<A>(fftSetup:log2n:source:destination:direction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a5;
  v10[2] = a6;
  v10[3] = a7;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = a4;
  v11 = v8;
  return _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a3, partial apply for closure #1 in static vDSP_FFTFunctions.fftTransform<A>(fftSetup:log2n:source:destination:direction:), v10, a6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], a8);
}

uint64_t vDSP.FFT.forward(input:output:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v10[0] = a1;
  v10[1] = a2;
  v9 = a4;
  v6 = *(*v4 + 128);
  type metadata accessor for DSPSplitComplex(0);
  return v6(v10, a3, &v9, v7, &protocol witness table for DSPSplitComplex);
}

uint64_t vDSP.FFT.deinit()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(v0 + 32);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 40))(v2, AssociatedTypeWitness, AssociatedConformanceWitness);
  return v0;
}

uint64_t vDSP.FFT.__deallocating_deinit()
{
  vDSP.FFT.deinit();

  return swift_deallocClassInstance();
}

void vDSP.FFT2D.init(width:height:ofType:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  if ((a1 * a2) >> 64 != (a1 * a2) >> 63)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = log2f((a1 * a2));
  if ((LODWORD(v3) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 < 1.8447e19)
  {
    v4 = 0;
    vDSP.FFT.init(log2n:radix:ofType:)(v3, &v4);
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t vDSP.FFT2D.transform<A>(input:output:direction:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a3;
  v10 = *(v8 + 32);
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = v10;
  v13 = *(v8 + 40);
  v14 = a2;
  v15 = v9;
  return _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static vDSP_FFTFunctions.fftTransform2D<A>(fftSetup:width:height:source:destination:direction:), v12, a4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], a8);
}

uint64_t static vDSP_FFTFunctions.fftTransform2D<A>(fftSetup:width:height:source:destination:direction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8)
{
  v8 = *a6;
  v10[2] = a7;
  v10[3] = a8;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = a3;
  v10[7] = a5;
  v11 = v8;
  return _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a4, partial apply for closure #1 in static vDSP_FFTFunctions.fftTransform2D<A>(fftSetup:width:height:source:destination:direction:), v10, a7, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], a8);
}

uint64_t vDSP.FFT2D.__deallocating_deinit()
{
  vDSP.FFT.deinit();

  return swift_deallocClassInstance();
}

void static vDSP_SplitComplexFloat.transform(fftSetup:log2n:source:destination:direction:)(OpaqueFFTSetup *a1, vDSP_Length __Log2N, DSPSplitComplex *__A, const DSPSplitComplex *a4, _BYTE *a5)
{
  if (*a5)
  {
    v5 = -1;
  }

  else
  {
    v5 = 1;
  }

  vDSP_fft_zrop(a1, __A, 1, a4, 1, __Log2N, v5);
}

void protocol witness for static vDSP_FourierTransformFunctions.transform(fftSetup:log2n:source:destination:direction:) in conformance vDSP_SplitComplexFloat(OpaqueFFTSetup *a1, vDSP_Length __Log2N, DSPSplitComplex *__A, const DSPSplitComplex *a4, _BYTE *a5)
{
  if (*a5)
  {
    v5 = -1;
  }

  else
  {
    v5 = 1;
  }

  vDSP_fft_zrop(a1, __A, 1, a4, 1, __Log2N, v5);
}

void static vDSP_SplitComplexDouble.transform(fftSetup:log2n:source:destination:direction:)(OpaqueFFTSetupD *a1, vDSP_Length __Log2N, DSPDoubleSplitComplex *__A, const DSPDoubleSplitComplex *a4, _BYTE *a5)
{
  if (*a5)
  {
    v5 = -1;
  }

  else
  {
    v5 = 1;
  }

  vDSP_fft_zropD(a1, __A, 1, a4, 1, __Log2N, v5);
}

void protocol witness for static vDSP_FourierTransformFunctions.transform(fftSetup:log2n:source:destination:direction:) in conformance vDSP_SplitComplexDouble(OpaqueFFTSetupD *a1, vDSP_Length __Log2N, DSPDoubleSplitComplex *__A, const DSPDoubleSplitComplex *a4, _BYTE *a5)
{
  if (*a5)
  {
    v5 = -1;
  }

  else
  {
    v5 = 1;
  }

  vDSP_fft_zropD(a1, __A, 1, a4, 1, __Log2N, v5);
}

uint64_t closure #1 in static vDSP_FFTFunctions.fftTransform<A>(fftSetup:log2n:source:destination:direction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = a5 & 1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 24))(a2, a3, a1, a4, &v13, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t closure #1 in static vDSP_FFTFunctions.fftTransform2D<A>(fftSetup:width:height:source:destination:direction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = a6 & 1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 32))(a2, a3, a4, a1, a5, &v15, AssociatedTypeWitness, AssociatedConformanceWitness);
}

float *DSPSplitComplex.init(fromInputArray:realParts:imaginaryParts:)(uint64_t a1, char **a2, char **a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2), 0, v6);
  }

  *a2 = v6;
  v7 = *a3;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2), 0, v7);
  }

  *a3 = v7;

  v10.realp = (v6 + 32);
  v10.imagp = (v7 + 32);
  v8 = *(a1 + 16);
  if (v8 >> 61)
  {
    __break(1u);
  }

  closure #1 in DSPSplitComplex.init(fromInputArray:realParts:imaginaryParts:)((a1 + 32), a1 + 32 + 4 * v8, &v10, a1);

  return v10.realp;
}

char *closure #1 in DSPSplitComplex.init(fromInputArray:realParts:imaginaryParts:)(char *a1, uint64_t a2, const DSPSplitComplex *a3, uint64_t a4)
{
  if (!a1 || (v4 = a2 - a1, (a2 - a1 + 7) < 0xF))
  {
    v5 = MEMORY[0x1E69E7CC0];
LABEL_7:
    vDSP_ctoz(v5 + 4, 2, a3, 1, *(a4 + 16) >> 1);
  }

  if (v4 < 0)
  {
    v4 = a2 - a1 + 7;
  }

  v6 = v4 >> 3;
  v8 = a3;
  v9 = a4;
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo10DSPComplexV_Tt1g5(v4 >> 3, 0);
  result = specialized UnsafeBufferPointer._copyContents(initializing:)(&v5[4], v6, a1, v6);
  a4 = v9;
  v12 = v11;
  a3 = v8;
  if (v12 == v6)
  {
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

double *DSPDoubleSplitComplex.init(fromInputArray:realParts:imaginaryParts:)(uint64_t a1, char **a2, char **a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2), 0, v6);
  }

  *a2 = v6;
  v7 = *a3;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2), 0, v7);
  }

  *a3 = v7;

  v10.realp = (v6 + 32);
  v10.imagp = (v7 + 32);
  v8 = *(a1 + 16);
  if (v8 >> 60)
  {
    __break(1u);
  }

  closure #1 in DSPDoubleSplitComplex.init(fromInputArray:realParts:imaginaryParts:)((a1 + 32), a1 + 32 + 8 * v8, &v10, a1);

  return v10.realp;
}

char *closure #1 in DSPDoubleSplitComplex.init(fromInputArray:realParts:imaginaryParts:)(char *a1, uint64_t a2, const DSPDoubleSplitComplex *a3, uint64_t a4)
{
  if (!a1 || (v4 = a2 - a1, (a2 - a1 + 15) < 0x1F))
  {
    v5 = MEMORY[0x1E69E7CC0];
LABEL_7:
    vDSP_ctozD(v5 + 2, 2, a3, 1, *(a4 + 16) >> 1);
  }

  if (v4 < 0)
  {
    v4 = a2 - a1 + 15;
  }

  v6 = v4 >> 4;
  v8 = a3;
  v9 = a4;
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo16DSPDoubleComplexV_Tt1g5(v4 >> 4, 0);
  result = specialized UnsafeBufferPointer._copyContents(initializing:)(&v5[2], v6, a1, v6);
  a4 = v9;
  v12 = v11;
  a3 = v8;
  if (v12 == v6)
  {
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t Array<A>.init(fromSplitComplex:scale:count:)(float *a1, float *a2, int64_t a3, float a4)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a3 < -1)
  {
    __break(1u);
  }

  v8 = a3 / 2;
  if (a3 < 2)
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    type metadata accessor for DSPComplex(0);
    v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v9 + 16) = v8;
  }

  __Z.realp = a1;
  __Z.imagp = a2;
  vDSP_ztoc(&__Z, 1, (v9 + 32), 2, v8);
  *(v9 + 16) = v8;
  v10 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1g5056_sSa10AccelerateSfRszlE16fromSplitComplex5scale5countSayi17GSo08DSPSplitD0V_i10SitcfcySryI13Gz_SiztXEfU0_SaySo10DSPComplexVGSfSiTf1nc_nTf4ngnn_n(a3, v9, a3, a4);

  return v10;
}

uint64_t Array<A>.init(fromSplitComplex:scale:count:)(double *a1, double *a2, int64_t a3, double a4)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a3 < -1)
  {
    __break(1u);
  }

  v8 = a3 / 2;
  if (a3 < 2)
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    type metadata accessor for DSPDoubleComplex(0);
    v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v9 + 16) = v8;
  }

  __Z.realp = a1;
  __Z.imagp = a2;
  vDSP_ztocD(&__Z, 1, (v9 + 32), 2, v8);
  *(v9 + 16) = v8;
  v10 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1g5056_sSa10AccelerateSdRszlE16fromSplitComplex5scale5countSayi19GSo09DSPDoublecD0V_i10SitcfcySryI13Gz_SiztXEfU0_SaySo16DSPDoubleComplexVGSdSiTf1nc_nTf4ngnn_n(a3, v9, a3, a4);

  return v10;
}

void specialized static vDSP_SplitComplexFloat.transform2D(fftSetup:width:height:source:destination:direction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6, void (*a7)(uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t, void, unint64_t, unint64_t, int))
{
  v12 = *a6;
  v13 = log2f(a2);
  if ((LODWORD(v13) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v13 <= -1.0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v13 >= 1.8447e19)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = log2f(a3);
  if ((LODWORD(v14) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v14 <= -1.0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v14 >= 1.8447e19)
  {
LABEL_16:
    __break(1u);
    return;
  }

  if (v12)
  {
    v15 = -1;
  }

  else
  {
    v15 = 1;
  }

  a7(a1, a4, 1, 0, a5, 1, 0, v13, v14, v15);
}

uint64_t _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1g5056_sSa10AccelerateSfRszlE16fromSplitComplex5scale5countSayi17GSo08DSPSplitD0V_i10SitcfcySryI13Gz_SiztXEfU0_SaySo10DSPComplexVGSfSiTf1nc_nTf4ngnn_n(unint64_t a1, uint64_t a2, unint64_t a3, float a4)
{
  v11 = *MEMORY[0x1E69E9840];
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (a1)
  {
    v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v8 + 16) = a1;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  if (*(a2 + 16) >> 60)
  {
    goto LABEL_10;
  }

  v10 = a4;
  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  MEMORY[0x1B8CB3000](a2 + 32, 1, &v10, v8 + 32, 1, a3);
  if (a1 < a3)
  {
    goto LABEL_12;
  }

  *(v8 + 16) = a3;
  return v8;
}

uint64_t _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1g5056_sSa10AccelerateSdRszlE16fromSplitComplex5scale5countSayi19GSo09DSPDoublecD0V_i10SitcfcySryI13Gz_SiztXEfU0_SaySo16DSPDoubleComplexVGSdSiTf1nc_nTf4ngnn_n(vDSP_Length a1, uint64_t a2, vDSP_Length a3, double a4)
{
  v10[1] = *MEMORY[0x1E69E9840];
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (a1)
  {
    v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v8 + 16) = a1;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  if (*(a2 + 16) >> 59)
  {
    goto LABEL_10;
  }

  v10[0] = a4;
  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  vDSP_vsmulD((a2 + 32), 1, v10, (v8 + 32), 1, a3);
  if (a1 < a3)
  {
    goto LABEL_12;
  }

  *(v8 + 16) = a3;
  return v8;
}

unint64_t lazy protocol witness table accessor for type vDSP.Radix and conformance vDSP.Radix()
{
  result = lazy protocol witness table cache variable for type vDSP.Radix and conformance vDSP.Radix;
  if (!lazy protocol witness table cache variable for type vDSP.Radix and conformance vDSP.Radix)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type vDSP.Radix and conformance vDSP.Radix);
  }

  return result;
}

Swift::Int BNNS.RandomGeneratorMethod.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1B8CB1810](0);
  return Hasher._finalize()();
}

uint64_t BNNS.RandomGeneratorState.__deallocating_deinit()
{
  MEMORY[0x1B8CB2C50](*(v0 + 24), -1, -1);

  return swift_deallocClassInstance();
}

uint64_t BNNS.RandomGenerator.__allocating_init(method:seed:filterParameters:)(uint64_t a1, uint64_t a2, char a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = *MEMORY[0x1E69E9840];
  v13 = swift_allocObject();
  if ((a3 & 1) == 0)
  {
    if (a6 == 1)
    {
      v16 = a2;
      v15 = 0;
    }

    else
    {
      v18 = a4;
      v19 = a5;
      v20 = a6;
      v21 = a7;
      v15 = &v18;
      v16 = a2;
    }

    v14 = MEMORY[0x1B8CB1940](0, v16, v15);
    if (!v14)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  if (a6 != 1)
  {
    v18 = a4;
    v19 = a5;
    v20 = a6;
    v21 = a7;
    v14 = MEMORY[0x1B8CB1930](0, &v18);
    if (!v14)
    {
      goto LABEL_10;
    }

LABEL_12:
    *(v13 + 16) = v14;
    *(v13 + 24) = a2;
    *(v13 + 32) = a3 & 1;
    return v13;
  }

  v14 = MEMORY[0x1B8CB1930](0, 0);
  if (v14)
  {
    goto LABEL_12;
  }

LABEL_10:
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t BNNS.RandomGenerator.init(method:seed:filterParameters:)(uint64_t a1, uint64_t a2, char a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = *MEMORY[0x1E69E9840];
  if ((a3 & 1) == 0)
  {
    if (a6 == 1)
    {
      v11 = 0;
    }

    else
    {
      v13 = a4;
      v14 = a5;
      v15 = a6;
      v16 = a7;
      v11 = &v13;
    }

    v10 = MEMORY[0x1B8CB1940](0, a2, v11);
    if (!v10)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  if (a6 != 1)
  {
    v13 = a4;
    v14 = a5;
    v15 = a6;
    v16 = a7;
    v10 = MEMORY[0x1B8CB1930](0, &v13);
    if (!v10)
    {
      goto LABEL_10;
    }

LABEL_12:
    *(v7 + 16) = v10;
    *(v7 + 24) = a2;
    *(v7 + 32) = a3 & 1;
    return v7;
  }

  v10 = MEMORY[0x1B8CB1930](0, 0);
  if (v10)
  {
    goto LABEL_12;
  }

LABEL_10:
  type metadata accessor for BNNS.RandomGenerator();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t BNNS.RandomGenerator.__deallocating_deinit()
{
  MEMORY[0x1B8CB1980](*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t key path getter for BNNS.RandomGenerator.state : BNNS.RandomGenerator@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for BNNS.RandomGeneratorState();
  v4 = swift_allocObject();
  v5 = MEMORY[0x1B8CB1E30](*(v3 + 16));
  *(v4 + 16) = v5;
  v6 = swift_slowAlloc();
  *(v4 + 24) = v6;
  result = MEMORY[0x1B8CB1E10](*(v3 + 16), v5, v6);
  *a2 = v4;
  return result;
}

uint64_t BNNS.RandomGenerator.state.getter()
{
  type metadata accessor for BNNS.RandomGeneratorState();
  v1 = swift_allocObject();
  v2 = MEMORY[0x1B8CB1E30](*(v0 + 16));
  *(v1 + 16) = v2;
  v3 = swift_slowAlloc();
  *(v1 + 24) = v3;
  MEMORY[0x1B8CB1E10](*(v0 + 16), v2, v3);
  return v1;
}

uint64_t BNNS.RandomGenerator.state.setter(uint64_t a1)
{
  MEMORY[0x1B8CB1E20](*(v1 + 16), *(a1 + 16), *(a1 + 24));
}

uint64_t (*BNNS.RandomGenerator.state.modify(uint64_t *a1))(void *a1)
{
  a1[1] = v1;
  type metadata accessor for BNNS.RandomGeneratorState();
  v3 = swift_allocObject();
  v4 = MEMORY[0x1B8CB1E30](*(v1 + 16));
  *(v3 + 16) = v4;
  v5 = swift_slowAlloc();
  *(v3 + 24) = v5;
  MEMORY[0x1B8CB1E10](*(v1 + 16), v4, v5);
  *a1 = v3;
  return BNNS.RandomGenerator.state.modify;
}

uint64_t BNNS.RandomGenerator.state.modify(void *a1)
{
  MEMORY[0x1B8CB1E20](*(a1[1] + 16), *(*a1 + 16), *(*a1 + 24));
}

void static BNNSNDArrayDescriptor.allocate<A>(randomUniformUsing:range:shape:batchSize:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v30 = a2;
  v38 = *MEMORY[0x1E69E9840];
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 112);
  v34[6] = *(v12 + 96);
  v34[7] = v13;
  v35 = *(v12 + 128);
  v14 = *(v12 + 48);
  v34[2] = *(v12 + 32);
  v34[3] = v14;
  v15 = *(v12 + 80);
  v34[4] = *(v12 + 64);
  v34[5] = v15;
  v16 = *(v12 + 16);
  v34[0] = *v12;
  v34[1] = v16;
  v19 = (*(v17 + 8))(v18, v17);
  helper #1 <A>(_:) in static BNNSNDArrayDescriptor.allocateUninitialized(scalarType:shape:batchSize:)(a3, v34, v19, &v33);
  v29 = *(a1 + 16);
  v20 = *(v9 + 16);
  v21 = v30;
  v20(v11, v30, a4);
  lazy protocol witness table accessor for type Float and conformance Float();
  BinaryFloatingPoint.init<A>(_:)();
  v22 = *&v36.flags;
  v23 = type metadata accessor for ClosedRange();
  v20(v11, v21 + *(v23 + 36), a4);
  BinaryFloatingPoint.init<A>(_:)();
  if (BNNSRandomFillUniformFloat(v29, &v33, v22, *&v31.flags))
  {
    if (v33.data)
    {
      MEMORY[0x1B8CB2C50](v33.data, -1, -1);
    }

    _sSo21BNNSNDArrayDescriptoraSgWOi0_(&v36);
  }

  else
  {
    v31 = v33;
    _sSo21BNNSNDArrayDescriptoraSgWOi_(&v31);
    v36 = v31;
    v37 = v32;
  }

  v24 = *&v36.data_type;
  *(a5 + 128) = *&v36.stride[7];
  *(a5 + 144) = v24;
  *(a5 + 160) = *&v36.table_data_type;
  *(a5 + 176) = v37;
  v25 = *&v36.stride[1];
  *(a5 + 64) = *&v36.size[7];
  *(a5 + 80) = v25;
  v26 = *&v36.stride[5];
  *(a5 + 96) = *&v36.stride[3];
  *(a5 + 112) = v26;
  v27 = *&v36.size[1];
  *a5 = *&v36.flags;
  *(a5 + 16) = v27;
  v28 = *&v36.size[5];
  *(a5 + 32) = *&v36.size[3];
  *(a5 + 48) = v28;
}

double static BNNSNDArrayDescriptor.allocate<A>(randomUniformUsing:range:shape:batchSize:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v78 = a8;
  v89 = *MEMORY[0x1E69E9840];
  v74 = *(*(*(a7 + 8) + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v72 = &v72 - v15;
  v16 = *(a5 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v76 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v81 = &v72 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v72 - v21;
  v23 = *(a3 + 112);
  v87[6] = *(a3 + 96);
  v87[7] = v23;
  v88 = *(a3 + 128);
  v24 = *(a3 + 48);
  v87[2] = *(a3 + 32);
  v87[3] = v24;
  v25 = *(a3 + 80);
  v87[4] = *(a3 + 64);
  v87[5] = v25;
  v26 = *(a3 + 16);
  v87[0] = *a3;
  v87[1] = v26;
  v27 = (*(a6 + 8))(a5, a6);
  helper #1 <A>(_:) in static BNNSNDArrayDescriptor.allocateUninitialized(scalarType:shape:batchSize:)(a4, v87, v27, &v86);
  v79 = *(a1 + 16);
  v80 = a2;
  v28 = a2;
  v29 = *(v16 + 16);
  v29(v22, v28, a5);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
  {
    *&v84.flags = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
      {
        lazy protocol witness table accessor for type Int64 and conformance Int64();
        v30 = v76;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v31 = dispatch thunk of static Comparable.< infix(_:_:)();
        v32 = v16;
        goto LABEL_9;
      }

      goto LABEL_14;
    }

    v33 = v16;
    v34 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v35 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v34)
    {
      if (v35 > 64)
      {
        lazy protocol witness table accessor for type Int64 and conformance Int64();
        v30 = v76;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v31 = dispatch thunk of static Comparable.< infix(_:_:)();
        v16 = v33;
        v32 = v33;
LABEL_9:
        (*(v32 + 8))(v30, a5);
        if (v31)
        {
          goto LABEL_55;
        }

        goto LABEL_15;
      }

      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v36 = v76;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v37 = dispatch thunk of static Comparable.< infix(_:_:)();
      v16 = v33;
      (*(v33 + 8))(v36, a5);
      if (v37)
      {
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      goto LABEL_14;
    }

    v16 = v33;
    if (v35 < 64)
    {
LABEL_14:
      dispatch thunk of BinaryInteger._lowWord.getter();
    }
  }

LABEL_15:
  v38 = dispatch thunk of BinaryInteger.bitWidth.getter();
  v39 = v81;
  if (v38 <= 64)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v75 = v16;
    *&v84.flags = 0x7FFFFFFFFFFFFFFFLL;
    v40 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v41 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v40 & 1) == 0)
    {
      break;
    }

    if (v41 < 65)
    {
      goto LABEL_24;
    }

LABEL_18:
    lazy protocol witness table accessor for type Int64 and conformance Int64();
    v42 = v76;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v43 = dispatch thunk of static Comparable.< infix(_:_:)();
    v16 = v75;
    (*(v75 + 8))(v42, a5);
    if (v43)
    {
      __break(1u);
LABEL_20:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_25;
  }

  if (v41 >= 64)
  {
    goto LABEL_18;
  }

LABEL_24:
  dispatch thunk of BinaryInteger._lowWord.getter();
  v16 = v75;
LABEL_25:
  v77 = dispatch thunk of BinaryInteger._lowWord.getter();
  v46 = *(v16 + 8);
  v44 = v16 + 8;
  v45 = v46;
  v46(v22, a5);
  v47 = type metadata accessor for ClosedRange();
  v29(v39, v80 + *(v47 + 36), a5);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_39;
  }

  *&v84.flags = 0x8000000000000000;
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
    {
      lazy protocol witness table accessor for type Int64 and conformance Int64();
      v48 = v76;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v49 = dispatch thunk of static Comparable.< infix(_:_:)();
      v45(v48, a5);
      if (v49)
      {
        goto LABEL_56;
      }

      goto LABEL_39;
    }

LABEL_38:
    dispatch thunk of BinaryInteger._lowWord.getter();
    goto LABEL_39;
  }

  v75 = v44;
  v50 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v51 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if ((v50 & 1) == 0)
  {
    v44 = v75;
    if (v51 >= 64)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  if (v51 <= 64)
  {
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    v55 = v76;
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v56 = dispatch thunk of static Comparable.< infix(_:_:)();
    v57 = v55;
    v44 = v75;
    v45(v57, a5);
    if (v56)
    {
      goto LABEL_56;
    }

    goto LABEL_38;
  }

  lazy protocol witness table accessor for type Int64 and conformance Int64();
  v52 = v76;
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v53 = dispatch thunk of static Comparable.< infix(_:_:)();
  v54 = v52;
  v44 = v75;
  v45(v54, a5);
  if (v53)
  {
LABEL_56:
    __break(1u);
  }

LABEL_39:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_44;
  }

  while (2)
  {
    v58 = v44;
    *&v84.flags = 0x7FFFFFFFFFFFFFFFLL;
    v59 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v60 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v59)
    {
      if (v60 < 65)
      {
        break;
      }

      goto LABEL_42;
    }

    if (v60 >= 64)
    {
LABEL_42:
      lazy protocol witness table accessor for type Int64 and conformance Int64();
      v61 = v76;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v62 = dispatch thunk of static Comparable.< infix(_:_:)();
      v63 = v61;
      v44 = v58;
      v45(v63, a5);
      if ((v62 & 1) == 0)
      {
        goto LABEL_49;
      }

      __break(1u);
LABEL_44:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0)
      {
        goto LABEL_49;
      }

      continue;
    }

    break;
  }

  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_49:
  v64 = dispatch thunk of BinaryInteger._lowWord.getter();
  v45(v39, a5);
  if (BNNSRandomFillUniformInt(v79, &v86, v77, v64))
  {
    if (v86.data)
    {
      MEMORY[0x1B8CB2C50](v86.data, -1, -1);
    }

    _sSo21BNNSNDArrayDescriptoraSgWOi0_(&v84);
  }

  else
  {
    v82 = v86;
    _sSo21BNNSNDArrayDescriptoraSgWOi_(&v82);
    v84 = v82;
    v85 = v83;
  }

  v65 = *&v84.data_type;
  v66 = v78;
  *(v78 + 128) = *&v84.stride[7];
  *(v66 + 144) = v65;
  *(v66 + 160) = *&v84.table_data_type;
  *(v66 + 176) = v85;
  v67 = *&v84.stride[1];
  *(v66 + 64) = *&v84.size[7];
  *(v66 + 80) = v67;
  v68 = *&v84.stride[5];
  *(v66 + 96) = *&v84.stride[3];
  *(v66 + 112) = v68;
  v69 = *&v84.size[1];
  *v66 = *&v84.flags;
  *(v66 + 16) = v69;
  result = *&v84.size[3];
  v71 = *&v84.size[5];
  *(v66 + 32) = *&v84.size[3];
  *(v66 + 48) = v71;
  return result;
}

unint64_t lazy protocol witness table accessor for type Int64 and conformance Int64()
{
  result = lazy protocol witness table cache variable for type Int64 and conformance Int64;
  if (!lazy protocol witness table cache variable for type Int64 and conformance Int64)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int64 and conformance Int64);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BNNS.RandomGeneratorMethod and conformance BNNS.RandomGeneratorMethod()
{
  result = lazy protocol witness table cache variable for type BNNS.RandomGeneratorMethod and conformance BNNS.RandomGeneratorMethod;
  if (!lazy protocol witness table cache variable for type BNNS.RandomGeneratorMethod and conformance BNNS.RandomGeneratorMethod)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BNNS.RandomGeneratorMethod and conformance BNNS.RandomGeneratorMethod);
  }

  return result;
}

void vImage.PixelBuffer<>.clip(to:destination:)(uint64_t *a1, uint64_t a2, uint64_t a3, float a4, float a5)
{
  v20 = *MEMORY[0x1E69E9840];
  v10 = *a1;
  v11 = *v5;
  v19 = *v5;
  v12 = vImage.PixelBuffer<>.count.getter(a2, a3);
  __B = v10;
  if (v12 != vImage.PixelBuffer<>.count.getter(a2, a3))
  {
    __break(1u);
    goto LABEL_7;
  }

  v13 = vImage.PixelBuffer<>.count.getter(a2, a3);
  __C = a5;
  *&__B = a4;
  v19 = v11;
  v14 = vImage.PixelBuffer<>.vImageBuffer.getter();
  if (!v14)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
  }

  v15 = v14;
  v19 = v10;
  v16 = vImage.PixelBuffer<>.vImageBuffer.getter();
  if (!v16)
  {
    goto LABEL_9;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  vDSP_vclip(v15, 1, &__B, &__C, v16, 1, v13);
}

void vImage.PixelBuffer<>.colorThreshold(_:destination:)(uint64_t *a1, uint64_t a2, uint64_t a3, float a4)
{
  __B[1] = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = *v4;
  __B[0] = *v4;
  v10 = vImage.PixelBuffer<>.count.getter(a2, a3);
  __C = v8;
  if (v10 != vImage.PixelBuffer<>.count.getter(a2, a3))
  {
    __break(1u);
    goto LABEL_7;
  }

  v11 = vImage.PixelBuffer<>.count.getter(a2, a3);
  __B[0] = v9;
  v12 = vImage.PixelBuffer<>.vImageBuffer.getter();
  if (!v12)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
  }

  v13 = v12;
  __B[0] = v8;
  v14 = vImage.PixelBuffer<>.vImageBuffer.getter();
  if (!v14)
  {
    goto LABEL_9;
  }

  *__B = a4;
  v16 = 0.0;
  LODWORD(__C) = 1065353216;
  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v15 = v14;
  vDSP_vthrsc(v13, 1, __B, &__C, v14, 1, v11);
  vDSP_vclip(v15, 1, &v16, &__C, v15, 1, v11);
}

void vImage.PixelBuffer<>.linearInterpolate(bufferB:interpolationConstant:destination:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, float a5)
{
  v9 = *a1;
  v10 = *a2;
  v11 = *v5;
  v22 = *v5;
  v12 = vImage.PixelBuffer<>.count.getter(a3, a4);
  v21 = v10;
  if (v12 != vImage.PixelBuffer<>.count.getter(a3, a4))
  {
    __break(1u);
    goto LABEL_9;
  }

  v22 = v11;
  v13 = vImage.PixelBuffer<>.count.getter(a3, a4);
  v21 = v9;
  if (v13 != vImage.PixelBuffer<>.count.getter(a3, a4))
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v14 = vImage.PixelBuffer<>.count.getter(a3, a4);
  v22 = v11;
  v15 = vImage.PixelBuffer<>.vImageBuffer.getter();
  if (!v15)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v16 = v15;
  v22 = v9;
  v17 = vImage.PixelBuffer<>.vImageBuffer.getter();
  if (!v17)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v18 = v17;
  v22 = v10;
  v19 = vImage.PixelBuffer<>.vImageBuffer.getter();
  if (v19)
  {
    v20 = a5;
    if ((v14 & 0x8000000000000000) == 0)
    {
      vDSP_vintb(v16, 1, v18, 1, &v20, v19, 1, v14);
      return;
    }

    goto LABEL_10;
  }

LABEL_13:
  __break(1u);
}

uint64_t vImage.Error.init(vImageError:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  result = vImage.Error.init(rawValue:)(a1, &v5);
  v4 = v5;
  if (v5 == 20)
  {
    v4 = 11;
  }

  *a2 = v4;
  return result;
}

uint64_t vImage.Error.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 2;
  switch(result)
  {
    case -21784:
      *a2 = 19;
      break;
    case -21783:
      *a2 = 18;
      break;
    case -21782:
      *a2 = 17;
      break;
    case -21781:
      *a2 = 16;
      break;
    case -21780:
      *a2 = 15;
      break;
    case -21779:
      *a2 = 14;
      break;
    case -21778:
      *a2 = 13;
      break;
    case -21777:
      *a2 = 12;
      break;
    case -21776:
      *a2 = 11;
      break;
    case -21775:
      *a2 = 10;
      break;
    case -21774:
      *a2 = 9;
      break;
    case -21773:
      *a2 = 8;
      break;
    case -21772:
      *a2 = 7;
      break;
    case -21771:
      *a2 = 6;
      break;
    case -21770:
      *a2 = 5;
      break;
    case -21769:
      *a2 = 4;
      break;
    case -21768:
      *a2 = 3;
      break;
    case -21767:
      goto LABEL_21;
    case -21766:
      v2 = 1;
LABEL_21:
      *a2 = v2;
      break;
    default:
      if (result)
      {
        *a2 = 20;
      }

      else
      {
        *a2 = 0;
      }

      break;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance vImage.Error()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B8CB1810](qword_1B7E79EE8[v1]);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance vImage.Error()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B8CB1810](qword_1B7E79EE8[v1]);
  return Hasher._finalize()();
}

uint64_t protocol witness for Error._code.getter in conformance vImage.Error(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type vImage.Error and conformance vImage.Error();
  v5 = lazy protocol witness table accessor for type Int and conformance Int();

  return MEMORY[0x1EEE6B588](a1, a2, v4, v5);
}

uint64_t getEnumTagSinglePayload for vImage.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for vImage.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

uint64_t static BNNS.quantize(batchSize:input:output:axis:scale:bias:filterParameters:)(size_t a1, _OWORD *a2, _OWORD *a3, unint64_t a4, char a5, __int128 *a6, __int128 *a7, uint32_t a8, size_t a9, int (__cdecl *a10)(void **, size_t, size_t), void (__cdecl *a11)(void *), BNNSQuantizerFunction a12)
{
  v134 = *MEMORY[0x1E69E9840];
  v19 = a6[9];
  v119 = a6[8];
  v120 = v19;
  v121 = a6[10];
  v122 = *(a6 + 176);
  v20 = a6[5];
  v115 = a6[4];
  v116 = v20;
  v21 = a6[7];
  v117 = a6[6];
  v118 = v21;
  v22 = a6[1];
  v111 = *a6;
  v112 = v22;
  v23 = a6[3];
  v113 = a6[2];
  v114 = v23;
  if (_sSo21BNNSNDArrayDescriptoraSgWOg(&v111) != 1)
  {
    v131 = v119;
    v132 = v120;
    v133 = v121;
    v127 = v115;
    v128 = v116;
    v130 = v118;
    v129 = v117;
    v123 = v111;
    v124 = v112;
    v126 = v114;
    v125 = v113;
    BNNSNDArrayDescriptor.shape.getter(&layer_params);
    result = _s10Accelerate4BNNSO5ShapeOWOg(&layer_params);
    if (result)
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }
  }

  v25 = a7[9];
  v96 = a7[8];
  v97 = v25;
  v98 = a7[10];
  v99 = *(a7 + 176);
  v26 = a7[5];
  v92 = a7[4];
  v93 = v26;
  v27 = a7[7];
  v94 = a7[6];
  v95 = v27;
  v28 = a7[1];
  v88 = *a7;
  v89 = v28;
  v29 = a7[3];
  v90 = a7[2];
  v91 = v29;
  if (_sSo21BNNSNDArrayDescriptoraSgWOg(&v88) != 1)
  {
    v108 = v96;
    v109 = v97;
    v110 = v98;
    v104 = v92;
    v105 = v93;
    v107 = v95;
    v106 = v94;
    v100 = v88;
    v101 = v89;
    v103 = v91;
    v102 = v90;
    BNNSNDArrayDescriptor.shape.getter(&layer_params);
    result = _s10Accelerate4BNNSO5ShapeOWOg(&layer_params);
    if (result)
    {
      goto LABEL_21;
    }
  }

  v30 = a6[9];
  v31 = 1 << a4;
  if (a4 >= 0x40)
  {
    v31 = 0;
  }

  v86[8] = a6[8];
  v86[9] = v30;
  if (a5 & 1 | (a4 > 0x40))
  {
    v32 = 0;
  }

  else
  {
    v32 = v31;
  }

  v86[10] = a6[10];
  v87 = *(a6 + 176);
  v33 = a6[5];
  v86[4] = a6[4];
  v86[5] = v33;
  v34 = a6[7];
  v86[6] = a6[6];
  v86[7] = v34;
  v35 = a6[1];
  v86[0] = *a6;
  v86[1] = v35;
  v36 = a6[3];
  v86[2] = a6[2];
  v86[3] = v36;
  if (_sSo21BNNSNDArrayDescriptoraSgWOg(v86) == 1)
  {
    v83 = 0u;
    v82 = 0u;
    v81 = 0u;
    v80 = 0u;
    v79 = 0u;
    v78 = 0u;
    v77 = 0u;
    v76 = 0u;
    v75 = 0u;
    v74 = 0u;
    v73 = 0u;
  }

  else
  {
    v37 = a6[9];
    v81 = a6[8];
    v82 = v37;
    v83 = a6[10];
    v38 = a6[5];
    v77 = a6[4];
    v78 = v38;
    v39 = a6[6];
    v80 = a6[7];
    v79 = v39;
    v40 = a6[1];
    v73 = *a6;
    v74 = v40;
    v41 = a6[2];
    v76 = a6[3];
    v75 = v41;
  }

  v42 = a7[9];
  v84[8] = a7[8];
  v84[9] = v42;
  v84[10] = a7[10];
  v85 = *(a7 + 176);
  v43 = a7[5];
  v84[4] = a7[4];
  v84[5] = v43;
  v44 = a7[7];
  v84[6] = a7[6];
  v84[7] = v44;
  v45 = a7[1];
  v84[0] = *a7;
  v84[1] = v45;
  v46 = a7[3];
  v84[2] = a7[2];
  v84[3] = v46;
  if (_sSo21BNNSNDArrayDescriptoraSgWOg(v84) == 1)
  {
    memset(&v71, 0, sizeof(v71));
  }

  else
  {
    v47 = a7[9];
    *&v71.stride[7] = a7[8];
    *&v71.data_type = v47;
    *&v71.table_data_type = a7[10];
    v48 = a7[5];
    *&v71.size[7] = a7[4];
    *&v71.stride[1] = v48;
    v49 = a7[7];
    *&v71.stride[3] = a7[6];
    *&v71.stride[5] = v49;
    v50 = a7[1];
    *&v71.flags = *a7;
    *&v71.size[1] = v50;
    v51 = a7[3];
    *&v71.size[3] = a7[2];
    *&v71.size[5] = v51;
  }

  v52 = a2[6];
  *&v70[116] = a2[7];
  v53 = a2[9];
  *&v70[132] = a2[8];
  *&v70[148] = v53;
  *&v70[164] = a2[10];
  v54 = a2[2];
  *&v70[52] = a2[3];
  v55 = a2[5];
  *&v70[68] = a2[4];
  *&v70[84] = v55;
  *&v70[100] = v52;
  v56 = a2[1];
  *&v70[4] = *a2;
  *&v70[20] = v56;
  *&v70[36] = v54;
  v57 = a3[9];
  *&layer_params.o_desc.stride[7] = a3[8];
  *&layer_params.o_desc.data_type = v57;
  v58 = a3[5];
  *&layer_params.o_desc.size[7] = a3[4];
  *&layer_params.o_desc.stride[1] = v58;
  v59 = a3[7];
  *&layer_params.o_desc.stride[3] = a3[6];
  *&layer_params.o_desc.stride[5] = v59;
  v60 = a3[1];
  *&layer_params.o_desc.flags = *a3;
  *&layer_params.o_desc.size[1] = v60;
  v61 = a3[3];
  *&layer_params.o_desc.size[3] = a3[2];
  *&layer_params.o_desc.size[5] = v61;
  *(&layer_params.i_desc.stride[6] + 4) = *&v70[128];
  *(&layer_params.i_desc.data + 4) = *&v70[144];
  *(&layer_params.i_desc.table_data + 4) = *&v70[160];
  *(&layer_params.i_desc.size[6] + 4) = *&v70[64];
  *(layer_params.i_desc.stride + 4) = *&v70[80];
  *(&layer_params.i_desc.stride[2] + 4) = *&v70[96];
  *(&layer_params.i_desc.stride[4] + 4) = *&v70[112];
  *(&layer_params.function + 1) = *v70;
  *(layer_params.i_desc.size + 4) = *&v70[16];
  *(&layer_params.i_desc.size[2] + 4) = *&v70[32];
  *(&layer_params.i_desc.size[4] + 4) = *&v70[48];
  *&layer_params.scale.stride[5] = v80;
  *&layer_params.scale.stride[7] = v81;
  *&layer_params.scale.data_type = v82;
  *&layer_params.scale.table_data_type = v83;
  *&layer_params.scale.size[5] = v76;
  *&layer_params.scale.size[7] = v77;
  v62 = a3[10];
  *&layer_params.scale.stride[1] = v78;
  *&layer_params.scale.stride[3] = v79;
  *&layer_params.o_desc.table_data_type = v62;
  *&layer_params.scale.flags = v73;
  layer_params.axis_mask = v32;
  layer_params.function = a12;
  *(&layer_params.i_desc.data_bias + 1) = *&v70[176];
  *&layer_params.scale.size[1] = v74;
  *&layer_params.scale.size[3] = v75;
  layer_params.bias = v71;
  if (a10 == 1)
  {
    BNNSNDArrayDescriptor.shape.getter(v69);
    v63 = BNNS.Shape.batchStride.getter();
    BNNSNDArrayDescriptor.shape.getter(v68);
    v64 = BNNS.Shape.batchStride.getter();
    p_filter_params = 0;
  }

  else
  {
    filter_params.flags = a8;
    filter_params.n_threads = a9;
    filter_params.alloc_memory = a10;
    filter_params.free_memory = a11;
    BNNSNDArrayDescriptor.shape.getter(v69);
    v63 = BNNS.Shape.batchStride.getter();
    BNNSNDArrayDescriptor.shape.getter(v68);
    v64 = BNNS.Shape.batchStride.getter();
    p_filter_params = &filter_params;
  }

  return BNNSDirectApplyQuantizer(&layer_params, p_filter_params, a1, v63, v64);
}

uint64_t static BNNS.computeNorm(input:output:axes:)(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1[9];
  *&src.stride[7] = a1[8];
  *&src.data_type = v3;
  *&src.table_data_type = a1[10];
  v4 = a1[5];
  *&src.size[7] = a1[4];
  *&src.stride[1] = v4;
  v5 = a1[7];
  *&src.stride[3] = a1[6];
  *&src.stride[5] = v5;
  v6 = a1[1];
  *&src.flags = *a1;
  *&src.size[1] = v6;
  v7 = a1[3];
  *&src.size[3] = a1[2];
  *&src.size[5] = v7;
  v8 = a2[9];
  *&v16.stride[7] = a2[8];
  *&v16.data_type = v8;
  *&v16.table_data_type = a2[10];
  v9 = a2[5];
  *&v16.size[7] = a2[4];
  *&v16.stride[1] = v9;
  v10 = a2[7];
  *&v16.stride[3] = a2[6];
  *&v16.stride[5] = v10;
  v11 = a2[1];
  *&v16.flags = *a2;
  *&v16.size[1] = v11;
  v12 = a2[3];
  *&v16.size[3] = a2[2];
  *&v16.size[5] = v12;
  v13 = specialized static BNNS.computeAxisFlags(_:)(a3);
  result = BNNSComputeNorm(&v16, &src, BNNSL2Norm, v13);
  if (result)
  {
    lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
    swift_allocError();
    *v15 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t static BNNS.computeNormBackward(input:output:axes:outputGradient:generatingInputGradient:)(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, _OWORD *a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a5[9];
  *&in_delta.stride[7] = a5[8];
  *&in_delta.data_type = v5;
  *&in_delta.table_data_type = a5[10];
  v6 = a5[5];
  *&in_delta.size[7] = a5[4];
  *&in_delta.stride[1] = v6;
  v7 = a5[7];
  *&in_delta.stride[3] = a5[6];
  *&in_delta.stride[5] = v7;
  v8 = a5[1];
  *&in_delta.flags = *a5;
  *&in_delta.size[1] = v8;
  v9 = a5[3];
  *&in_delta.size[3] = a5[2];
  *&in_delta.size[5] = v9;
  v10 = a4[9];
  *&v20.stride[7] = a4[8];
  *&v20.data_type = v10;
  *&v20.table_data_type = a4[10];
  v11 = a4[5];
  *&v20.size[7] = a4[4];
  *&v20.stride[1] = v11;
  v12 = a4[7];
  *&v20.stride[3] = a4[6];
  *&v20.stride[5] = v12;
  v13 = a4[1];
  *&v20.flags = *a4;
  *&v20.size[1] = v13;
  v14 = a4[3];
  *&v20.size[3] = a4[2];
  *&v20.size[5] = v14;
  v15 = *(a1 + 136);
  if (!v15 || (v16 = *(a2 + 136)) == 0 || (v17 = specialized static BNNS.computeAxisFlags(_:)(a3), result = BNNSComputeNormBackward(v15, &in_delta, v16, &v20, BNNSL2Norm, v17), result))
  {
    lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
    swift_allocError();
    *v19 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t static BLAS.threadingModel.getter@<X0>(_DWORD *a1@<X8>)
{
  result = BLASGetThreading();
  *a1 = result;
  return result;
}

uint64_t vImageConverterRef.sourceBuffers(colorSpace:)(CGColorSpace *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t))
{
  v5 = v3;
  v7 = a2(v3);
  result = a3(v5);
  if ((result & 0x8000000000000000) == 0)
  {
    v9 = MEMORY[0x1E69E7CC0];
    if (result)
    {
      v10 = result;
      v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSf_Tt1gq5Tm(result, 0, &_ss23_ContiguousArrayStorageCys6UInt32VGMd);
      memcpy(v11 + 4, v7, 4 * v10);
      v12 = v11[2];
      if (v12)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
      v12 = *(MEMORY[0x1E69E7CC0] + 16);
      if (v12)
      {
LABEL_4:
        v21 = v9;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
        v13 = 32;
        v14 = v9;
        do
        {
          v15 = *(v11 + v13);
          Model = CGColorSpaceGetModel(a1);
          vImage.BufferType.init(bufferTypeCode:model:)(v15, Model, &v20);
          v17 = v20;
          v21 = v14;
          v19 = *(v14 + 16);
          v18 = *(v14 + 24);
          if (v19 >= v18 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
            v14 = v21;
          }

          *(v14 + 16) = v19 + 1;
          *(v14 + v19 + 32) = v17;
          v13 += 4;
          --v12;
        }

        while (v12);

        return v14;
      }
    }

    return MEMORY[0x1E69E7CC0];
  }

  __break(1u);
  return result;
}

uint64_t vImageConverterRef.sourceBufferCount.getter(uint64_t (*a1)(uint64_t))
{
  result = a1(v1);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t vImageConverterRef.mustOperateOutOfPlace(source:destination:flags:)(void *a1, vImagePixelCount a2, vImagePixelCount a3, size_t a4, void *a5, vImagePixelCount a6, vImagePixelCount a7, size_t a8, vImage_Flags *a9)
{
  v18 = *MEMORY[0x1E69E9840];
  srcs.data = a1;
  srcs.height = a2;
  srcs.width = a3;
  srcs.rowBytes = a4;
  dests.data = a5;
  dests.height = a6;
  dests.width = a7;
  dests.rowBytes = a8;
  MustOperateOutOfPlace = vImageConverter_MustOperateOutOfPlace(v9, &srcs, &dests, *a9);
  if (MustOperateOutOfPlace == -21780)
  {
    v11 = 1;
  }

  else if (MustOperateOutOfPlace)
  {
    v12 = MustOperateOutOfPlace;
    lazy protocol witness table accessor for type vImage.Error and conformance vImage.Error();
    swift_allocError();
    if ((v12 + 21784) >= 0x13)
    {
      v14 = 11;
    }

    else
    {
      v14 = *(&unk_1B7E7A03A + v12 + 21784);
    }

    *v13 = v14;
    swift_willThrow();
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

vImageConverterRef static vImageConverterRef.make(sourceFormat:destinationFormat:flags:)(uint64_t a1, uint64_t a2, vImage_Flags *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = *a3;
  error = 0;
  v4 = *(a2 + 16);
  *&destFormat.bitsPerComponent = *a2;
  *&destFormat.bitmapInfo = v4;
  *&destFormat.renderingIntent = *(a2 + 32);
  v5 = *(a1 + 16);
  *&srcFormat.bitsPerComponent = *a1;
  *&srcFormat.bitmapInfo = v5;
  *&srcFormat.renderingIntent = *(a1 + 32);
  v6 = vImageConverter_CreateWithCGImageFormat(&srcFormat, &destFormat, 0, v3, &error);
  v7 = v6;
  v8 = error;
  if (error)
  {
    lazy protocol witness table accessor for type vImage.Error and conformance vImage.Error();
    swift_allocError();
    if ((v8 + 21784) >= 0x13)
    {
      v10 = 11;
    }

    else
    {
      v10 = -5 - v8;
    }
  }

  else
  {
    if (v6)
    {
      return v7;
    }

    lazy protocol witness table accessor for type vImage.Error and conformance vImage.Error();
    swift_allocError();
    v10 = 11;
  }

  *v9 = v10;
  swift_willThrow();
  return v7;
}

vImageConverterRef static vImageConverterRef.make(sourceFormat:destinationFormat:flags:)(uint64_t a1, vImageCVImageFormat *a2, vImage_Flags *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *a3;
  error = 0;
  v4 = *(a1 + 16);
  *&srcFormat.bitsPerComponent = *a1;
  *&srcFormat.bitmapInfo = v4;
  *&srcFormat.renderingIntent = *(a1 + 32);
  v5 = vImageConverter_CreateForCGToCVImageFormat(&srcFormat, a2, 0, v3, &error);
  v6 = v5;
  v7 = error;
  if (error)
  {
    lazy protocol witness table accessor for type vImage.Error and conformance vImage.Error();
    swift_allocError();
    if ((v7 + 21784) >= 0x13)
    {
      v9 = 11;
    }

    else
    {
      v9 = -5 - v7;
    }
  }

  else
  {
    if (v5)
    {
      return v6;
    }

    lazy protocol witness table accessor for type vImage.Error and conformance vImage.Error();
    swift_allocError();
    v9 = 11;
  }

  *v8 = v9;
  swift_willThrow();
  return v6;
}

vImageConverterRef static vImageConverterRef.make(sourceFormat:destinationFormat:flags:)(vImageCVImageFormat *a1, uint64_t a2, vImage_Flags *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *a3;
  error = -21776;
  v4 = *(a2 + 16);
  *&destFormat.bitsPerComponent = *a2;
  *&destFormat.bitmapInfo = v4;
  *&destFormat.renderingIntent = *(a2 + 32);
  v5 = vImageConverter_CreateForCVToCGImageFormat(a1, &destFormat, 0, v3, &error);
  v6 = v5;
  v7 = error;
  if (error)
  {
    lazy protocol witness table accessor for type vImage.Error and conformance vImage.Error();
    swift_allocError();
    if ((v7 + 21784) >= 0x13)
    {
      v9 = 11;
    }

    else
    {
      v9 = -5 - v7;
    }
  }

  else
  {
    if (v5)
    {
      return v6;
    }

    lazy protocol witness table accessor for type vImage.Error and conformance vImage.Error();
    swift_allocError();
    v9 = 11;
  }

  *v8 = v9;
  swift_willThrow();
  return v6;
}

vImage_Error vImageConverterRef.convert(source:destination:flags:)(void *a1, vImagePixelCount a2, vImagePixelCount a3, size_t a4, vImage_Buffer *dests, vImage_Flags *a6)
{
  v12 = *MEMORY[0x1E69E9840];
  srcs.data = a1;
  srcs.height = a2;
  srcs.width = a3;
  srcs.rowBytes = a4;
  result = vImageConvert_AnyToAny(v6, &srcs, dests, 0, *a6);
  if (result)
  {
    v8 = result;
    lazy protocol witness table accessor for type vImage.Error and conformance vImage.Error();
    swift_allocError();
    if ((v8 + 21784) >= 0x13)
    {
      v10 = 11;
    }

    else
    {
      v10 = -5 - v8;
    }

    *v9 = v10;
    return swift_willThrow();
  }

  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2 <= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v5 = swift_allocObject();
  v6 = _swift_stdlib_malloc_size(v5);
  result = v5;
  v9 = v6 - 32;
  v8 = v6 < 32;
  v10 = v6 - 25;
  if (!v8)
  {
    v10 = v9;
  }

  v5[2] = a1;
  v5[3] = 2 * (v10 >> 3);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo16DSPDoubleComplexV_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo16DSPDoubleComplexVGMd);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSf_Tt1gq5Tm(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2 <= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v5 = swift_allocObject();
  v6 = _swift_stdlib_malloc_size(v5);
  result = v5;
  v9 = v6 - 32;
  v8 = v6 < 32;
  v10 = v6 - 29;
  if (!v8)
  {
    v10 = v9;
  }

  v5[2] = a1;
  v5[3] = 2 * (v10 >> 2);
  return result;
}

char *specialized UnsafeBufferPointer._copyContents(initializing:)(void *a1, uint64_t a2, char *__src, uint64_t a4)
{
  v4 = __src;
  if (a4 && a2)
  {
    if (a4 >= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = a4;
    }

    memcpy(a1, __src, 8 * v5);
    v4 += 8 * v5;
  }

  return v4;
}

{
  v4 = __src;
  if (a4 && a2)
  {
    if (a4 >= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = a4;
    }

    memcpy(a1, __src, 4 * v5);
    v4 += 4 * v5;
  }

  return v4;
}

{
  v4 = __src;
  if (a4 && a2)
  {
    if (a4 >= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = a4;
    }

    memcpy(a1, __src, 16 * v5);
    v4 += 16 * v5;
  }

  return v4;
}

uint64_t vDSP.Biquad.init(coefficients:channelCount:sectionCount:ofType:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (is_mul_ok(a2, 5uLL))
  {
    if (is_mul_ok(5 * a2, a3))
    {
      if (*(result + 16) == 5 * a2 * a3)
      {
        v5 = result;
        type metadata accessor for vDSP.BiquadRef();
        swift_allocObject();
        result = vDSP.BiquadRef.init(coefficients:channelCount:sectionCount:ofType:)(v5, a2, a3);
        if (result)
        {
LABEL_8:
          *a4 = result;
          return result;
        }
      }

      else
      {
      }

      result = 0;
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in vDSP.Biquad.apply<A>(input:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = type metadata accessor for vDSP.Biquad();
  v14 = type metadata accessor for UnsafeMutableBufferPointer();
  WitnessTable = swift_getWitnessTable();
  vDSP.Biquad.apply<A, B>(input:output:)(a4, a1, v13, a6, v14, a8, WitnessTable);
  result = (*(a8 + 16))(a6, a8);
  *a2 = result;
  return result;
}

uint64_t vDSP.Biquad.apply<A, B>(input:output:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  type metadata accessor for vDSP.BiquadRef();
  v15 = isKnownUniquelyReferenced<A>(_:)();
  v16 = *v7;
  if (v15)
  {
    return vDSP.BiquadRef.apply<A, B>(input:output:)(a1, a2, a4, a5, a6, a7);
  }

  v22 = a6;
  v17 = *(v16 + 24);
  v18 = *(v16 + 32);
  swift_allocObject();

  result = vDSP.BiquadRef.init(coefficients:channelCount:sectionCount:ofType:)(v19, v17, v18);
  if (result)
  {
    v21 = result;

    *v8 = v21;
    a6 = v22;
    return vDSP.BiquadRef.apply<A, B>(input:output:)(a1, a2, a4, a5, a6, a7);
  }

  __break(1u);
  return result;
}

uint64_t vDSP.BiquadRef.init(coefficients:channelCount:sectionCount:ofType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(*v4 + 80);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v20 - v10;
  v22 = *(v12 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v4[2] = a1;
  v4[3] = a2;
  v21 = a2;
  v4[4] = a3;
  swift_getAssociatedConformanceWitness();
  v23 = a1;

  dispatch thunk of _ExpressibleByBuiltinFloatLiteral.init(_builtinFloatLiteral:)();
  result = dispatch thunk of ExpressibleByFloatLiteral.init(floatLiteral:)();
  if (a3 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v15 = 2 * a3;
  if (2 * a3 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (__OFADD__(v15, 2))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v16 = specialized Array.init(repeating:count:)(v11, v15 + 2, v8);
  (*(v9 + 8))(v11, v8);
  v4[5] = v16;
  v17 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = (*(AssociatedConformanceWitness + 16))(v21, v23, a3, v17, AssociatedConformanceWitness);

  if (v19)
  {
    v4[6] = v19;
  }

  else
  {

    type metadata accessor for vDSP.BiquadRef();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v4;
}

uint64_t vDSP.BiquadRef.apply<A, B>(input:output:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = (*(a5 + 16))(a3, a5);
  result = (*(*(a6 + 8) + 16))(a4);
  if (result >= v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = result;
  }

  if (v17 < 0)
  {
    __break(1u);
  }

  else
  {
    v18 = v7[3];
    v19 = v7[6];
    if (v18 == 1)
    {
      v21 = v7[4];
      swift_beginAccess();
      static vDSP.BiquadFunctions.applyBiquadSingle<A, B, C>(source:destination:delays:setup:sectionCount:count:)(a1, a2, v7 + 5, v19, v21, v17, a3, a4, *(v14 + 80), a5, a6);
      return swift_endAccess();
    }

    else
    {
      v20 = *(v14 + 88);
      v23 = a3;
      v24 = a4;
      v25 = a5;
      v26 = a6;
      v27 = v20;
      v28 = v20;
      v29 = a2;
      v30 = v17;
      v31 = v18;
      v32 = v19;
      return (*(a5 + 24))(partial apply for closure #1 in static vDSP.BiquadFunctions.applyBiquadMulti<A, B>(source:destination:setup:channelCount:count:), v22, MEMORY[0x1E69E7CA8] + 8, a3, a5);
    }
  }

  return result;
}

uint64_t static vDSP.BiquadFunctions.applyBiquadSingle<A, B, C>(source:destination:delays:setup:sectionCount:count:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  type metadata accessor for Array();
  Array.reserveCapacity(_:)(0);
  v19 = *a3;

  v28 = a7;
  v29 = a4;
  v27 = a6;
  if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && (v19 < 0 || (v19 & 0x4000000000000000) != 0))
  {
    if (MEMORY[0x1B8CB13F0](v19, a9))
    {
      v21 = a2;
      v22 = a8;
      type metadata accessor for _ArrayBuffer();
      swift_getWitnessTable();
      v26 = Array.init<A>(_:)();
      destructiveProjectEnumData for vImage(v26);
      swift_unknownObjectRetain();
      v20 = MEMORY[0x1B8CB1700](v26, a9);

      goto LABEL_12;
    }

    v20 = 0;
  }

  else
  {

    if (_swift_isClassOrObjCExistentialType())
    {
      v20 = ((*(*(a9 - 8) + 80) + 32) & ~*(*(a9 - 8) + 80)) + (v19 & 0xFFFFFFFFFFFFFF8);
    }

    else
    {
      v20 = v19 + ((*(*(a9 - 8) + 80) + 32) & ~*(*(a9 - 8) + 80));
    }
  }

  v21 = a2;
  if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && (v19 < 0 || (v19 & 0x4000000000000000) != 0))
  {
    specialized _ArrayBuffer._nonNative.getter(v19);
    swift_unknownObjectRetain();
    v22 = a8;
    if (v20)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  _swift_isClassOrObjCExistentialType();

  v22 = a8;
  if (!v20)
  {
LABEL_11:
    v20 = (~*(*(a9 - 8) + 80) | 0xFFFFFF00);
  }

LABEL_12:
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 24))(a1, v21, v20, v29, a5, v27, v28, v22, a10, a11, AssociatedTypeWitness, AssociatedConformanceWitness);
  return swift_unknownObjectRelease();
}

uint64_t static vDSP.BiquadFunctions.applyBiquadMulti<A, B>(source:destination:setup:channelCount:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  v11[2] = a6;
  v11[3] = a7;
  v11[4] = a8;
  v12 = a9;
  v13 = a10;
  v14 = a2;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  return (*(a8 + 24))(partial apply for closure #1 in static vDSP.BiquadFunctions.applyBiquadMulti<A, B>(source:destination:setup:channelCount:count:), v11, MEMORY[0x1E69E7CA8] + 8, a6, a8);
}

uint64_t vDSP.BiquadRef.deinit(uint64_t a1)
{
  static vDSP.BiquadFunctions.destroySetup<A>(ofType:channelCount:biquadSetup:)(a1, *(v1 + 24), *(v1 + 48));

  return v1;
}

uint64_t static vDSP.BiquadFunctions.destroySetup<A>(ofType:channelCount:biquadSetup:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 40))(a2, a3, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t vDSP.BiquadRef.__deallocating_deinit(uint64_t a1)
{
  vDSP.BiquadRef.deinit(a1);

  return swift_deallocClassInstance();
}

uint64_t closure #1 in static vDSP.BiquadFunctions.applyBiquadMulti<A, B>(source:destination:setup:channelCount:count:)()
{
  swift_getAssociatedTypeWitness();
  result = UnsafeBufferPointer.baseAddress.getter();
  if (result)
  {
    MEMORY[0x1EEE9AC00](result);
    return (*(v1 + 16))(partial apply for closure #1 in closure #1 in static vDSP.BiquadFunctions.applyBiquadMulti<A, B>(source:destination:setup:channelCount:count:));
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in closure #1 in static vDSP.BiquadFunctions.applyBiquadMulti<A, B>(source:destination:setup:channelCount:count:)(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v50 = a5;
  swift_getAssociatedTypeWitness();
  result = UnsafeMutableBufferPointer.baseAddress.getter();
  if (result)
  {
    if (a3)
    {
      v48 = a11;
      v49 = &v41;
      v46 = a10;
      v52 = 0;
      v53 = a3;
      v51 = a2 / a3;
      v18 = MEMORY[0x1EEE9AC00](result);
      v40[2] = a6;
      v40[3] = a7;
      v40[4] = a8;
      v40[5] = a9;
      v47 = a9;
      v40[6] = v19;
      v40[7] = v20;
      v40[8] = a4;
      v40[9] = v21;
      v45 = v18;
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySuGMd);
      v42 = v22;
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v23 = type metadata accessor for UnsafePointer();
      v44 = v23;
      v24 = lazy protocol witness table accessor for type Range<UInt> and conformance <> Range<A>();
      v25 = v23;
      v26 = MEMORY[0x1E69E7410];
      v54 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in closure #1 in closure #1 in static vDSP.BiquadFunctions.applyBiquadMulti<A, B>(source:destination:setup:channelCount:count:), v40, v22, v25, MEMORY[0x1E69E73E0], v24, MEMORY[0x1E69E7410], v27);
      v52 = 0;
      v53 = a3;
      MEMORY[0x1EEE9AC00](v54);
      v40[-8] = a6;
      v40[-7] = v28;
      v30 = v46;
      v29 = v47;
      v40[-6] = v31;
      v40[-5] = v29;
      v32 = v48;
      v40[-4] = v30;
      v40[-3] = v32;
      v33 = v51;
      v40[-2] = v45;
      v40[-1] = v33;
      v34 = type metadata accessor for UnsafeMutablePointer();
      v52 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #2 in closure #1 in closure #1 in static vDSP.BiquadFunctions.applyBiquadMulti<A, B>(source:destination:setup:channelCount:count:), &v40[-10], v42, v34, MEMORY[0x1E69E73E0], v24, v26, v35);
      v36 = swift_getAssociatedTypeWitness();
      type metadata accessor for Array();
      Array.reserveCapacity(_:)(0);
      v37 = v54;
      type metadata accessor for Array();

      Array.reserveCapacity(_:)(0);
      v38 = v52;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      (*(AssociatedConformanceWitness + 32))(v50, v37 + 32, v38 + 32, v51, v36, AssociatedConformanceWitness);

      return swift_bridgeObjectRelease_n();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t closure #2 in closure #1 in closure #1 in static vDSP.BiquadFunctions.applyBiquadMulti<A, B>(source:destination:setup:channelCount:count:)@<X0>(unint64_t *a1@<X0>, unint64_t a2@<X2>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getAssociatedTypeWitness();
  type metadata accessor for UnsafeMutablePointer();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for UnsafeMutablePointer();
  result = swift_dynamicCast();
  if (is_mul_ok(v5, a2))
  {
    if (((v5 * a2) & 0x8000000000000000) == 0)
    {
      *a3 = v8 + *(*(AssociatedTypeWitness - 8) + 72) * v5 * a2;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static vDSP.VectorizableFloat.makeBiquadSetup(channelCount:coefficients:sectionCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (a1 == 1)
  {
    return a4(a2 + 32, a3);
  }

  else
  {
    return a5(a2 + 32, a3, a1);
  }
}

uint64_t static vDSP.VectorizableFloat.destroySetup(channelCount:biquadSetup:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (a1 == 1)
  {
    return a3(a2);
  }

  else
  {
    return a4(a2);
  }
}

uint64_t protocol witness for static vDSP_BiquadFunctions.makeBiquadSetup(channelCount:coefficients:sectionCount:) in conformance vDSP.VectorizableFloat(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t))
{
  if (a1 == 1)
  {
    return a6(a2 + 32, a3);
  }

  else
  {
    return a7(a2 + 32, a3, a1);
  }
}

uint64_t protocol witness for static vDSP_BiquadFunctions.destroySetup(channelCount:biquadSetup:) in conformance vDSP.VectorizableFloat(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t))
{
  if (a1 == 1)
  {
    return a5(a2);
  }

  else
  {
    return a6(a2);
  }
}

uint64_t specialized static vDSP.VectorizableFloat.applySingle<A, B>(source:destination:delays:setup:sectionCount:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11[2] = a6;
  v11[3] = a7;
  v11[4] = a8;
  v11[5] = a9;
  v11[6] = a1;
  v11[7] = a4;
  v11[8] = a3;
  v11[9] = a5;
  return (*(a9 + 16))(a10, v11, MEMORY[0x1E69E7CA8] + 8, a7, a9);
}

uint64_t type metadata instantiation function for vDSP.Biquad()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.VectorizableDouble.applySingle<A, B>(source:destination:delays:setup:sectionCount:count:)(uint64_t result, uint64_t a2, uint64_t (*a3)(void, void, uint64_t, uint64_t, uint64_t, uint64_t, void))
{
  if (result)
  {
    v4 = **(v3 + 32);
    if (v4)
    {
      return a3(*(v3 + 16), *(v3 + 24), result, 1, v4, 1, *(v3 + 40));
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t *partial apply for closure #1 in closure #1 in closure #1 in static vDSP.BiquadFunctions.applyBiquadMulti<A, B>(source:destination:setup:channelCount:count:)@<X0>(unint64_t *result@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 72);
  v5 = *result;
  if (is_mul_ok(*result, v4))
  {
    v6 = v5 * v4;
    if (((v5 * v4) & 0x8000000000000000) == 0)
    {
      v7 = *(v2 + 64);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v9 = *(AssociatedTypeWitness - 8);
      result = (AssociatedTypeWitness - 8);
      *a2 = v7 + *(v9 + 72) * v6;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type Range<UInt> and conformance <> Range<A>()
{
  result = lazy protocol witness table cache variable for type Range<UInt> and conformance <> Range<A>;
  if (!lazy protocol witness table cache variable for type Range<UInt> and conformance <> Range<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSnySuGMd);
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Range<UInt> and conformance <> Range<A>);
  }

  return result;
}

uint64_t BNNS.DropoutLayer.__allocating_init(input:output:rate:seed:control:filterParameters:)(_OWORD *a1, __int128 *a2, int a3, char a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9)
{
  v41 = *MEMORY[0x1E69E9840];
  v16 = a2[8];
  v17 = a2[9];
  v18 = a2[6];
  __src[18] = a2[7];
  __src[19] = v16;
  v19 = a2[10];
  __src[20] = v17;
  __src[21] = v19;
  v20 = a2[4];
  v21 = a2[5];
  v22 = a2[2];
  __src[14] = a2[3];
  __src[15] = v20;
  __src[16] = v21;
  __src[17] = v18;
  v23 = *a2;
  __src[12] = a2[1];
  __src[13] = v22;
  v24 = a1[9];
  __src[8] = a1[8];
  __src[9] = v24;
  __src[10] = a1[10];
  __src[11] = v23;
  v25 = a1[5];
  __src[4] = a1[4];
  __src[5] = v25;
  v26 = a1[7];
  __src[6] = a1[6];
  __src[7] = v26;
  v27 = a1[1];
  __src[0] = *a1;
  __src[1] = v27;
  v28 = a1[3];
  __src[2] = a1[2];
  __src[3] = v28;
  memcpy(__dst, __src, sizeof(__dst));
  v37 = a9;
  v38 = a3;
  v39 = a4;
  if (a7 == 1)
  {
    v29 = 0;
  }

  else
  {
    v32 = a5;
    v33 = a6;
    v34 = a7;
    v35 = a8;
    v29 = &v32;
  }

  v30 = MEMORY[0x1B8CB1A50](__dst, v29);
  type metadata accessor for BNNS.DropoutLayer();
  result = swift_allocObject();
  if (v30)
  {
    *(result + 16) = v30;
  }

  else
  {
    type metadata accessor for BNNS.Layer();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t BNNS.DropoutLayer.__deallocating_deinit()
{
  BNNSFilterDestroy(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t BNNS.FullyConnectedLayer.__allocating_init(input:output:weights:bias:activation:filterParameters:)(_OWORD *a1, _OWORD *a2, __int128 *a3, __int128 *a4, uint64_t *a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v71 = *MEMORY[0x1E69E9840];
  v16 = *a5;
  v17 = *(a5 + 8);
  v18 = a4[9];
  v58[8] = a4[8];
  v58[9] = v18;
  v58[10] = a4[10];
  v59 = *(a4 + 176);
  v19 = a4[5];
  v58[4] = a4[4];
  v58[5] = v19;
  v20 = a4[7];
  v58[6] = a4[6];
  v58[7] = v20;
  v21 = a4[1];
  v58[0] = *a4;
  v58[1] = v21;
  v22 = a4[3];
  v58[2] = a4[2];
  v58[3] = v22;
  if (_sSo21BNNSNDArrayDescriptoraSgWOg(v58) == 1)
  {
    v70 = 0u;
    v69 = 0u;
    v68 = 0u;
    v67 = 0u;
    v66 = 0u;
    v65 = 0u;
    v64 = 0u;
    v63 = 0u;
    v62 = 0u;
    v61 = 0u;
    v60 = 0u;
  }

  else
  {
    v23 = a4[9];
    v68 = a4[8];
    v69 = v23;
    v70 = a4[10];
    v24 = a4[5];
    v64 = a4[4];
    v65 = v24;
    v25 = a4[6];
    v67 = a4[7];
    v66 = v25;
    v26 = a4[1];
    v60 = *a4;
    v61 = v26;
    v27 = a4[2];
    v63 = a4[3];
    v62 = v27;
  }

  *&__dst.i_desc.flags = v16;
  LOBYTE(__dst.i_desc.size[0]) = v17;
  BNNS.ActivationFunction.bnnsActivation.getter(&__src[44]);
  v28 = a1[9];
  __src[8] = a1[8];
  __src[9] = v28;
  v29 = a1[10];
  v30 = a1[5];
  __src[4] = a1[4];
  __src[5] = v30;
  v31 = a1[7];
  __src[6] = a1[6];
  __src[7] = v31;
  v32 = a1[1];
  __src[0] = *a1;
  __src[1] = v32;
  v33 = a1[3];
  __src[2] = a1[2];
  __src[3] = v33;
  v34 = a3[8];
  v35 = a3[9];
  v36 = a3[6];
  __src[18] = a3[7];
  __src[19] = v34;
  v37 = a3[10];
  __src[20] = v35;
  __src[21] = v37;
  v38 = a3[4];
  v39 = a3[5];
  v40 = a3[2];
  __src[14] = a3[3];
  __src[15] = v38;
  __src[16] = v39;
  __src[17] = v36;
  v41 = *a3;
  v42 = a3[1];
  __src[10] = v29;
  __src[11] = v41;
  __src[12] = v42;
  __src[13] = v40;
  v43 = a2[9];
  __src[30] = a2[8];
  __src[31] = v43;
  v44 = a2[5];
  __src[26] = a2[4];
  __src[27] = v44;
  v45 = a2[7];
  __src[28] = a2[6];
  __src[29] = v45;
  v46 = a2[1];
  __src[22] = *a2;
  __src[23] = v46;
  v47 = a2[3];
  __src[24] = a2[2];
  __src[25] = v47;
  __src[40] = v67;
  __src[41] = v68;
  __src[42] = v69;
  __src[43] = v70;
  __src[36] = v63;
  __src[37] = v64;
  v48 = a2[10];
  __src[38] = v65;
  __src[39] = v66;
  __src[32] = v48;
  __src[33] = v60;
  __src[34] = v61;
  __src[35] = v62;
  memcpy(&__dst, __src, sizeof(__dst));
  if (a8 == 1)
  {
    v49 = 0;
  }

  else
  {
    v52 = a6;
    v53 = a7;
    v54 = a8;
    v55 = a9;
    v49 = &v52;
  }

  v50 = BNNSFilterCreateLayerFullyConnected(&__dst, v49);
  type metadata accessor for BNNS.FullyConnectedLayer();
  result = swift_allocObject();
  if (v50)
  {
    *(result + 16) = v50;
  }

  else
  {
    type metadata accessor for BNNS.Layer();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t BNNS.FullyConnectedLayer.__deallocating_deinit()
{
  BNNSFilterDestroy(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = dispatch thunk of Collection.count.getter();
  if (!v19)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v41 = v19;
  v45 = ContiguousArray.init()();
  v32 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v41);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = dispatch thunk of Collection.subscript.read();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

vImage_Error vImageConverterRef.convert<A, B>(from:to:)(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v11 = 0;
  type metadata accessor for vImage.PixelBuffer();
  v12.data = vImage.PixelBuffer<>.vImageBuffer.getter();
  v12.height = v4;
  v12.width = v5;
  v12.rowBytes = v6;
  result = closure #1 in vImageConverterRef.convert<A, B>(from:to:)(&v12, a2, &v11, v2);
  v8 = v11;
  if (v11)
  {
    lazy protocol witness table accessor for type vImage.Error and conformance vImage.Error();
    swift_allocError();
    if ((v8 + 21784) >= 0x13)
    {
      v10 = 11;
    }

    else
    {
      v10 = -5 - v8;
    }

    *v9 = v10;
    return swift_willThrow();
  }

  return result;
}

vImage_Error closure #1 in vImageConverterRef.convert<A, B>(from:to:)(const vImage_Buffer *a1, uint64_t a2, vImage_Error *a3, vImageConverter *a4)
{
  v12 = *MEMORY[0x1E69E9840];
  type metadata accessor for vImage.PixelBuffer();
  dests.data = vImage.PixelBuffer<>.vImageBuffer.getter();
  dests.height = v7;
  dests.width = v8;
  dests.rowBytes = v9;
  result = vImageConvert_AnyToAny(a4, a1, &dests, 0, 0x100u);
  *a3 = result;
  return result;
}

uint64_t vImageConverterRef.convert<A, B>(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a6;
  v37 = a1;
  v33 = a3;
  v34 = a4;
  v35 = a5;
  type metadata accessor for vImage.PixelBuffer();
  v10 = type metadata accessor for Array();
  type metadata accessor for vImage_Buffer(0);
  v12 = v11;
  WitnessTable = swift_getWitnessTable();
  v15 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in vImageConverterRef.convert<A, B>(from:to:), v32, v10, v12, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v14);
  v37 = a2;
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v31 = a6;
  type metadata accessor for vImage.PixelBuffer();
  v16 = type metadata accessor for Array();
  v17 = swift_getWitnessTable();
  v19 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #2 in vImageConverterRef.convert<A, B>(from:to:), v27, v16, v12, MEMORY[0x1E69E73E0], v17, MEMORY[0x1E69E7410], v18);
  v20 = vImageConvert_AnyToAny(converter, v15 + 1, v19 + 1, 0, 0x100u);

  if (v20)
  {
    lazy protocol witness table accessor for type vImage.Error and conformance vImage.Error();
    swift_allocError();
    v23 = v22;
    vImage.Error.init(rawValue:)(v20, &v37);
    v24 = v37;
    if (v37 == 20)
    {
      v24 = 11;
    }

    *v23 = v24;
    return swift_willThrow();
  }

  return result;
}

uint64_t partial apply for closure #1 in vImageConverterRef.convert<A, B>(from:to:)@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for vImage.PixelBuffer();
  result = vImage.PixelBuffer<>.vImageBuffer.getter();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t partial apply for closure #2 in vImageConverterRef.convert<A, B>(from:to:)@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for vImage.PixelBuffer();
  result = vImage.PixelBuffer<>.vImageBuffer.getter();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

vImageConverterRef static vImageConverterRef.make(sourceFormat:destinationFormat:colorConversionInfo:)(uint64_t a1, uint64_t a2, CGColorConversionInfoRef colorConversionInfoRef)
{
  v14 = *MEMORY[0x1E69E9840];
  error = 0;
  v3 = *(a2 + 16);
  *&dFormat.bitsPerComponent = *a2;
  *&dFormat.bitmapInfo = v3;
  *&dFormat.renderingIntent = *(a2 + 32);
  v4 = *(a1 + 16);
  *&sFormat.bitsPerComponent = *a1;
  *&sFormat.bitmapInfo = v4;
  *&sFormat.renderingIntent = *(a1 + 32);
  v5 = vImageConverter_CreateWithCGColorConversionInfo(colorConversionInfoRef, &sFormat, &dFormat, 0, 0x100u, &error);
  v6 = v5;
  v7 = error;
  if (error)
  {
    lazy protocol witness table accessor for type vImage.Error and conformance vImage.Error();
    swift_allocError();
    if ((v7 + 21784) >= 0x13)
    {
      v9 = 11;
    }

    else
    {
      v9 = -5 - v7;
    }
  }

  else
  {
    if (v5)
    {
      return v6;
    }

    lazy protocol witness table accessor for type vImage.Error and conformance vImage.Error();
    swift_allocError();
    v9 = 11;
  }

  *v8 = v9;
  swift_willThrow();
  return v6;
}

uint64_t vImageConverterRef.makeCVToCGPixelBuffers(referencing:)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(char *, uint64_t, uint64_t, uint64_t))
{
  result = a2(v3);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    v8 = MEMORY[0x1E69E7CC0];
    if (result)
    {
      v27 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, result, 0);
      v8 = v27;
      v9 = *(v27 + 16);
      v10 = 32 * v9 + 32;
      v11 = 0uLL;
      do
      {
        v27 = v8;
        v12 = *(v8 + 3);
        v13 = v9 + 1;
        if (v9 >= v12 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v12 > 1, v9 + 1, 1);
          v11 = 0uLL;
          v8 = v27;
        }

        *(v8 + 2) = v13;
        v14 = &v8[v10];
        *v14 = v11;
        *(v14 + 1) = v11;
        v10 += 32;
        v9 = v13;
        --v7;
      }

      while (v7);
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2), 0, v8);
    }

    v15 = a3(v8 + 32, v3, a1, 768);
    if (v15)
    {
      v16 = v15;

      lazy protocol witness table accessor for type vImage.Error and conformance vImage.Error();
      swift_allocError();
      v18 = v17;
      vImage.Error.init(rawValue:)(v16, &v27);
      v19 = v27;
      if (v27 == 20)
      {
        v19 = 11;
      }

      *v18 = v19;
      swift_willThrow();
    }

    else
    {
      v20 = *(v8 + 2);
      if (v20)
      {
        v27 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20, 0);
        v21 = 32;
        v16 = v27;
        do
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Accelerate6vImageO13BufferWrapperVGMd);
          v22 = swift_allocObject();
          v23 = *&v8[v21 + 16];
          *(v22 + 32) = *&v8[v21];
          *(v22 + 48) = v23;
          *(v22 + 16) = xmmword_1B7E76D90;
          *(v22 + 64) = 0;
          v27 = v16;
          v25 = *(v16 + 16);
          v24 = *(v16 + 24);
          if (v25 >= v24 >> 1)
          {
            v26 = v22;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1);
            v22 = v26;
            v16 = v27;
          }

          *(v16 + 16) = v25 + 1;
          *(v16 + 8 * v25 + 32) = v22;
          v21 += 32;
          --v20;
        }

        while (v20);
      }

      else
      {

        return MEMORY[0x1E69E7CC0];
      }
    }

    return v16;
  }

  return result;
}

double static BNNSActivation.identity.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 4) = vneg_f32(0x3F0000003FLL);
  *(a1 + 12) = 1;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void __swiftcall BNNSActivation.init(function:alpha:beta:)(BNNSActivation *__return_ptr retstr, BNNSActivationFunction function, Swift::Float alpha, Swift::Float beta)
{
  if (function - 9 < 2)
  {
    __break(1u);
  }

  else
  {
    retstr->function = function;
    retstr->alpha = alpha;
    retstr->beta = beta;
    retstr->iscale = 1;
    *&retstr->ioffset = 0u;
    *&retstr->ioffset_per_channel = 0u;
  }
}

uint64_t BNNSDataTypeFloat16.setter(BNNSDataType a1)
{
  result = swift_beginAccess();
  BNNSDataTypeFloat16 = a1;
  return result;
}

uint64_t BNNSDataTypeFloat32.setter(BNNSDataType a1)
{
  result = swift_beginAccess();
  BNNSDataTypeFloat32 = a1;
  return result;
}

uint64_t BNNSDataTypeInt8.setter(BNNSDataType a1)
{
  result = swift_beginAccess();
  BNNSDataTypeInt8 = a1;
  return result;
}

uint64_t BNNSDataTypeInt16.setter(BNNSDataType a1)
{
  result = swift_beginAccess();
  BNNSDataTypeInt16 = a1;
  return result;
}

uint64_t BNNSDataTypeInt32.setter(BNNSDataType a1)
{
  result = swift_beginAccess();
  BNNSDataTypeInt32 = a1;
  return result;
}

uint64_t BNNSDataTypeIndexed8.setter(BNNSDataType a1)
{
  result = swift_beginAccess();
  BNNSDataTypeIndexed8 = a1;
  return result;
}

uint64_t BNNSPoolingFunctionMax.setter(BNNSPoolingFunction a1)
{
  result = swift_beginAccess();
  BNNSPoolingFunctionMax = a1;
  return result;
}

uint64_t BNNSPoolingFunctionAverage.setter(BNNSPoolingFunction a1)
{
  result = swift_beginAccess();
  BNNSPoolingFunctionAverage = a1;
  return result;
}

uint64_t BNNSActivationFunctionIdentity.setter(BNNSActivationFunction a1)
{
  result = swift_beginAccess();
  BNNSActivationFunctionIdentity = a1;
  return result;
}

uint64_t BNNSActivationFunctionRectifiedLinear.setter(BNNSActivationFunction a1)
{
  result = swift_beginAccess();
  BNNSActivationFunctionRectifiedLinear = a1;
  return result;
}

uint64_t BNNSActivationFunctionLeakyRectifiedLinear.setter(BNNSActivationFunction a1)
{
  result = swift_beginAccess();
  BNNSActivationFunctionLeakyRectifiedLinear = a1;
  return result;
}

uint64_t BNNSActivationFunctionSigmoid.setter(BNNSActivationFunction a1)
{
  result = swift_beginAccess();
  BNNSActivationFunctionSigmoid = a1;
  return result;
}

uint64_t BNNSActivationFunctionTanh.setter(BNNSActivationFunction a1)
{
  result = swift_beginAccess();
  BNNSActivationFunctionTanh = a1;
  return result;
}

uint64_t BNNSActivationFunctionScaledTanh.setter(BNNSActivationFunction a1)
{
  result = swift_beginAccess();
  BNNSActivationFunctionScaledTanh = a1;
  return result;
}

uint64_t BNNSActivationFunctionAbs.setter(BNNSActivationFunction a1)
{
  result = swift_beginAccess();
  BNNSActivationFunctionAbs = a1;
  return result;
}

uint64_t BNNSFlagsUseClientPtr.setter(BNNSFlags a1)
{
  result = swift_beginAccess();
  BNNSFlagsUseClientPtr = a1;
  return result;
}

void __swiftcall BNNSImageStackDescriptor.init(width:height:channels:row_stride:image_stride:data_type:)(BNNSImageStackDescriptor *__return_ptr retstr, Swift::Int width, Swift::Int height, Swift::Int channels, Swift::Int row_stride, Swift::Int image_stride, BNNSDataType data_type)
{
  if (data_type == BNNSDataTypeIndexed8)
  {
    __break(1u);
  }

  else
  {
    retstr->width = width;
    retstr->height = height;
    retstr->channels = channels;
    retstr->row_stride = row_stride;
    retstr->image_stride = image_stride;
    retstr->data_type = data_type;
    *&retstr->data_scale = 1065353216;
  }
}

BNNSVectorDescriptor __swiftcall BNNSVectorDescriptor.init(size:data_type:)(Swift::Int size, BNNSDataType data_type)
{
  if (data_type == BNNSDataTypeIndexed8)
  {
    __break(1u);
  }

  else
  {
    v2 = 1.0;
    v3 = 0.0;
  }

  result.size = size;
  result.data_bias = v3;
  result.data_scale = v2;
  result.data_type = data_type;
  return result;
}

uint64_t BNNSLayerData.init(data:data_type:data_scale:data_bias:)@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>, float a4@<S0>, float a5@<S1>)
{
  if (a2 == 524296)
  {
    __break(1u);
  }

  else
  {
    *a3 = result;
    *(a3 + 8) = a2;
    *(a3 + 12) = a4;
    *(a3 + 16) = a5;
    *(a3 + 24) = 0;
  }

  return result;
}

void static BNNSLayerData.zero.getter(uint64_t a1@<X8>)
{
  *(a1 + 24) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

double static BNNSLayerData.indexed8(data:data_table:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = 524296;
  *&result = 1065353216;
  *(a3 + 12) = 1065353216;
  *(a3 + 24) = a2;
  return result;
}

float32x2_t static BNNSActivation.integerLinearSaturate(scale:offset:shift:)@<D0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = 9;
  result = vneg_f32(0x3F0000003FLL);
  *(a4 + 4) = result;
  *(a4 + 12) = a1;
  *(a4 + 16) = a2;
  *(a4 + 20) = a3;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 24) = 0;
  return result;
}

double static BNNSActivation.integerLinearSaturatePerChannel(scale:offset:shift:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 10;
  *(a4 + 4) = vneg_f32(0x3F0000003FLL);
  *&result = 1;
  *(a4 + 12) = 1;
  *(a4 + 20) = 0;
  *(a4 + 24) = a1;
  *(a4 + 32) = a2;
  *(a4 + 40) = a3;
  return result;
}

void __swiftcall BNNSConvolutionLayerParameters.init(x_stride:y_stride:x_padding:y_padding:k_width:k_height:in_channels:out_channels:weights:)(BNNSConvolutionLayerParameters *__return_ptr retstr, Swift::Int x_stride, Swift::Int y_stride, Swift::Int x_padding, Swift::Int y_padding, Swift::Int k_width, Swift::Int k_height, Swift::Int in_channels, Swift::Int out_channels, BNNSLayerData *weights)
{
  data = weights->data;
  data_type = weights->data_type;
  data_table = weights->data_table;
  retstr->x_stride = x_stride;
  retstr->y_stride = y_stride;
  retstr->x_padding = x_padding;
  retstr->y_padding = y_padding;
  retstr->k_width = k_width;
  retstr->k_height = k_height;
  retstr->in_channels = in_channels;
  retstr->out_channels = out_channels;
  retstr->weights.data = data;
  retstr->weights.data_type = data_type;
  *&retstr->weights.data_scale = *&weights->data_scale;
  retstr->bias.data_table = 0;
  retstr->activation.function = BNNSActivationFunctionIdentity;
  retstr->bias.data = 0;
  *&retstr->bias.data_type = 0;
  retstr->weights.data_table = data_table;
  retstr->bias.data_bias = 0.0;
  *&retstr->activation.alpha = vneg_f32(0x3F0000003FLL);
  retstr->activation.iscale = 1;
  *&retstr->activation.ioffset = 0u;
  *&retstr->activation.ioffset_per_channel = 0u;
}

void __swiftcall BNNSPoolingLayerParameters.init(x_stride:y_stride:x_padding:y_padding:k_width:k_height:in_channels:out_channels:pooling_function:)(BNNSPoolingLayerParameters *__return_ptr retstr, Swift::Int x_stride, Swift::Int y_stride, Swift::Int x_padding, Swift::Int y_padding, Swift::Int k_width, Swift::Int k_height, Swift::Int in_channels, Swift::Int out_channels, BNNSPoolingFunction pooling_function)
{
  retstr->x_stride = x_stride;
  retstr->y_stride = y_stride;
  retstr->x_padding = x_padding;
  retstr->y_padding = y_padding;
  retstr->k_width = k_width;
  retstr->k_height = k_height;
  retstr->in_channels = in_channels;
  retstr->out_channels = out_channels;
  retstr->pooling_function = pooling_function;
  retstr->bias.data_table = 0;
  retstr->activation.function = BNNSActivationFunctionIdentity;
  retstr->bias.data = 0;
  *&retstr->bias.data_type = 0;
  retstr->bias.data_bias = 0.0;
  *&retstr->activation.alpha = vneg_f32(0x3F0000003FLL);
  retstr->activation.iscale = 1;
  *&retstr->activation.ioffset = 0u;
  *&retstr->activation.ioffset_per_channel = 0u;
}

void __swiftcall BNNSFullyConnectedLayerParameters.init(in_size:out_size:weights:)(BNNSFullyConnectedLayerParameters *__return_ptr retstr, Swift::Int in_size, Swift::Int out_size, BNNSLayerData *weights)
{
  data = weights->data;
  data_type = weights->data_type;
  data_table = weights->data_table;
  retstr->in_size = in_size;
  retstr->out_size = out_size;
  retstr->weights.data = data;
  retstr->weights.data_type = data_type;
  *&retstr->weights.data_scale = *&weights->data_scale;
  retstr->bias.data_table = 0;
  retstr->activation.function = BNNSActivationFunctionIdentity;
  retstr->bias.data = 0;
  *&retstr->bias.data_type = 0;
  retstr->weights.data_table = data_table;
  retstr->bias.data_bias = 0.0;
  *&retstr->activation.alpha = vneg_f32(0x3F0000003FLL);
  retstr->activation.iscale = 1;
  *&retstr->activation.ioffset = 0u;
  *&retstr->activation.ioffset_per_channel = 0u;
}

uint64_t _sSa23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a6 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _ss12_ArrayBufferV010withUnsafeB7Pointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(v12, v15, v16, v17, v18, v19, v20, v14);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a6);
  }

  return result;
}

uint64_t AccelerateBuffer<>.withUnsafeBufferPointer<A>(_:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - v6;
  result = dispatch thunk of Sequence.withContiguousStorageIfAvailable<A>(_:)();
  if (!v2)
  {
    v9 = *(a1 - 8);
    result = (*(v9 + 48))(v7, 1, a1);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      return (*(v9 + 32))(a2, v7, a1);
    }
  }

  return result;
}

uint64_t AccelerateMutableBuffer<>.withUnsafeMutableBufferPointer<A>(_:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - v6;
  result = dispatch thunk of MutableCollection.withContiguousMutableStorageIfAvailable<A>(_:)();
  if (!v2)
  {
    v9 = *(a1 - 8);
    result = (*(v9 + 48))(v7, 1, a1);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      return (*(v9 + 32))(a2, v7, a1);
    }
  }

  return result;
}

void *protocol witness for AccelerateMutableBuffer.withUnsafeMutableBufferPointer<A>(_:) in conformance [A](void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a3;
  v6 = v4;
  Array._makeMutableAndUnique()();
  v8 = *v4;
  v9 = *(a4 + 16);
  if (_swift_isClassOrObjCExistentialType())
  {
    v10 = v8 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v10 = v8;
  }

  v11 = *(v10 + 16);
  if (_swift_isClassOrObjCExistentialType())
  {
    v12 = v8 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v12 = v8;
  }

  v16[0] = v12 + ((*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80));
  v13 = v16[0];
  v16[1] = v11;
  a1(v16);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  return _sSa30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysACRd_0_r_0_lFTm(v16, v13, v11, v6, v9, v17, v14, MEMORY[0x1E69E7288], MEMORY[0x1E69E62F8]);
}

void *protocol witness for AccelerateMutableBuffer.withUnsafeMutableBufferPointer<A>(_:) in conformance ContiguousArray<A>(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a3;
  ContiguousArray._makeMutableAndUnique()();
  v7 = *(*v4 + 16);
  v8 = *(a4 + 16);
  v12[0] = *v4 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80));
  v9 = v12[0];
  v12[1] = v7;
  a1(v12);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  return _sSa30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysACRd_0_r_0_lFTm(v12, v9, v7, v4, v8, v13, v10, MEMORY[0x1E69E7288], MEMORY[0x1E69E6BE8]);
}

uint64_t protocol witness for AccelerateBuffer.withUnsafeBufferPointer<A>(_:) in conformance [A](uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t *, uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t *))
{
  v18 = a2;
  v15 = *(a4 + 16);
  v16 = a3;
  v17 = a1;
  v11 = *v7;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  return a7(a6, &v14, v11, v15, a3, v12, MEMORY[0x1E69E7288], &v19);
}

uint64_t _ss15ContiguousArrayV23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v16(v15 + ((*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80)), *(v15 + 16), v13);
  if (v8)
  {
    return (*(v11 + 32))(a8, v13, a6);
  }

  return result;
}

void *protocol witness for AccelerateMutableBuffer.withUnsafeMutableBufferPointer<A>(_:) in conformance ArraySlice<A>(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[3] = a3;
  v6 = *(a4 + 16);
  v7 = ArraySlice.count.getter();
  ArraySlice._makeMutableAndUnique()();
  v10[0] = *(v4 + 8) + *(*(v6 - 8) + 72) * *(v4 + 16);
  v8 = v10[0];
  v10[1] = v7;
  a1(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  return _ss10ArraySliceV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lF(v10, v8, v7);
}

uint64_t protocol witness for AccelerateBuffer.withUnsafeBufferPointer<A>(_:) in conformance ArraySlice<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *(a4 + 16);
  v14 = a3;
  v15 = a1;
  v16 = a2;
  v6 = *v4;
  v7 = v4[1];
  v9 = v4[2];
  v8 = v4[3];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  return _ss10ArraySliceV23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@unowned UnsafeBufferPointer<A>) -> (@out A1, @error @owned Error), v12, v6, v7, v9, v8, v13, a3, v10, MEMORY[0x1E69E7288], &v17);
}

uint64_t _ss10ArraySliceV23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = *(a9 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _ss12_SliceBufferV010withUnsafeB7Pointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(v13, v16, v17, v18, v19, v20, v21, v22, a9, v23, v15);
  if (v11)
  {
    return (*(v12 + 32))(a11, v15, a9);
  }

  return result;
}

uint64_t protocol witness for AccelerateBuffer.count.getter in conformance <> Slice<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69908](a1, WitnessTable);
}

uint64_t AccelerateMutableBuffer<>.withUnsafePixelBuffer<A>(body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return AccelerateMutableBuffer<>.withUnsafePixelBuffer<A>(body:)(a1, a2, a3, a4, a5, partial apply for closure #1 in AccelerateMutableBuffer<>.withUnsafePixelBuffer<A>(body:));
}

{
  return AccelerateMutableBuffer<>.withUnsafePixelBuffer<A>(body:)(a1, a2, a3, a4, a5, partial apply for closure #1 in AccelerateMutableBuffer<>.withUnsafePixelBuffer<A>(body:));
}

{
  return AccelerateMutableBuffer<>.withUnsafePixelBuffer<A>(body:)(a1, a2, a3, a4, a5, partial apply for closure #1 in AccelerateMutableBuffer<>.withUnsafePixelBuffer<A>(body:));
}

{
  return AccelerateMutableBuffer<>.withUnsafePixelBuffer<A>(body:)(a1, a2, a3, a4, a5, partial apply for closure #1 in AccelerateMutableBuffer<>.withUnsafePixelBuffer<A>(body:));
}

uint64_t closure #1 in AccelerateMutableBuffer<>.withUnsafePixelBuffer<A>(body:)(uint64_t result, void (*a2)(uint64_t *))
{
  v2 = *result;
  if (*result)
  {
    v4 = *(result + 8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Accelerate6vImageO13BufferWrapperVGMd);
    result = swift_allocObject();
    *(result + 16) = xmmword_1B7E76D90;
    if ((v4 & 0x8000000000000000) == 0)
    {
      *(result + 32) = v2;
      *(result + 40) = 1;
      *(result + 48) = v4;
      *(result + 56) = v4;
      *(result + 64) = 0;
      v5 = result;
      a2(&v5);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v2 = *result;
  if (*result)
  {
    v3 = *(result + 8);
    if ((v3 - 0x2000000000000000) >> 62 == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Accelerate6vImageO13BufferWrapperVGMd);
      result = swift_allocObject();
      *(result + 16) = xmmword_1B7E76D90;
      if ((v3 & 0x8000000000000000) == 0)
      {
        *(result + 32) = v2;
        *(result + 40) = 1;
        *(result + 48) = v3;
        *(result + 56) = 4 * v3;
        *(result + 64) = 0;
        v5 = result;
        a2(&v5);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v2 = *result;
  if (*result)
  {
    v3 = *(result + 8);
    if (v3 + 0x4000000000000000 < 0)
    {
      __break(1u);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Accelerate6vImageO13BufferWrapperVGMd);
      result = swift_allocObject();
      *(result + 16) = xmmword_1B7E76D90;
      if ((v3 & 0x8000000000000000) == 0)
      {
        *(result + 32) = v2;
        *(result + 40) = 1;
        *(result + 48) = v3;
        *(result + 56) = 2 * v3;
        *(result + 64) = 0;
        v5 = result;
        a2(&v5);
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in AccelerateMutableBuffer<>.withUnsafePixelBuffer<A>(body:)(uint64_t a1)
{
  return partial apply for closure #1 in AccelerateMutableBuffer<>.withUnsafePixelBuffer<A>(body:)(a1, closure #1 in AccelerateMutableBuffer<>.withUnsafePixelBuffer<A>(body:));
}

{
  return closure #1 in AccelerateMutableBuffer<>.withUnsafePixelBuffer<A>(body:)(a1, *(v1 + 40));
}

{
  return partial apply for closure #1 in AccelerateMutableBuffer<>.withUnsafePixelBuffer<A>(body:)(a1, closure #1 in AccelerateMutableBuffer<>.withUnsafePixelBuffer<A>(body:));
}

{
  return partial apply for closure #1 in AccelerateMutableBuffer<>.withUnsafePixelBuffer<A>(body:)(a1);
}

{
  return partial apply for closure #1 in AccelerateMutableBuffer<>.withUnsafePixelBuffer<A>(body:)(a1);
}

uint64_t AccelerateMutableBuffer<>.withUnsafePixelBuffer<A>(body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[2] = a3;
  v7[3] = a4;
  v7[4] = a5;
  v7[5] = a1;
  v7[6] = a2;
  return (*(a5 + 16))(a6, v7, a4, a3);
}

Accelerate::AccelerateMatrixOrder_optional __swiftcall AccelerateMatrixOrder.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 102)
  {
    v1.value = Accelerate_AccelerateMatrixOrder_columnMajor;
  }

  else
  {
    v1.value = Accelerate_AccelerateMatrixOrder_unknownDefault;
  }

  if (rawValue == 101)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AccelerateMatrixOrder()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 102;
  }

  else
  {
    v2 = 101;
  }

  MEMORY[0x1B8CB1810](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AccelerateMatrixOrder()
{
  if (*v0)
  {
    v1 = 102;
  }

  else
  {
    v1 = 101;
  }

  return MEMORY[0x1B8CB1810](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AccelerateMatrixOrder()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 102;
  }

  else
  {
    v2 = 101;
  }

  MEMORY[0x1B8CB1810](v2);
  return Hasher._finalize()();
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance AccelerateMatrixOrder@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 102)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 101)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance AccelerateMatrixOrder(uint64_t *a1@<X8>)
{
  v2 = 101;
  if (*v1)
  {
    v2 = 102;
  }

  *a1 = v2;
}

uint64_t instantiation function for generic protocol witness table for [A](uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for ContiguousArray<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for ArraySlice<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for UnsafeMutableBufferPointer<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for <> Slice<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AccelerateMatrixOrder and conformance AccelerateMatrixOrder()
{
  result = lazy protocol witness table cache variable for type AccelerateMatrixOrder and conformance AccelerateMatrixOrder;
  if (!lazy protocol witness table cache variable for type AccelerateMatrixOrder and conformance AccelerateMatrixOrder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccelerateMatrixOrder and conformance AccelerateMatrixOrder);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for <> vImage.PixelBuffer<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t partial apply for thunk for @callee_guaranteed (@unowned UnsafeBufferPointer<A>) -> (@out A1, @error @owned Error)(uint64_t a1, uint64_t a2, void *a3)
{
  return partial apply for thunk for @callee_guaranteed (@unowned UnsafeBufferPointer<A>) -> (@out A1, @error @owned Error)(a1, a2, a3);
}

{
  result = (*(v3 + 32))();
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

uint64_t _ss12_ArrayBufferV010withUnsafeB7Pointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(uint64_t (*a1)(char *, uint64_t, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = a7;
  v29 = a8;
  v30 = a1;
  v13 = *(a6 - 8);
  v14 = MEMORY[0x1EEE9AC00](a1);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v27 - v17;
  if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && (a3 < 0 || (a3 & 0x4000000000000000) != 0))
  {
    v25 = v31;
    result = _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(v30, a2, a3, a4, a5, a6, v28, v18);
    v16 = v18;
    if (v25)
    {
      return (*(v13 + 32))(v29, v16, a6);
    }
  }

  else
  {
    if (_swift_isClassOrObjCExistentialType())
    {
      v19 = (((*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80)) + (a3 & 0xFFFFFFFFFFFFFF8));
    }

    else
    {
      v19 = (a3 + ((*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80)));
    }

    if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && (a3 < 0 || (a3 & 0x4000000000000000) != 0))
    {
      if (a3 < 0)
      {
        v26 = a3;
      }

      else
      {
        v26 = a3 & 0xFFFFFFFFFFFFFF8;
      }

      v22 = MEMORY[0x1B8CB16F0](v26);
    }

    else
    {
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
      v21 = a3 & 0xFFFFFFFFFFFFFF8;
      if ((isClassOrObjCExistentialType & 1) == 0)
      {
        v21 = a3;
      }

      v22 = *(v21 + 16);
    }

    v23 = v31;
    result = v30(v19, v22, v16);
    if (v23)
    {
      return (*(v13 + 32))(v29, v16, a6);
    }
  }

  return result;
}

uint64_t _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(uint64_t (*a1)(char *, uint64_t, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a8;
  v11 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedObject = _ArrayBuffer.getOrAllocateAssociatedObjectBuffer()(v14);
  v16 = (*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80);
  v17 = *(AssociatedObject + 2);

  v18 = v22;
  result = a1(&AssociatedObject[v16], v17, v13);
  if (v18)
  {
    return (*(v11 + 32))(v21, v13, a6);
  }

  return result;
}

void *_ArrayBuffer.getOrAllocateAssociatedObjectBuffer()(uint64_t a1)
{
  if (a1 < 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v1, MEMORY[0x1E69E7CC0]);
  if (AssociatedObject)
  {
    v3 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v1);
    v4 = objc_getAssociatedObject(v1, MEMORY[0x1E69E7CC0]);
    if (v4)
    {
      v3 = v4;
      swift_retain_n();
    }

    else
    {
      type metadata accessor for _ArrayBuffer();
      swift_getWitnessTable();
      v3 = _copyCollectionToContiguousArray<A>(_:)();

      objc_setAssociatedObject(v1, MEMORY[0x1E69E7CC0], v3, 1);
    }

    objc_sync_exit(v1);
  }

  return v3;
}

void *_sSa30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysACRd_0_r_0_lFTm(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(void, uint64_t))
{
  if (*result)
  {
    if (*result == a2)
    {
      if (result[1] == a3)
      {
        return a9(0, a5);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *_ss10ArraySliceV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lF(void *result, uint64_t a2, uint64_t a3)
{
  if (*result)
  {
    if (*result == a2)
    {
      if (result[1] == a3)
      {
        return type metadata accessor for ArraySlice();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _ss12_SliceBufferV010withUnsafeB7Pointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = *(a9 - 8);
  result = MEMORY[0x1EEE9AC00](a1);
  v20 = &v21 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__OFSUB__(v16 >> 1, v15))
  {
    __break(1u);
  }

  else
  {
    result = v18(v14 + *(*(v17 - 8) + 72) * v15, (v16 >> 1) - v15, &v21 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v11)
    {
      return (*(v12 + 32))(a11, v20, a9);
    }
  }

  return result;
}

uint64_t specialized _ArrayBuffer._nonNative.getter(uint64_t result)
{
  if (result >= 0)
  {
    return result & 0xFFFFFFFFFFFFFF8;
  }

  return result;
}

uint64_t BNNSNDArrayDescriptor.shape.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 4);
  if (v3 < 0x40000)
  {
    if (v3 >= 196608)
    {
      if (v3 <= 196609)
      {
        if (v3 == 196608)
        {
          v21 = *(v1 + 24);
          v22 = *(v1 + 88);
          v56 = *(v1 + 8);
          *v57 = v21;
          *&v57[8] = *(v1 + 72);
          *&v57[24] = v22;
          result = _s10Accelerate4BNNSO5ShapeOWOi4_(&v56);
        }

        else
        {
          v43 = *(v1 + 24);
          v44 = *(v1 + 88);
          v56 = *(v1 + 8);
          *v57 = v43;
          *&v57[8] = *(v1 + 72);
          *&v57[24] = v44;
          result = _s10Accelerate4BNNSO5ShapeOWOi7_(&v56);
        }

        goto LABEL_49;
      }

      switch(v3)
      {
        case 196610:
          v26 = *(v1 + 24);
          v27 = *(v1 + 88);
          v56 = *(v1 + 8);
          *v57 = v26;
          *&v57[8] = *(v1 + 72);
          *&v57[24] = v27;
          result = _s10Accelerate4BNNSO5ShapeOWOi8_(&v56);
          goto LABEL_49;
        case 229376:
          v12 = *(v1 + 24);
          v13 = *(v1 + 88);
          v56 = *(v1 + 8);
          *v57 = v12;
          *&v57[8] = *(v1 + 72);
          *&v57[24] = v13;
          result = _s10Accelerate4BNNSO5ShapeOWOi6_(&v56);
          goto LABEL_49;
        case 229377:
          v38 = *(v1 + 24);
          v39 = *(v1 + 88);
          v56 = *(v1 + 8);
          *v57 = v38;
          *&v57[8] = *(v1 + 72);
          *&v57[24] = v39;
          result = _s10Accelerate4BNNSO5ShapeOWOi5_(&v56);
          goto LABEL_49;
      }
    }

    else if (v3 <= 0x20000)
    {
      if (v3 == 0x10000)
      {
        v20 = *(v1 + 72);
        *&v56 = *(v1 + 8);
        *(&v56 + 1) = v20;
        result = _s10Accelerate4BNNSO5ShapeOWOi_(&v56);
        goto LABEL_49;
      }

      if (v3 == 0x20000)
      {
        v42 = *(v1 + 72);
        v56 = *(v1 + 8);
        *v57 = v42;
        result = _s10Accelerate4BNNSO5ShapeOWOi1_(&v56);
        goto LABEL_49;
      }
    }

    else
    {
      switch(v3)
      {
        case 131073:
          v25 = *(v1 + 72);
          v56 = *(v1 + 8);
          *v57 = v25;
          result = _s10Accelerate4BNNSO5ShapeOWOi0_(&v56);
          goto LABEL_49;
        case 163840:
          v8 = *(v1 + 72);
          v56 = *(v1 + 8);
          *v57 = v8;
          result = _s10Accelerate4BNNSO5ShapeOWOi3_(&v56);
          goto LABEL_49;
        case 163841:
          v37 = *(v1 + 72);
          v56 = *(v1 + 8);
          *v57 = v37;
          result = _s10Accelerate4BNNSO5ShapeOWOi2_(&v56);
          goto LABEL_49;
      }
    }
  }

  else if (v3 < 425984)
  {
    if (v3 <= 294912)
    {
      if (v3 == 0x40000)
      {
        v18 = *(v1 + 24);
        v56 = *(v1 + 8);
        *v57 = v18;
        v19 = *(v1 + 88);
        *&v57[16] = *(v1 + 72);
        *&v57[32] = v19;
        result = _s10Accelerate4BNNSO5ShapeOWOi9_(&v56);
        goto LABEL_49;
      }

      if (v3 == 294912)
      {
        v40 = *(v1 + 24);
        v56 = *(v1 + 8);
        *v57 = v40;
        v41 = *(v1 + 88);
        *&v57[16] = *(v1 + 72);
        *&v57[32] = v41;
        result = _s10Accelerate4BNNSO5ShapeOWOi11_(&v56);
        goto LABEL_49;
      }
    }

    else
    {
      switch(v3)
      {
        case 294913:
          v23 = *(v1 + 24);
          v56 = *(v1 + 8);
          *v57 = v23;
          v24 = *(v1 + 88);
          *&v57[16] = *(v1 + 72);
          *&v57[32] = v24;
          result = _s10Accelerate4BNNSO5ShapeOWOi10_(&v56);
          goto LABEL_49;
        case 360448:
          v9 = *(v1 + 40);
          v10 = *(v1 + 104);
          v11 = *(v1 + 24);
          v56 = *(v1 + 8);
          *v57 = v11;
          *&v57[16] = v9;
          *&v57[24] = *(v1 + 72);
          *&v57[40] = *(v1 + 88);
          *&v57[56] = v10;
          result = _s10Accelerate4BNNSO5ShapeOWOi13_(&v56);
          goto LABEL_49;
        case 360449:
          v34 = *(v1 + 40);
          v35 = *(v1 + 104);
          v36 = *(v1 + 24);
          v56 = *(v1 + 8);
          *v57 = v36;
          *&v57[16] = v34;
          *&v57[24] = *(v1 + 72);
          *&v57[40] = *(v1 + 88);
          *&v57[56] = v35;
          result = _s10Accelerate4BNNSO5ShapeOWOi12_(&v56);
          goto LABEL_49;
      }
    }
  }

  else if (v3 > 491520)
  {
    switch(v3)
    {
      case 491521:
        v31 = *(v1 + 56);
        v32 = *(v1 + 120);
        v33 = *(v1 + 24);
        v56 = *(v1 + 8);
        *v57 = v33;
        *&v57[16] = *(v1 + 40);
        *&v57[32] = v31;
        *&v57[40] = *(v1 + 72);
        *&v57[56] = *(v1 + 88);
        *&v57[72] = *(v1 + 104);
        *&v57[88] = v32;
        result = _s10Accelerate4BNNSO5ShapeOWOi16_(&v56);
        goto LABEL_49;
      case 557056:
        v14 = *(v1 + 88);
        *&v57[48] = *(v1 + 72);
        *&v57[64] = v14;
        v15 = *(v1 + 120);
        *&v57[80] = *(v1 + 104);
        v58 = v15;
        v16 = *(v1 + 24);
        v56 = *(v1 + 8);
        *v57 = v16;
        v17 = *(v1 + 56);
        *&v57[16] = *(v1 + 40);
        *&v57[32] = v17;
        result = _s10Accelerate4BNNSO5ShapeOWOi19_(&v56);
        goto LABEL_49;
      case 557057:
        v48 = *(v1 + 88);
        *&v57[48] = *(v1 + 72);
        *&v57[64] = v48;
        v49 = *(v1 + 120);
        *&v57[80] = *(v1 + 104);
        v58 = v49;
        v50 = *(v1 + 24);
        v56 = *(v1 + 8);
        *v57 = v50;
        v51 = *(v1 + 56);
        *&v57[16] = *(v1 + 40);
        *&v57[32] = v51;
        result = _s10Accelerate4BNNSO5ShapeOWOi18_(&v56);
        goto LABEL_49;
    }
  }

  else
  {
    switch(v3)
    {
      case 425984:
        v28 = *(v1 + 24);
        v56 = *(v1 + 8);
        *v57 = v28;
        v29 = *(v1 + 72);
        *&v57[16] = *(v1 + 40);
        *&v57[32] = v29;
        v30 = *(v1 + 104);
        *&v57[48] = *(v1 + 88);
        *&v57[64] = v30;
        result = _s10Accelerate4BNNSO5ShapeOWOi15_(&v56);
        goto LABEL_49;
      case 425985:
        v4 = *(v1 + 24);
        v56 = *(v1 + 8);
        *v57 = v4;
        v5 = *(v1 + 72);
        *&v57[16] = *(v1 + 40);
        *&v57[32] = v5;
        v6 = *(v1 + 104);
        *&v57[48] = *(v1 + 88);
        *&v57[64] = v6;
        result = _s10Accelerate4BNNSO5ShapeOWOi14_(&v56);
LABEL_49:
        v52 = v58;
        *(a1 + 96) = *&v57[80];
        *(a1 + 112) = v52;
        *(a1 + 128) = v59;
        v53 = *&v57[32];
        *(a1 + 32) = *&v57[16];
        *(a1 + 48) = v53;
        v54 = *&v57[64];
        *(a1 + 64) = *&v57[48];
        *(a1 + 80) = v54;
        v55 = *v57;
        *a1 = v56;
        *(a1 + 16) = v55;
        return result;
      case 491520:
        v45 = *(v1 + 56);
        v46 = *(v1 + 120);
        v47 = *(v1 + 24);
        v56 = *(v1 + 8);
        *v57 = v47;
        *&v57[16] = *(v1 + 40);
        *&v57[32] = v45;
        *&v57[40] = *(v1 + 72);
        *&v57[56] = *(v1 + 88);
        *&v57[72] = *(v1 + 104);
        *&v57[88] = v46;
        result = _s10Accelerate4BNNSO5ShapeOWOi17_(&v56);
        goto LABEL_49;
    }
  }

  _StringGuts.grow(_:)(18);
  MEMORY[0x1B8CB1340](0xD000000000000010, 0x80000001B7E7D970);
  type metadata accessor for BNNSDataLayout(0);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

__n128 static BNNSNDArrayDescriptor.allocateUninitialized(scalarType:shape:batchSize:)@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = *(a2 + 112);
  v17[6] = *(a2 + 96);
  v17[7] = v6;
  v18 = *(a2 + 128);
  v7 = *(a2 + 48);
  v17[2] = *(a2 + 32);
  v17[3] = v7;
  v8 = *(a2 + 80);
  v17[4] = *(a2 + 64);
  v17[5] = v8;
  v9 = *(a2 + 16);
  v17[0] = *a2;
  v17[1] = v9;
  v10 = (*(a1 + 8))();
  helper #1 <A>(_:) in static BNNSNDArrayDescriptor.allocateUninitialized(scalarType:shape:batchSize:)(a3, v17, v10, v16);
  v11 = v16[9];
  *(a4 + 128) = v16[8];
  *(a4 + 144) = v11;
  *(a4 + 160) = v16[10];
  v12 = v16[5];
  *(a4 + 64) = v16[4];
  *(a4 + 80) = v12;
  v13 = v16[7];
  *(a4 + 96) = v16[6];
  *(a4 + 112) = v13;
  v14 = v16[1];
  *a4 = v16[0];
  *(a4 + 16) = v14;
  result = v16[3];
  *(a4 + 32) = v16[2];
  *(a4 + 48) = result;
  return result;
}

Swift::Void __swiftcall BNNSNDArrayDescriptor.deallocate()()
{
  if (*(v0 + 136))
  {
    JUMPOUT(0x1B8CB2C50);
  }
}

__n128 BNNSNDArrayDescriptor.init(dataType:shape:)@<Q0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 112);
  v13[6] = *(a2 + 96);
  v13[7] = v4;
  v14 = *(a2 + 128);
  v5 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v5;
  v6 = *(a2 + 80);
  v13[4] = *(a2 + 64);
  v13[5] = v6;
  v7 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v7;
  specialized static BNNS.makeArrayDescriptor(shape:data:dataType:)(v13, 0, a1, v15);
  v8 = v15[9];
  *(a3 + 128) = v15[8];
  *(a3 + 144) = v8;
  *(a3 + 160) = v15[10];
  v9 = v15[5];
  *(a3 + 64) = v15[4];
  *(a3 + 80) = v9;
  v10 = v15[7];
  *(a3 + 96) = v15[6];
  *(a3 + 112) = v10;
  v11 = v15[1];
  *a3 = v15[0];
  *(a3 + 16) = v11;
  result = v15[3];
  *(a3 + 32) = v15[2];
  *(a3 + 48) = result;
  return result;
}

double BNNSNDArrayDescriptor.init(data:scalarType:shape:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *(a5 + 112);
  v32[6] = *(a5 + 96);
  v32[7] = v10;
  v33 = *(a5 + 128);
  v11 = *(a5 + 48);
  v32[2] = *(a5 + 32);
  v32[3] = v11;
  v12 = *(a5 + 80);
  v32[4] = *(a5 + 64);
  v32[5] = v12;
  v13 = *(a5 + 16);
  v32[0] = *a5;
  v32[1] = v13;
  v14 = (*(a4 + 8))(a3, a4);
  helper #1 <A>(_:) in BNNSNDArrayDescriptor.init(data:scalarType:shape:)(a1, a2, v32, v14, a3, v21);
  v15 = v29;
  *(a6 + 128) = v28;
  *(a6 + 144) = v15;
  *(a6 + 160) = v30;
  *(a6 + 176) = v31;
  v16 = v25;
  *(a6 + 64) = v24;
  *(a6 + 80) = v16;
  v17 = v27;
  *(a6 + 96) = v26;
  *(a6 + 112) = v17;
  v18 = v21[1];
  *a6 = v21[0];
  *(a6 + 16) = v18;
  result = *&v22;
  v20 = v23;
  *(a6 + 32) = v22;
  *(a6 + 48) = v20;
  return result;
}

void helper #1 <A>(_:) in BNNSNDArrayDescriptor.init(data:scalarType:shape:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, int a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v7 = a2 - a1;
  if (!a1)
  {
    v7 = 0;
  }

  v8 = *(*(a5 - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  if (v7 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_11;
  }

  LOBYTE(v35) = *(a3 + 128);
  v12 = *(a3 + 112);
  v33 = *(a3 + 96);
  v34 = v12;
  v13 = *(a3 + 48);
  v29 = *(a3 + 32);
  v30 = v13;
  v14 = *(a3 + 80);
  v31 = *(a3 + 64);
  v32 = v14;
  v15 = *(a3 + 16);
  v27 = *a3;
  v28 = v15;
  if (v7 / v8 == BNNS.Shape.batchStride.getter())
  {
    v16 = *(a3 + 112);
    v33 = *(a3 + 96);
    v34 = v16;
    LOBYTE(v35) = *(a3 + 128);
    v17 = *(a3 + 48);
    v29 = *(a3 + 32);
    v30 = v17;
    v18 = *(a3 + 80);
    v31 = *(a3 + 64);
    v32 = v18;
    v19 = *(a3 + 16);
    v27 = *a3;
    v28 = v19;
    specialized static BNNS.makeArrayDescriptor(shape:data:dataType:)(&v27, a1, a4, v25);
    _sSo21BNNSNDArrayDescriptoraSgWOi_(v25);
    v35 = v25[8];
    v36 = v25[9];
    v37 = v25[10];
    v38 = v26;
    v31 = v25[4];
    v32 = v25[5];
    v33 = v25[6];
    v34 = v25[7];
    v27 = v25[0];
    v28 = v25[1];
    v29 = v25[2];
    v30 = v25[3];
  }

  else
  {
    _sSo21BNNSNDArrayDescriptoraSgWOi0_(&v27);
  }

  v20 = v36;
  *(a6 + 128) = v35;
  *(a6 + 144) = v20;
  *(a6 + 160) = v37;
  *(a6 + 176) = v38;
  v21 = v32;
  *(a6 + 64) = v31;
  *(a6 + 80) = v21;
  v22 = v34;
  *(a6 + 96) = v33;
  *(a6 + 112) = v22;
  v23 = v28;
  *a6 = v27;
  *(a6 + 16) = v23;
  v24 = v30;
  *(a6 + 32) = v29;
  *(a6 + 48) = v24;
}

double BNNSNDArrayDescriptor.init<A>(data:shape:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = UnsafeMutableBufferPointer.baseAddress.getter();
  if (v10 && (v11 = v10, v12 = *(a2 + 112), v35 = *(a2 + 96), v36 = v12, LOBYTE(v37) = *(a2 + 128), v13 = *(a2 + 48), v31 = *(a2 + 32), v32 = v13, v14 = *(a2 + 80), v33 = *(a2 + 64), v34 = v14, v15 = *(a2 + 16), v29 = *a2, v30 = v15, BNNS.Shape.batchStride.getter() == a1))
  {
    v16 = *(a2 + 112);
    v35 = *(a2 + 96);
    v36 = v16;
    LOBYTE(v37) = *(a2 + 128);
    v17 = *(a2 + 48);
    v31 = *(a2 + 32);
    v32 = v17;
    v18 = *(a2 + 80);
    v33 = *(a2 + 64);
    v34 = v18;
    v19 = *(a2 + 16);
    v29 = *a2;
    v30 = v19;
    v20 = (*(a4 + 8))(a3, a4);
    specialized static BNNS.makeArrayDescriptor(shape:data:dataType:)(&v29, v11, v20, v27);
    _sSo21BNNSNDArrayDescriptoraSgWOi_(v27);
    v37 = v27[8];
    v38 = v27[9];
    v39 = v27[10];
    v40 = v28;
    v33 = v27[4];
    v34 = v27[5];
    v35 = v27[6];
    v36 = v27[7];
    v29 = v27[0];
    v30 = v27[1];
    v31 = v27[2];
    v32 = v27[3];
  }

  else
  {
    _sSo21BNNSNDArrayDescriptoraSgWOi0_(&v29);
  }

  v21 = v38;
  *(a5 + 128) = v37;
  *(a5 + 144) = v21;
  *(a5 + 160) = v39;
  *(a5 + 176) = v40;
  v22 = v34;
  *(a5 + 64) = v33;
  *(a5 + 80) = v22;
  v23 = v36;
  *(a5 + 96) = v35;
  *(a5 + 112) = v23;
  v24 = v30;
  *a5 = v29;
  *(a5 + 16) = v24;
  result = *&v31;
  v26 = v32;
  *(a5 + 32) = v31;
  *(a5 + 48) = v26;
  return result;
}

void helper #1 <A>(_:) in static BNNSNDArrayDescriptor.allocateUninitialized(scalarType:shape:batchSize:)(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, __int128 *a4@<X8>)
{
  v8 = *(a2 + 112);
  v31 = *(a2 + 96);
  v32 = v8;
  LOBYTE(v33) = *(a2 + 128);
  v9 = *(a2 + 48);
  v27 = *(a2 + 32);
  v28 = v9;
  v10 = *(a2 + 80);
  v29 = *(a2 + 64);
  v30 = v10;
  v11 = *(a2 + 16);
  v25 = *a2;
  v26 = v11;
  v12 = BNNS.Shape.batchStride.getter();
  if ((a1 * v12) >> 64 == (a1 * v12) >> 63)
  {
    v13 = static UnsafeMutablePointer.allocate(capacity:)();
    v14 = *(a2 + 112);
    v23[6] = *(a2 + 96);
    v23[7] = v14;
    v24 = *(a2 + 128);
    v15 = *(a2 + 48);
    v23[2] = *(a2 + 32);
    v23[3] = v15;
    v16 = *(a2 + 80);
    v23[4] = *(a2 + 64);
    v23[5] = v16;
    v17 = *(a2 + 16);
    v23[0] = *a2;
    v23[1] = v17;
    specialized static BNNS.makeArrayDescriptor(shape:data:dataType:)(v23, v13, a3, &v25);
    v18 = v34;
    a4[8] = v33;
    a4[9] = v18;
    a4[10] = v35;
    v19 = v30;
    a4[4] = v29;
    a4[5] = v19;
    v20 = v32;
    a4[6] = v31;
    a4[7] = v20;
    v21 = v26;
    *a4 = v25;
    a4[1] = v21;
    v22 = v28;
    a4[2] = v27;
    a4[3] = v22;
  }

  else
  {
    __break(1u);
  }
}

uint64_t static BNNSNDArrayDescriptor.allocate<A>(initializingFrom:shape:batchSize:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, __int128 *a6@<X8>)
{
  v39 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = *(AssociatedTypeWitness - 8);
  v38 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v36 - v12;
  swift_getAssociatedTypeWitness();
  v14 = (*(a5 + 8))();
  v15 = *(a2 + 112);
  v55 = *(a2 + 96);
  v56 = v15;
  LOBYTE(v57) = *(a2 + 128);
  v16 = *(a2 + 48);
  v51 = *(a2 + 32);
  v52 = v16;
  v17 = *(a2 + 80);
  v53 = *(a2 + 64);
  v54 = v17;
  v18 = *(a2 + 16);
  v49 = *a2;
  v50 = v18;
  v19 = BNNS.Shape.batchStride.getter();
  result = a3 * v19;
  if ((a3 * v19) >> 64 != (a3 * v19) >> 63)
  {
    __break(1u);
    goto LABEL_6;
  }

  v36 = a4;
  v21 = static UnsafeMutablePointer.allocate(capacity:)();
  v22 = *(a2 + 112);
  v46 = *(a2 + 96);
  v47 = v22;
  v48 = *(a2 + 128);
  v23 = *(a2 + 48);
  v42 = *(a2 + 32);
  v43 = v23;
  v24 = *(a2 + 80);
  v44 = *(a2 + 64);
  v45 = v24;
  v25 = *(a2 + 16);
  v40 = *a2;
  v41 = v25;
  specialized static BNNS.makeArrayDescriptor(shape:data:dataType:)(&v40, v21, v14, &v49);
  v26 = *(a2 + 112);
  v46 = *(a2 + 96);
  v47 = v26;
  v48 = *(a2 + 128);
  v27 = *(a2 + 48);
  v42 = *(a2 + 32);
  v43 = v27;
  v28 = *(a2 + 80);
  v44 = *(a2 + 64);
  v45 = v28;
  v29 = *(a2 + 16);
  v40 = *a2;
  v41 = v29;
  result = BNNS.Shape.batchStride.getter();
  if ((a3 * result) >> 64 != (a3 * result) >> 63)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  UnsafeMutableBufferPointer.init(start:count:)();
  v30 = UnsafeMutableBufferPointer.initialize<A>(from:)();
  (*(v37 + 8))(v13, v38);
  result = UnsafeMutableBufferPointer.endIndex.getter();
  if (v30 == result)
  {
    v31 = v58;
    a6[8] = v57;
    a6[9] = v31;
    a6[10] = v59;
    v32 = v54;
    a6[4] = v53;
    a6[5] = v32;
    v33 = v56;
    a6[6] = v55;
    a6[7] = v33;
    v34 = v50;
    *a6 = v49;
    a6[1] = v34;
    v35 = v52;
    a6[2] = v51;
    a6[3] = v35;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t static BNNSNDArrayDescriptor.allocate<A>(randomIn:shape:batchSize:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v14 = *(a2 + 112);
  v37 = *(a2 + 96);
  v38 = v14;
  LOBYTE(v39) = *(a2 + 128);
  v15 = *(a2 + 48);
  v33 = *(a2 + 32);
  v34 = v15;
  v16 = *(a2 + 80);
  v35 = *(a2 + 64);
  v36 = v16;
  v17 = *a2;
  v32 = *(a2 + 16);
  v31 = v17;
  result = BNNS.Shape.batchStride.getter();
  if ((a3 * result) >> 64 == (a3 * result) >> 63)
  {
    if (((a3 * result) & 0x8000000000000000) == 0)
    {
      *&v31 = 0;
      *(&v31 + 1) = a3 * result;
      MEMORY[0x1EEE9AC00](result);
      v29[2] = a4;
      v29[3] = a5;
      v29[4] = a6;
      v29[5] = a1;
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd);
      v20 = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
      v30 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in static BNNSNDArrayDescriptor.allocate<A>(randomIn:shape:batchSize:), v29, v19, a4, MEMORY[0x1E69E73E0], v20, MEMORY[0x1E69E7410], v21);
      v22 = type metadata accessor for Array();
      swift_getWitnessTable();
      static BNNSNDArrayDescriptor.allocate<A>(initializingFrom:shape:batchSize:)(&v30, a2, a3, v22, a5, &v31);

      v23 = v40;
      a7[8] = v39;
      a7[9] = v23;
      a7[10] = v41;
      v24 = v36;
      a7[4] = v35;
      a7[5] = v24;
      v25 = v38;
      a7[6] = v37;
      a7[7] = v25;
      v27 = v32;
      v26 = v33;
      *a7 = v31;
      a7[1] = v27;
      v28 = v34;
      a7[2] = v26;
      a7[3] = v28;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v14 = *(a2 + 112);
  v38 = *(a2 + 96);
  v39 = v14;
  LOBYTE(v40) = *(a2 + 128);
  v15 = *(a2 + 48);
  v34 = *(a2 + 32);
  v35 = v15;
  v16 = *(a2 + 80);
  v36 = *(a2 + 64);
  v37 = v16;
  v17 = *a2;
  v33 = *(a2 + 16);
  v32 = v17;
  result = BNNS.Shape.batchStride.getter();
  if ((a3 * result) >> 64 == (a3 * result) >> 63)
  {
    if (((a3 * result) & 0x8000000000000000) == 0)
    {
      *&v32 = 0;
      *(&v32 + 1) = a3 * result;
      MEMORY[0x1EEE9AC00](result);
      v30[2] = a4;
      v30[3] = a5;
      v30[4] = a6;
      v30[5] = v19;
      v30[6] = a1;
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd);
      v21 = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
      v31 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in static BNNSNDArrayDescriptor.allocate<A>(randomIn:shape:batchSize:), v30, v20, a4, MEMORY[0x1E69E73E0], v21, MEMORY[0x1E69E7410], v22);
      v23 = type metadata accessor for Array();
      swift_getWitnessTable();
      static BNNSNDArrayDescriptor.allocate<A>(initializingFrom:shape:batchSize:)(&v31, a2, a3, v23, a5, &v32);

      v24 = v41;
      a7[8] = v40;
      a7[9] = v24;
      a7[10] = v42;
      v25 = v37;
      a7[4] = v36;
      a7[5] = v25;
      v26 = v39;
      a7[6] = v38;
      a7[7] = v26;
      v28 = v33;
      v27 = v34;
      *a7 = v32;
      a7[1] = v28;
      v29 = v35;
      a7[2] = v27;
      a7[3] = v29;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static BNNSNDArrayDescriptor.allocate<A, B>(randomIn:using:shape:batchSize:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, _OWORD *a8@<X8>)
{
  v16 = *(a2 + 112);
  v41 = *(a2 + 96);
  v42 = v16;
  LOBYTE(v43) = *(a2 + 128);
  v17 = *(a2 + 48);
  v37 = *(a2 + 32);
  v38 = v17;
  v18 = *(a2 + 80);
  v39 = *(a2 + 64);
  v40 = v18;
  v19 = *a2;
  v36 = *(a2 + 16);
  v35 = v19;
  result = BNNS.Shape.batchStride.getter();
  if ((a3 * result) >> 64 == (a3 * result) >> 63)
  {
    if (((a3 * result) & 0x8000000000000000) == 0)
    {
      *&v35 = 0;
      *(&v35 + 1) = a3 * result;
      MEMORY[0x1EEE9AC00](result);
      v33[2] = a4;
      v33[3] = a5;
      v33[4] = a6;
      v33[5] = a7;
      v33[6] = v21;
      v33[7] = a1;
      v33[8] = v22;
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd);
      v24 = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
      v34 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in static BNNSNDArrayDescriptor.allocate<A, B>(randomIn:using:shape:batchSize:), v33, v23, a4, MEMORY[0x1E69E73E0], v24, MEMORY[0x1E69E7410], v25);
      v26 = type metadata accessor for Array();
      swift_getWitnessTable();
      static BNNSNDArrayDescriptor.allocate<A>(initializingFrom:shape:batchSize:)(&v34, a2, a3, v26, a6, &v35);

      v27 = v44;
      a8[8] = v43;
      a8[9] = v27;
      a8[10] = v45;
      v28 = v40;
      a8[4] = v39;
      a8[5] = v28;
      v29 = v42;
      a8[6] = v41;
      a8[7] = v29;
      v31 = v36;
      v30 = v37;
      *a8 = v35;
      a8[1] = v31;
      v32 = v38;
      a8[2] = v30;
      a8[3] = v32;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v16 = *(a2 + 112);
  v42 = *(a2 + 96);
  v43 = v16;
  LOBYTE(v44) = *(a2 + 128);
  v17 = *(a2 + 48);
  v38 = *(a2 + 32);
  v39 = v17;
  v18 = *(a2 + 80);
  v40 = *(a2 + 64);
  v41 = v18;
  v19 = *a2;
  v37 = *(a2 + 16);
  v36 = v19;
  result = BNNS.Shape.batchStride.getter();
  if ((a3 * result) >> 64 == (a3 * result) >> 63)
  {
    if (((a3 * result) & 0x8000000000000000) == 0)
    {
      *&v36 = 0;
      *(&v36 + 1) = a3 * result;
      MEMORY[0x1EEE9AC00](result);
      v34[2] = a4;
      v34[3] = a5;
      v34[4] = a6;
      v34[5] = a7;
      v34[6] = v22;
      v34[7] = v21;
      v34[8] = a1;
      v34[9] = v23;
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd);
      v25 = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
      v35 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in static BNNSNDArrayDescriptor.allocate<A, B>(randomIn:using:shape:batchSize:), v34, v24, a4, MEMORY[0x1E69E73E0], v25, MEMORY[0x1E69E7410], v26);
      v27 = type metadata accessor for Array();
      swift_getWitnessTable();
      static BNNSNDArrayDescriptor.allocate<A>(initializingFrom:shape:batchSize:)(&v35, a2, a3, v27, a6, &v36);

      v28 = v45;
      a8[8] = v44;
      a8[9] = v28;
      a8[10] = v46;
      v29 = v41;
      a8[4] = v40;
      a8[5] = v29;
      v30 = v43;
      a8[6] = v42;
      a8[7] = v30;
      v32 = v37;
      v31 = v38;
      *a8 = v36;
      a8[1] = v32;
      v33 = v39;
      a8[2] = v31;
      a8[3] = v33;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static BNNSNDArrayDescriptor.allocate<A>(repeating:shape:batchSize:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v12 = *(a2 + 112);
  v30 = *(a2 + 96);
  v31 = v12;
  LOBYTE(v32) = *(a2 + 128);
  v13 = *(a2 + 48);
  v26 = *(a2 + 32);
  v27 = v13;
  v14 = *(a2 + 80);
  v28 = *(a2 + 64);
  v29 = v14;
  v15 = *(a2 + 16);
  v24 = *a2;
  v25 = v15;
  result = BNNS.Shape.batchStride.getter();
  if ((a3 * result) >> 64 == (a3 * result) >> 63)
  {
    v23 = specialized Array.init(repeating:count:)(a1, a3 * result, a4);
    v17 = type metadata accessor for Array();
    swift_getWitnessTable();
    static BNNSNDArrayDescriptor.allocate<A>(initializingFrom:shape:batchSize:)(&v23, a2, a3, v17, a5, &v24);

    v18 = v33;
    a6[8] = v32;
    a6[9] = v18;
    a6[10] = v34;
    v19 = v29;
    a6[4] = v28;
    a6[5] = v19;
    v20 = v31;
    a6[6] = v30;
    a6[7] = v20;
    v21 = v25;
    *a6 = v24;
    a6[1] = v21;
    v22 = v27;
    a6[2] = v26;
    a6[3] = v22;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t BNNSNDArrayDescriptor.makeArray<A>(of:batchSize:)(uint64_t a1, uint64_t a2)
{
  if (!*(v2 + 136))
  {
    return 0;
  }

  BNNSNDArrayDescriptor.shape.getter(v6);
  result = BNNS.Shape.batchStride.getter();
  if ((a2 * result) >> 64 == (a2 * result) >> 63)
  {
    v6[0] = UnsafeBufferPointer.init(start:count:)();
    v6[1] = v5;
    type metadata accessor for UnsafeBufferPointer();
    swift_getWitnessTable();
    return Array.init<A>(_:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void BNNSNDArrayDescriptor.init(data:scalarType:shape:batchSize:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = *(a5 + 112);
  v24[6] = *(a5 + 96);
  v24[7] = v8;
  v25 = *(a5 + 128);
  v9 = *(a5 + 48);
  v24[2] = *(a5 + 32);
  v24[3] = v9;
  v10 = *(a5 + 80);
  v24[4] = *(a5 + 64);
  v24[5] = v10;
  v11 = *(a5 + 16);
  v24[0] = *a5;
  v24[1] = v11;
  if (a6 < 1)
  {
    __break(1u);
  }

  else
  {
    v16 = (*(a4 + 8))(a3, a4);
    helper #1 <A>(_:) in BNNSNDArrayDescriptor.init(data:scalarType:shape:batchSize:)(a1, a2, v24, a6, v16, a3, v22);
    v17 = v22[9];
    *(a7 + 128) = v22[8];
    *(a7 + 144) = v17;
    *(a7 + 160) = v22[10];
    *(a7 + 176) = v23;
    v18 = v22[5];
    *(a7 + 64) = v22[4];
    *(a7 + 80) = v18;
    v19 = v22[7];
    *(a7 + 96) = v22[6];
    *(a7 + 112) = v19;
    v20 = v22[1];
    *a7 = v22[0];
    *(a7 + 16) = v20;
    v21 = v22[3];
    *(a7 + 32) = v22[2];
    *(a7 + 48) = v21;
  }
}

void helper #1 <A>(_:) in BNNSNDArrayDescriptor.init(data:scalarType:shape:batchSize:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, int a5@<W5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  if (a1)
  {
    v8 = a2 - a1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(*(a6 - 8) + 72);
  if (!v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v8 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_14;
  }

  v14 = *(a3 + 112);
  v36 = *(a3 + 96);
  v37 = v14;
  LOBYTE(v38) = *(a3 + 128);
  v15 = *(a3 + 48);
  v32 = *(a3 + 32);
  v33 = v15;
  v16 = *(a3 + 80);
  v34 = *(a3 + 64);
  v35 = v16;
  v17 = *(a3 + 16);
  v30 = *a3;
  v31 = v17;
  v18 = BNNS.Shape.batchStride.getter();
  if ((v18 * a4) >> 64 != (v18 * a4) >> 63)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  if (v8 / v9 == v18 * a4)
  {
    v19 = *(a3 + 112);
    v36 = *(a3 + 96);
    v37 = v19;
    LOBYTE(v38) = *(a3 + 128);
    v20 = *(a3 + 48);
    v32 = *(a3 + 32);
    v33 = v20;
    v21 = *(a3 + 80);
    v34 = *(a3 + 64);
    v35 = v21;
    v22 = *(a3 + 16);
    v30 = *a3;
    v31 = v22;
    specialized static BNNS.makeArrayDescriptor(shape:data:dataType:)(&v30, a1, a5, v28);
    _sSo21BNNSNDArrayDescriptoraSgWOi_(v28);
    v38 = v28[8];
    v39 = v28[9];
    v40 = v28[10];
    v41 = v29;
    v34 = v28[4];
    v35 = v28[5];
    v36 = v28[6];
    v37 = v28[7];
    v30 = v28[0];
    v31 = v28[1];
    v32 = v28[2];
    v33 = v28[3];
  }

  else
  {
    _sSo21BNNSNDArrayDescriptoraSgWOi0_(&v30);
  }

  v23 = v39;
  *(a7 + 128) = v38;
  *(a7 + 144) = v23;
  *(a7 + 160) = v40;
  *(a7 + 176) = v41;
  v24 = v35;
  *(a7 + 64) = v34;
  *(a7 + 80) = v24;
  v25 = v37;
  *(a7 + 96) = v36;
  *(a7 + 112) = v25;
  v26 = v31;
  *a7 = v30;
  *(a7 + 16) = v26;
  v27 = v33;
  *(a7 + 32) = v32;
  *(a7 + 48) = v27;
}

void BNNSNDArrayDescriptor.init<A>(data:shape:batchSize:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  if (a3 < 1)
  {
    __break(1u);
  }

  else
  {
    v12 = UnsafeMutableBufferPointer.baseAddress.getter();
    if (!v12)
    {
      goto LABEL_6;
    }

    v13 = v12;
    v14 = *(a2 + 112);
    v37 = *(a2 + 96);
    v38 = v14;
    LOBYTE(v39) = *(a2 + 128);
    v15 = *(a2 + 48);
    v33 = *(a2 + 32);
    v34 = v15;
    v16 = *(a2 + 80);
    v35 = *(a2 + 64);
    v36 = v16;
    v17 = *(a2 + 16);
    v31 = *a2;
    v32 = v17;
    v18 = BNNS.Shape.batchStride.getter();
    if ((v18 * a3) >> 64 == (v18 * a3) >> 63)
    {
      if (v18 * a3 == a1)
      {
        v19 = *(a2 + 112);
        v37 = *(a2 + 96);
        v38 = v19;
        LOBYTE(v39) = *(a2 + 128);
        v20 = *(a2 + 48);
        v33 = *(a2 + 32);
        v34 = v20;
        v21 = *(a2 + 80);
        v35 = *(a2 + 64);
        v36 = v21;
        v22 = *(a2 + 16);
        v31 = *a2;
        v32 = v22;
        v23 = (*(a5 + 8))(a4, a5);
        specialized static BNNS.makeArrayDescriptor(shape:data:dataType:)(&v31, v13, v23, v29);
        _sSo21BNNSNDArrayDescriptoraSgWOi_(v29);
        v39 = v29[8];
        v40 = v29[9];
        v41 = v29[10];
        v42 = v30;
        v35 = v29[4];
        v36 = v29[5];
        v37 = v29[6];
        v38 = v29[7];
        v31 = v29[0];
        v32 = v29[1];
        v33 = v29[2];
        v34 = v29[3];
LABEL_7:
        v24 = v40;
        *(a6 + 128) = v39;
        *(a6 + 144) = v24;
        *(a6 + 160) = v41;
        *(a6 + 176) = v42;
        v25 = v36;
        *(a6 + 64) = v35;
        *(a6 + 80) = v25;
        v26 = v38;
        *(a6 + 96) = v37;
        *(a6 + 112) = v26;
        v27 = v32;
        *a6 = v31;
        *(a6 + 16) = v27;
        v28 = v34;
        *(a6 + 32) = v33;
        *(a6 + 48) = v28;
        return;
      }

LABEL_6:
      _sSo21BNNSNDArrayDescriptoraSgWOi0_(&v31);
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t specialized Array.init(repeating:count:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = static Array._allocateUninitialized(_:)();
  v15 = result;
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = v7;
      v9 = *(a3 - 8);
      v10 = *(v9 + 16);
      v10(v7, a1, a3);
      v11 = a2 - 1;
      if (v11)
      {
        v12 = *(v9 + 72);
        v13 = v8 + v12;
        do
        {
          v10(v13, a1, a3);
          v13 += v12;
          --v11;
        }

        while (v11);
      }
    }

    v14 = type metadata accessor for Array();
    destructiveProjectEnumData for vImage(v14);
    return v15;
  }

  return result;
}

uint64_t partial apply for closure #1 in static BNNSNDArrayDescriptor.allocate<A>(randomIn:shape:batchSize:)()
{
  return static FixedWidthInteger.random(in:)();
}

{
  return static BinaryFloatingPoint<>.random(in:)();
}

unint64_t lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>()
{
  result = lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>;
  if (!lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSnySiGMd);
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>);
  }

  return result;
}

uint64_t partial apply for closure #1 in static BNNSNDArrayDescriptor.allocate<A, B>(randomIn:using:shape:batchSize:)()
{
  return static FixedWidthInteger.random<A>(in:using:)();
}

{
  return static BinaryFloatingPoint<>.random<A>(in:using:)();
}

uint64_t static BNNS.compare(_:_:using:output:)(_OWORD *a1, _OWORD *a2, BNNSRelationalOperator a3, _OWORD *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a1[9];
  *&in0.stride[7] = a1[8];
  *&in0.data_type = v4;
  *&in0.table_data_type = a1[10];
  v5 = a1[5];
  *&in0.size[7] = a1[4];
  *&in0.stride[1] = v5;
  v6 = a1[7];
  *&in0.stride[3] = a1[6];
  *&in0.stride[5] = v6;
  v7 = a1[1];
  *&in0.flags = *a1;
  *&in0.size[1] = v7;
  v8 = a1[3];
  *&in0.size[3] = a1[2];
  *&in0.size[5] = v8;
  v9 = a2[9];
  *&in1.stride[7] = a2[8];
  *&in1.data_type = v9;
  *&in1.table_data_type = a2[10];
  v10 = a2[5];
  *&in1.size[7] = a2[4];
  *&in1.stride[1] = v10;
  v11 = a2[7];
  *&in1.stride[3] = a2[6];
  *&in1.stride[5] = v11;
  v12 = a2[1];
  *&in1.flags = *a2;
  *&in1.size[1] = v12;
  v13 = a2[3];
  *&in1.size[3] = a2[2];
  *&in1.size[5] = v13;
  v14 = a4[9];
  *&v21.stride[7] = a4[8];
  *&v21.data_type = v14;
  *&v21.table_data_type = a4[10];
  v15 = a4[5];
  *&v21.size[7] = a4[4];
  *&v21.stride[1] = v15;
  v16 = a4[7];
  *&v21.stride[3] = a4[6];
  *&v21.stride[5] = v16;
  v17 = a4[1];
  *&v21.flags = *a4;
  *&v21.size[1] = v17;
  v18 = a4[3];
  *&v21.size[3] = a4[2];
  *&v21.size[5] = v18;
  result = BNNSCompareTensor(&in0, &in1, a3, &v21);
  if (result)
  {
    lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
    swift_allocError();
    *v20 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t vImage.PixelBuffer<>.applyLookup(_:destination:)(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1E6958AB0];

  return vImage.PixelBuffer<>.applyLookup(_:destination:)(a1, a2, v2);
}

{
  v2 = MEMORY[0x1E6958930];

  return vImage.PixelBuffer<>.applyLookup(_:destination:)(a1, a2, v2);
}

{
  v2 = MEMORY[0x1E6958940];

  return vImage.PixelBuffer<>.applyLookup(_:destination:)(a1, a2, v2);
}

{
  v2 = MEMORY[0x1E6958938];

  return vImage.PixelBuffer<>.applyLookup(_:destination:)(a1, a2, v2);
}

vImage_Error vImage.PixelBuffer<>.applyLookup(_:destination:)(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(a1 + 16) != 256)
  {
    __break(1u);
    goto LABEL_16;
  }

  v3 = *v2;
  if (!*(*v2 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v4 = v3[6];
  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = v3[5];
  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v4)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!v5)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = *a2;
  if (!*(*a2 + 16))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v7 = v6[6];
  if (v7 < 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v8 = v6[5];
  if (v8 < 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!v7)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v8)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v4 != v7)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  if (v5 != v8)
  {
    goto LABEL_27;
  }

  v9 = v3[4];
  v10 = v3[7];
  src.data = v9;
  src.height = v5;
  src.width = v4;
  src.rowBytes = v10;
  v11 = v6[4];
  v12 = v6[7];
  dest.data = v11;
  dest.height = v5;
  dest.width = v4;
  dest.rowBytes = v12;
  return vImageLookupTable_Planar8toPlanar24(&src, &dest, (a1 + 32), 0);
}

{
  v16 = *MEMORY[0x1E69E9840];
  if (*(a1 + 16) != 4096)
  {
    __break(1u);
    goto LABEL_16;
  }

  v3 = *v2;
  if (!*(*v2 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v4 = v3[6];
  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = v3[5];
  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v4)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!v5)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = *a2;
  if (!*(*a2 + 16))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v7 = v6[6];
  if (v7 < 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v8 = v6[5];
  if (v8 < 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!v7)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v8)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v4 != v7)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  if (v5 != v8)
  {
    goto LABEL_27;
  }

  v9 = v3[4];
  v10 = v3[7];
  src.data = v9;
  src.height = v5;
  src.width = v4;
  src.rowBytes = v10;
  v11 = v6[4];
  v12 = v6[7];
  dest.data = v11;
  dest.height = v5;
  dest.width = v4;
  dest.rowBytes = v12;
  return vImageLookupTable_PlanarFtoPlanar8(&src, &dest, (a1 + 32), 0);
}

{
  v17 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  if (!v3)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = *v2;
  if (!*(*v2 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v5 = v4[6];
  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6 = v4[5];
  if ((v6 & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!v6)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = *a2;
  if (!*(*a2 + 16))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v8 = v7[6];
  if (v8 < 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v9 = v7[5];
  if (v9 < 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!v8)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v9)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v5 != v8)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  if (v6 != v9)
  {
    goto LABEL_27;
  }

  v10 = v4[4];
  v11 = v4[7];
  src.data = v10;
  src.height = v6;
  src.width = v5;
  src.rowBytes = v11;
  v12 = v7[4];
  v13 = v7[7];
  dest.data = v12;
  dest.height = v6;
  dest.width = v5;
  dest.rowBytes = v13;
  return vImageInterpolatedLookupTable_PlanarF(&src, &dest, (a1 + 32), v3, 1.0, 0.0, 0);
}

{
  v16 = *MEMORY[0x1E69E9840];
  if (*(a1 + 16) != 0x10000)
  {
    __break(1u);
    goto LABEL_16;
  }

  v3 = *v2;
  if (!*(*v2 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v4 = v3[6];
  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = v3[5];
  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v4)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!v5)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = *a2;
  if (!*(*a2 + 16))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v7 = v6[6];
  if (v7 < 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v8 = v6[5];
  if (v8 < 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!v7)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v8)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v4 != v7)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  if (v5 != v8)
  {
    goto LABEL_27;
  }

  v9 = v3[4];
  v10 = v3[7];
  src.data = v9;
  src.height = v5;
  src.width = v4;
  src.rowBytes = v10;
  v11 = v6[4];
  v12 = v6[7];
  dest.data = v11;
  dest.height = v5;
  dest.width = v4;
  dest.rowBytes = v12;
  return vImageLookupTable_Planar16(&src, &dest, (a1 + 32), 0);
}

uint64_t vImage.PixelBuffer<>.applyLookup(_:destination:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, void *, uint64_t, void))
{
  v16[4] = *MEMORY[0x1E69E9840];
  if (*(a1 + 16) != 256)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = *v3;
  if (!*(*v3 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v5 = v4[6];
  if (v5 < 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6 = v4[5];
  if (v6 < 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!v6)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = *a2;
  if (!*(*a2 + 16))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v8 = v7[6];
  if (v8 < 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v9 = v7[5];
  if (v9 < 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!v8)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v9)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v5 != v8)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  if (v6 != v9)
  {
    goto LABEL_27;
  }

  v10 = v4[4];
  v11 = v4[7];
  v16[0] = v10;
  v16[1] = v6;
  v16[2] = v5;
  v16[3] = v11;
  v12 = v7[4];
  v13 = v7[7];
  v15[0] = v12;
  v15[1] = v6;
  v15[2] = v5;
  v15[3] = v13;
  return a3(v16, v15, a1 + 32, 0);
}

vImage_Error vImage.PixelBuffer<>.applyLookup(alphaTable:redTable:greenTable:blueTable:destination:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a1 && *(a1 + 16) != 256)
  {
    goto LABEL_44;
  }

  if (a2 && *(a2 + 16) != 256)
  {
    goto LABEL_45;
  }

  if (a3 && *(a3 + 16) != 256)
  {
    goto LABEL_46;
  }

  if (a4 && *(a4 + 16) != 256)
  {
LABEL_47:
    __break(1u);
  }

  v6 = *v5;
  if (!*(*v5 + 16))
  {
    __break(1u);
    goto LABEL_33;
  }

  v7 = v6[6];
  if ((v7 & 0x8000000000000000) != 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v8 = v6[5];
  if ((v8 & 0x8000000000000000) != 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (!v7)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (!v8)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v9 = *a5;
  if (!*(*a5 + 16))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v10 = v9[6];
  if (v10 < 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v11 = v9[5];
  if (v11 < 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (!v10)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (!v11)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v7 != v10)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v8 != v11)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v12 = v6[4];
  v13 = v6[7];
  src.data = v12;
  src.height = v8;
  src.width = v7;
  src.rowBytes = v13;
  v14 = v9[4];
  v15 = v9[7];
  dest.data = v14;
  dest.height = v8;
  v16 = (a1 + 32);
  if (!a1)
  {
    v16 = 0;
  }

  v17 = (a2 + 32);
  if (!a2)
  {
    v17 = 0;
  }

  if (a3)
  {
    v18 = (a3 + 32);
  }

  else
  {
    v18 = 0;
  }

  if (a4)
  {
    v19 = (a4 + 32);
  }

  else
  {
    v19 = 0;
  }

  dest.width = v7;
  dest.rowBytes = v15;
  return vImageTableLookUp_ARGB8888(&src, &dest, v16, v17, v18, v19, 0);
}

uint64_t BNNS.UnaryArithmeticLayer.__allocating_init(input:inputDescriptorType:output:outputDescriptorType:function:activation:filterParameters:)(_OWORD *a1, unsigned __int8 *a2, _OWORD *a3, unsigned __int8 *a4, uint64_t a5, uint64_t *a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v53 = *MEMORY[0x1E69E9840];
  v12 = a1[9];
  v37[8] = a1[8];
  v37[9] = v12;
  v37[10] = a1[10];
  v13 = a1[5];
  v37[4] = a1[4];
  v37[5] = v13;
  v14 = a1[7];
  v37[6] = a1[6];
  v37[7] = v14;
  v15 = a1[1];
  v37[0] = *a1;
  v37[1] = v15;
  v16 = a1[3];
  v37[2] = a1[2];
  v37[3] = v16;
  v17 = a3[5];
  *&v52[68] = a3[4];
  v18 = a3[2];
  *&v52[52] = a3[3];
  v19 = a3[6];
  *&v52[116] = a3[7];
  v20 = a3[9];
  *&v52[132] = a3[8];
  *&v52[148] = v20;
  *&v52[164] = a3[10];
  *&v52[84] = v17;
  *&v52[100] = v19;
  v21 = a3[1];
  *&v52[4] = *a3;
  *&v52[20] = v21;
  *&v52[36] = v18;
  v48 = *&v52[144];
  v49 = *&v52[160];
  v44 = *&v52[80];
  v45 = *&v52[96];
  v46 = *&v52[112];
  v47 = *&v52[128];
  v43 = *&v52[64];
  v39 = *v52;
  v40 = *&v52[16];
  v41 = *&v52[32];
  v22 = *a4;
  v23 = *a6;
  v24 = *(a6 + 8);
  v38 = *a2;
  v50 = *&v52[176];
  v42 = *&v52[48];
  v51 = v22;
  v25 = BNNS.ArithmeticUnaryFunction.bnnsArithmeticFunction.getter();
  v30 = v23;
  LOBYTE(v31) = v24;
  v26.n128_f64[0] = BNNS.ActivationFunction.bnnsActivation.getter(&v36);
  v34 = v25;
  v35 = v37;
  if (a9 == 1)
  {
    v27 = 0;
  }

  else
  {
    LODWORD(v30) = a7;
    v31 = a8;
    v32 = a9;
    v33 = a10;
    v27 = &v30;
  }

  v28 = MEMORY[0x1B8CB1A20](&v34, v27, v26);
  type metadata accessor for BNNS.UnaryArithmeticLayer();
  result = swift_allocObject();
  if (v28)
  {
    *(result + 16) = v28;
  }

  else
  {
    type metadata accessor for BNNS.Layer();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t BNNS.UnaryArithmeticLayer.apply(batchSize:input:output:)(size_t a1, uint64_t a2, uint64_t a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (*(a2 + 136) && (v4 = *(a3 + 136)) != 0)
  {
    v11 = *(a2 + 136);
    v6 = *(v3 + 16);
    BNNSNDArrayDescriptor.shape.getter(v12);
    v13[0] = BNNS.Shape.batchStride.getter();
    BNNSNDArrayDescriptor.shape.getter(v12);
    v7 = BNNS.Shape.batchStride.getter();
    result = BNNSArithmeticFilterApplyBatch(v6, a1, 1uLL, &v11, v13, v4, v7);
    if (!result)
    {
      return result;
    }

    lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
    swift_allocError();
    *v9 = 0;
  }

  else
  {
    lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
    swift_allocError();
    *v10 = 2;
  }

  return swift_willThrow();
}

uint64_t BNNS.UnaryArithmeticLayer.applyBackward(batchSize:input:output:outputGradient:generatingInputGradient:)(size_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, _OWORD *a5)
{
  v37 = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySVSgGMd);
  v32 = swift_allocObject();
  *(v32 + 32) = *(a2 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
  v30 = swift_allocObject();
  BNNSNDArrayDescriptor.shape.getter(v36);
  *(v30 + 32) = BNNS.Shape.batchStride.getter();
  v9 = a5[9];
  v36[8] = a5[8];
  v36[9] = v9;
  v36[10] = a5[10];
  v10 = a5[5];
  v36[4] = a5[4];
  v36[5] = v10;
  v11 = a5[7];
  v36[6] = a5[6];
  v36[7] = v11;
  v12 = a5[1];
  v36[0] = *a5;
  v36[1] = v12;
  v13 = a5[3];
  v36[2] = a5[2];
  v36[3] = v13;
  v14 = a4[9];
  *&out_delta.stride[7] = a4[8];
  *&out_delta.data_type = v14;
  *&out_delta.table_data_type = a4[10];
  v15 = a4[5];
  *&out_delta.size[7] = a4[4];
  *&out_delta.stride[1] = v15;
  v16 = a4[7];
  *&out_delta.stride[3] = a4[6];
  *&out_delta.stride[5] = v16;
  v17 = a4[1];
  *&out_delta.flags = *a4;
  *&out_delta.size[1] = v17;
  v18 = a4[3];
  *&out_delta.size[3] = a4[2];
  *&out_delta.size[5] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySpySo21BNNSNDArrayDescriptoraGGMd);
  v19 = swift_allocObject();
  *(v19 + 32) = v36;
  v20 = (v19 + 32);
  v21 = *(v5 + 16);
  v22 = swift_allocObject();
  BNNSNDArrayDescriptor.shape.getter(v34);
  *(v22 + 32) = BNNS.Shape.batchStride.getter();
  v23 = *(a3 + 136);
  BNNSNDArrayDescriptor.shape.getter(v34);
  out_stride = BNNS.Shape.batchStride.getter();
  BNNSNDArrayDescriptor.shape.getter(v33);
  v25 = BNNS.Shape.batchStride.getter();
  v26 = BNNSArithmeticFilterApplyBackwardBatch(v21, a1, 1uLL, (v32 + 32), (v22 + 32), v20, (v30 + 32), v23, out_stride, &out_delta, v25);
  swift_setDeallocating();
  swift_deallocClassInstance();
  swift_setDeallocating();
  swift_deallocClassInstance();
  swift_setDeallocating();
  swift_deallocClassInstance();
  if (v26)
  {
    lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
    swift_allocError();
    *v27 = 0;
    swift_willThrow();
  }

  swift_setDeallocating();
  return swift_deallocClassInstance();
}

uint64_t BNNS.UnaryArithmeticLayer.__deallocating_deinit()
{
  BNNSFilterDestroy(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t BNNS.BinaryArithmeticLayer.__allocating_init(inputA:inputADescriptorType:inputB:inputBDescriptorType:output:outputDescriptorType:function:activation:filterParameters:)(_OWORD *a1, unsigned __int8 *a2, _OWORD *a3, unsigned __int8 *a4, _OWORD *a5, unsigned __int8 *a6, char *a7, uint64_t *a8, int a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v75 = *MEMORY[0x1E69E9840];
  v12 = a1[9];
  v45[8] = a1[8];
  v45[9] = v12;
  v45[10] = a1[10];
  v13 = a1[5];
  v45[4] = a1[4];
  v45[5] = v13;
  v14 = a1[7];
  v45[6] = a1[6];
  v45[7] = v14;
  v15 = a1[1];
  v45[0] = *a1;
  v45[1] = v15;
  v16 = a1[3];
  v45[2] = a1[2];
  v45[3] = v16;
  v17 = a3[6];
  *&v74[116] = a3[7];
  v18 = a3[9];
  *&v74[132] = a3[8];
  *&v74[148] = v18;
  *&v74[164] = a3[10];
  v19 = a3[2];
  *&v74[52] = a3[3];
  v20 = a3[5];
  *&v74[68] = a3[4];
  *&v74[84] = v20;
  *&v74[100] = v17;
  v21 = a3[1];
  *&v74[4] = *a3;
  *&v74[20] = v21;
  *&v74[36] = v19;
  v22 = a5[6];
  *&v73[116] = a5[7];
  v23 = a5[9];
  *&v73[132] = a5[8];
  *&v73[148] = v23;
  *&v73[164] = a5[10];
  v24 = a5[2];
  *&v73[52] = a5[3];
  v25 = a5[5];
  *&v73[68] = a5[4];
  *&v73[84] = v25;
  *&v73[100] = v22;
  v26 = a5[1];
  *&v73[4] = *a5;
  *&v73[20] = v26;
  *&v73[36] = v24;
  v56 = *&v74[144];
  v57 = *&v74[160];
  v52 = *&v74[80];
  v53 = *&v74[96];
  v27 = *a2;
  v28 = *a4;
  v29 = *a6;
  v30 = *a7;
  v31 = *a8;
  v32 = *(a8 + 8);
  v54 = *&v74[112];
  v55 = *&v74[128];
  v46 = v27;
  v58 = *&v74[176];
  v51 = *&v74[64];
  v47 = *v74;
  v48 = *&v74[16];
  v49 = *&v74[32];
  v50 = *&v74[48];
  v59 = v28;
  v68 = *&v73[128];
  v69 = *&v73[144];
  v70 = *&v73[160];
  v64 = *&v73[64];
  v65 = *&v73[80];
  v66 = *&v73[96];
  v67 = *&v73[112];
  v60 = *v73;
  v61 = *&v73[16];
  v62 = *&v73[32];
  v63 = *&v73[48];
  v71 = *&v73[176];
  v72 = v29;
  v33 = dword_1B7E7A9D8[v30];
  v38 = v31;
  LOBYTE(v39) = v32;
  v34.n128_f64[0] = BNNS.ActivationFunction.bnnsActivation.getter(&v44);
  v42 = v33;
  v43 = v45;
  if (a11 == 1)
  {
    v35 = 0;
  }

  else
  {
    LODWORD(v38) = a9;
    v39 = a10;
    v40 = a11;
    v41 = a12;
    v35 = &v38;
  }

  v36 = MEMORY[0x1B8CB1A20](&v42, v35, v34);
  type metadata accessor for BNNS.BinaryArithmeticLayer();
  result = swift_allocObject();
  if (v36)
  {
    *(result + 16) = v36;
  }

  else
  {
    type metadata accessor for BNNS.Layer();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t BNNS.BinaryArithmeticLayer.apply(batchSize:inputA:inputB:output:)(size_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 136);
  if (v5 && (v6 = *(a3 + 136)) != 0 && (v7 = *(a4 + 136)) != 0)
  {
    v19 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySVGMd);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1B7E77850;
    *(v8 + 32) = v5;
    v9 = (v8 + 32);
    *(v8 + 40) = v6;
    v10 = *(v4 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
    v11 = swift_allocObject();
    BNNSNDArrayDescriptor.shape.getter(v18);
    *(v11 + 32) = BNNS.Shape.batchStride.getter();
    BNNSNDArrayDescriptor.shape.getter(v17);
    *(v11 + 40) = BNNS.Shape.batchStride.getter();
    BNNSNDArrayDescriptor.shape.getter(v18);
    v12 = BNNS.Shape.batchStride.getter();
    v13 = BNNSArithmeticFilterApplyBatch(v10, v19, 2uLL, v9, (v11 + 32), v7, v12);
    swift_setDeallocating();
    swift_deallocClassInstance();

    if (!v13)
    {
      return result;
    }

    v15 = 0;
  }

  else
  {
    v15 = 2;
  }

  lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
  swift_allocError();
  *v16 = v15;
  return swift_willThrow();
}

uint64_t BNNS.BinaryArithmeticLayer.applyBackward(batchSize:inputA:inputB:output:outputGradient:generatingInputAGradient:generatingInputBGradient:)(size_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, _OWORD *a6, _OWORD *a7)
{
  v47 = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySVSgGMd);
  v12 = swift_allocObject();
  *(v12 + 32) = *(a2 + 136);
  v40 = (v12 + 32);
  *(v12 + 40) = *(a3 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
  v39 = swift_allocObject();
  BNNSNDArrayDescriptor.shape.getter(v46);
  *(v39 + 32) = BNNS.Shape.batchStride.getter();
  BNNSNDArrayDescriptor.shape.getter(v45);
  *(v39 + 40) = BNNS.Shape.batchStride.getter();
  v13 = a6[9];
  v46[8] = a6[8];
  v46[9] = v13;
  v46[10] = a6[10];
  v14 = a6[5];
  v46[4] = a6[4];
  v46[5] = v14;
  v15 = a6[7];
  v46[6] = a6[6];
  v46[7] = v15;
  v16 = a6[1];
  v46[0] = *a6;
  v46[1] = v16;
  v17 = a6[3];
  v46[2] = a6[2];
  v46[3] = v17;
  v18 = a7[9];
  v45[8] = a7[8];
  v45[9] = v18;
  v45[10] = a7[10];
  v19 = a7[5];
  v45[4] = a7[4];
  v45[5] = v19;
  v20 = a7[7];
  v45[6] = a7[6];
  v45[7] = v20;
  v21 = a7[1];
  v45[0] = *a7;
  v45[1] = v21;
  v22 = a7[3];
  v45[2] = a7[2];
  v45[3] = v22;
  v23 = a5[9];
  *&out_delta.stride[7] = a5[8];
  *&out_delta.data_type = v23;
  *&out_delta.table_data_type = a5[10];
  v24 = a5[5];
  *&out_delta.size[7] = a5[4];
  *&out_delta.stride[1] = v24;
  v25 = a5[7];
  *&out_delta.stride[3] = a5[6];
  *&out_delta.stride[5] = v25;
  v26 = a5[1];
  *&out_delta.flags = *a5;
  *&out_delta.size[1] = v26;
  v27 = a5[3];
  *&out_delta.size[3] = a5[2];
  *&out_delta.size[5] = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySpySo21BNNSNDArrayDescriptoraGGMd);
  v28 = swift_allocObject();
  *(v28 + 32) = v46;
  v29 = (v28 + 32);
  *(v28 + 40) = v45;
  v30 = *(v37 + 16);
  v31 = swift_allocObject();
  BNNSNDArrayDescriptor.shape.getter(v43);
  *(v31 + 32) = BNNS.Shape.batchStride.getter();
  BNNSNDArrayDescriptor.shape.getter(v42);
  *(v31 + 40) = BNNS.Shape.batchStride.getter();
  v32 = *(a4 + 136);
  BNNSNDArrayDescriptor.shape.getter(v43);
  out_stride = BNNS.Shape.batchStride.getter();
  BNNSNDArrayDescriptor.shape.getter(v42);
  v34 = BNNS.Shape.batchStride.getter();
  LODWORD(a2) = BNNSArithmeticFilterApplyBackwardBatch(v30, a1, 2uLL, v40, (v31 + 32), v29, (v39 + 32), v32, out_stride, &out_delta, v34);
  swift_setDeallocating();
  swift_deallocClassInstance();
  swift_setDeallocating();
  swift_deallocClassInstance();
  swift_setDeallocating();
  swift_deallocClassInstance();
  if (a2)
  {
    lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
    swift_allocError();
    *v35 = 0;
    swift_willThrow();
  }

  swift_setDeallocating();
  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type BNNS.DescriptorType and conformance BNNS.DescriptorType()
{
  result = lazy protocol witness table cache variable for type BNNS.DescriptorType and conformance BNNS.DescriptorType;
  if (!lazy protocol witness table cache variable for type BNNS.DescriptorType and conformance BNNS.DescriptorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BNNS.DescriptorType and conformance BNNS.DescriptorType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BNNS.ArithmeticUnaryFunction and conformance BNNS.ArithmeticUnaryFunction()
{
  result = lazy protocol witness table cache variable for type BNNS.ArithmeticUnaryFunction and conformance BNNS.ArithmeticUnaryFunction;
  if (!lazy protocol witness table cache variable for type BNNS.ArithmeticUnaryFunction and conformance BNNS.ArithmeticUnaryFunction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BNNS.ArithmeticUnaryFunction and conformance BNNS.ArithmeticUnaryFunction);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BNNS.ArithmeticBinaryFunction and conformance BNNS.ArithmeticBinaryFunction()
{
  result = lazy protocol witness table cache variable for type BNNS.ArithmeticBinaryFunction and conformance BNNS.ArithmeticBinaryFunction;
  if (!lazy protocol witness table cache variable for type BNNS.ArithmeticBinaryFunction and conformance BNNS.ArithmeticBinaryFunction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BNNS.ArithmeticBinaryFunction and conformance BNNS.ArithmeticBinaryFunction);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [BNNS.ArithmeticUnaryFunction] and conformance [A](unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BNNS.ArithmeticUnaryFunction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE6)
  {
    goto LABEL_17;
  }

  if (a2 + 26 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 26) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 26;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 26;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 26;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1B;
  v8 = v6 - 27;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BNNS.ArithmeticUnaryFunction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 26) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE6)
  {
    v4 = 0;
  }

  if (a2 > 0xE5)
  {
    v5 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 26;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BNNS.ArithmeticBinaryFunction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BNNS.ArithmeticBinaryFunction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t dispatch thunk of BNNS.UnaryArithmeticLayer.apply(batchSize:input:output:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2[17];
  v5 = *(a2 + 36);
  v6 = a2[19];
  v7 = *(a2 + 40);
  v8 = a3[17];
  v9 = *(a3 + 36);
  v10 = a3[19];
  v11 = *(a3 + 40);
  v12 = *(*v3 + 96);
  v28 = *a2;
  v29 = *(a2 + 1);
  v30 = *(a2 + 3);
  v31 = *(a2 + 5);
  v32 = *(a2 + 7);
  v33 = *(a2 + 9);
  v34 = *(a2 + 11);
  v35 = *(a2 + 13);
  v36 = *(a2 + 15);
  v37 = v4;
  v38 = v5;
  v39 = v6;
  v40 = v7;
  v41 = *(a2 + 164);
  v14 = *a3;
  v15 = *(a3 + 1);
  v16 = *(a3 + 3);
  v17 = *(a3 + 5);
  v18 = *(a3 + 7);
  v19 = *(a3 + 9);
  v20 = *(a3 + 11);
  v21 = *(a3 + 13);
  v22 = *(a3 + 15);
  v23 = v8;
  v24 = v9;
  v25 = v10;
  v26 = v11;
  v27 = *(a3 + 164);
  return v12(a1, &v28, &v14);
}

uint64_t dispatch thunk of BNNS.UnaryArithmeticLayer.applyBackward(batchSize:input:output:outputGradient:generatingInputGradient:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v6 = a2[17];
  v7 = *(a2 + 36);
  v8 = a2[19];
  v9 = *(a2 + 40);
  v10 = a3[17];
  v11 = *(a3 + 36);
  v12 = a3[19];
  v13 = *(a3 + 40);
  v14 = a4[17];
  v15 = *(a4 + 36);
  v16 = a4[19];
  v17 = *(a4 + 40);
  v18 = a5[17];
  v19 = *(a5 + 36);
  v20 = a5[19];
  v21 = *(a5 + 40);
  v83 = *(*v5 + 104);
  v69 = *a2;
  v70 = *(a2 + 1);
  v71 = *(a2 + 3);
  v72 = *(a2 + 5);
  v73 = *(a2 + 7);
  v74 = *(a2 + 9);
  v75 = *(a2 + 11);
  v76 = *(a2 + 13);
  v77 = *(a2 + 15);
  v78 = v6;
  v79 = v7;
  v80 = v8;
  v81 = v9;
  v82 = *(a2 + 164);
  v55 = *a3;
  v56 = *(a3 + 1);
  v57 = *(a3 + 3);
  v58 = *(a3 + 5);
  v59 = *(a3 + 7);
  v60 = *(a3 + 9);
  v61 = *(a3 + 11);
  v62 = *(a3 + 13);
  v63 = *(a3 + 15);
  v64 = v10;
  v65 = v11;
  v66 = v12;
  v67 = v13;
  v68 = *(a3 + 164);
  v41 = *a4;
  v42 = *(a4 + 1);
  v43 = *(a4 + 3);
  v44 = *(a4 + 5);
  v45 = *(a4 + 7);
  v46 = *(a4 + 9);
  v47 = *(a4 + 11);
  v48 = *(a4 + 13);
  v49 = *(a4 + 15);
  v50 = v14;
  v51 = v15;
  v52 = v16;
  v53 = v17;
  v54 = *(a4 + 164);
  v27 = *a5;
  v22 = *(a5 + 3);
  v28 = *(a5 + 1);
  v29 = v22;
  v23 = *(a5 + 7);
  v30 = *(a5 + 5);
  v31 = v23;
  v24 = *(a5 + 11);
  v32 = *(a5 + 9);
  v33 = v24;
  v25 = *(a5 + 15);
  v34 = *(a5 + 13);
  v35 = v25;
  v36 = v18;
  v37 = v19;
  v38 = v20;
  v39 = v21;
  v40 = *(a5 + 164);
  return v83(a1, &v69, &v55, &v41, &v27);
}

uint64_t dispatch thunk of BNNS.BinaryArithmeticLayer.apply(batchSize:inputA:inputB:output:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = a2[17];
  v6 = *(a2 + 36);
  v7 = a2[19];
  v8 = *(a2 + 40);
  v9 = a3[17];
  v10 = *(a3 + 36);
  v11 = a3[19];
  v12 = *(a3 + 40);
  v13 = a4[17];
  v14 = *(a4 + 36);
  v15 = a4[19];
  v16 = *(a4 + 40);
  v17 = *(*v4 + 96);
  v47 = *a2;
  v48 = *(a2 + 1);
  v49 = *(a2 + 3);
  v50 = *(a2 + 5);
  v51 = *(a2 + 7);
  v52 = *(a2 + 9);
  v53 = *(a2 + 11);
  v54 = *(a2 + 13);
  v55 = *(a2 + 15);
  v56 = v5;
  v57 = v6;
  v58 = v7;
  v59 = v8;
  v60 = *(a2 + 164);
  v33 = *a3;
  v34 = *(a3 + 1);
  v35 = *(a3 + 3);
  v36 = *(a3 + 5);
  v37 = *(a3 + 7);
  v38 = *(a3 + 9);
  v39 = *(a3 + 11);
  v40 = *(a3 + 13);
  v41 = *(a3 + 15);
  v42 = v9;
  v43 = v10;
  v44 = v11;
  v45 = v12;
  v46 = *(a3 + 164);
  v19 = *a4;
  v20 = *(a4 + 1);
  v21 = *(a4 + 3);
  v22 = *(a4 + 5);
  v23 = *(a4 + 7);
  v24 = *(a4 + 9);
  v25 = *(a4 + 11);
  v26 = *(a4 + 13);
  v27 = *(a4 + 15);
  v28 = v13;
  v29 = v14;
  v30 = v15;
  v31 = v16;
  v32 = *(a4 + 164);
  return v17(a1, &v47, &v33, &v19);
}

uint64_t dispatch thunk of BNNS.BinaryArithmeticLayer.applyBackward(batchSize:inputA:inputB:output:outputGradient:generatingInputAGradient:generatingInputBGradient:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a2 + 36);
  v9 = a2[19];
  v10 = *(a2 + 40);
  v11 = a3[17];
  v12 = *(a3 + 36);
  v13 = a3[19];
  v14 = *(a3 + 40);
  v15 = *(a4 + 136);
  v16 = *(a4 + 144);
  v17 = *(a4 + 152);
  v18 = *(a4 + 160);
  v19 = *(a5 + 136);
  v20 = *(a5 + 144);
  v21 = *(a5 + 152);
  v22 = *(a5 + 160);
  v81 = *(a6 + 136);
  v23 = *(a6 + 144);
  v24 = *(a6 + 152);
  v25 = *(a6 + 160);
  v85 = *(a7 + 136);
  v84 = *(a7 + 144);
  v83 = *(a7 + 152);
  v82 = *(a7 + 160);
  v86 = *(*v7 + 104);
  v167 = a2[17];
  v168 = v8;
  v169 = v9;
  v170 = v10;
  v26 = *a2;
  v27 = *(a2 + 1);
  v28 = *(a2 + 3);
  v29 = *(a2 + 5);
  v30 = *(a2 + 7);
  v31 = *(a2 + 9);
  v32 = *(a2 + 13);
  v33 = *(a2 + 15);
  v34 = *(a2 + 164);
  v164 = *(a2 + 11);
  v165 = v32;
  v166 = v33;
  v171 = v34;
  v153 = v11;
  v154 = v12;
  v155 = v13;
  v156 = v14;
  v35 = *a3;
  v36 = *(a3 + 1);
  v37 = *(a3 + 3);
  v38 = *(a3 + 5);
  v39 = *(a3 + 7);
  v40 = *(a3 + 9);
  v41 = *(a3 + 11);
  v42 = *(a3 + 13);
  v43 = *(a3 + 15);
  v44 = *(a3 + 164);
  v159 = v27;
  v160 = v28;
  v161 = v29;
  v162 = v30;
  v163 = v31;
  v150 = v41;
  v151 = v42;
  v152 = v43;
  v157 = v44;
  v139 = v15;
  v140 = v16;
  v141 = v17;
  v142 = v18;
  *&v27 = *a4;
  v45 = *(a4 + 8);
  v46 = *(a4 + 24);
  v47 = *(a4 + 40);
  v48 = *(a4 + 56);
  v49 = *(a4 + 72);
  v50 = *(a4 + 88);
  v51 = *(a4 + 104);
  v52 = *(a4 + 120);
  v53 = *(a4 + 164);
  v145 = v36;
  v146 = v37;
  v147 = v38;
  v148 = v39;
  v149 = v40;
  v136 = v50;
  v137 = v51;
  v138 = v52;
  v143 = v53;
  v125 = v19;
  v126 = v20;
  v127 = v21;
  v128 = v22;
  *&v50 = *a5;
  v54 = *(a5 + 8);
  v55 = *(a5 + 24);
  v56 = *(a5 + 40);
  v57 = *(a5 + 56);
  v58 = *(a5 + 72);
  v59 = *(a5 + 88);
  v60 = *(a5 + 104);
  v61 = *(a5 + 120);
  v62 = *(a5 + 164);
  v131 = v45;
  v132 = v46;
  v133 = v47;
  v134 = v48;
  v135 = v49;
  v122 = v59;
  v123 = v60;
  v124 = v61;
  v129 = v62;
  v111 = v81;
  v112 = v23;
  v113 = v24;
  v114 = v25;
  *&v45 = *a6;
  v63 = *(a6 + 8);
  v64 = *(a6 + 24);
  v65 = *(a6 + 40);
  v66 = *(a6 + 56);
  v67 = *(a6 + 72);
  v68 = *(a6 + 88);
  v69 = *(a6 + 104);
  v70 = *(a6 + 120);
  v71 = *(a6 + 164);
  v117 = v54;
  v118 = v55;
  v119 = v56;
  v120 = v57;
  v121 = v58;
  v108 = v68;
  v109 = v69;
  v110 = v70;
  v115 = v71;
  v103 = v63;
  v104 = v64;
  v105 = v65;
  v106 = v66;
  v107 = v67;
  v101 = *(a7 + 164);
  *&v63 = *a7;
  v72 = *(a7 + 8);
  v73 = *(a7 + 24);
  v74 = *(a7 + 40);
  v75 = *(a7 + 56);
  v76 = *(a7 + 72);
  v77 = *(a7 + 88);
  v78 = *(a7 + 104);
  v79 = *(a7 + 120);
  v97 = v85;
  v98 = v84;
  v99 = v83;
  v100 = v82;
  v158 = v26;
  v144 = v35;
  v130 = v27;
  v116 = v50;
  v102 = v45;
  v88 = v63;
  v89 = v72;
  v90 = v73;
  v91 = v74;
  v92 = v75;
  v93 = v76;
  v94 = v77;
  v95 = v78;
  v96 = v79;
  return v86(a1, &v158, &v144, &v130, &v116, &v102, &v88);
}

uint64_t static vDSP.linearInterpolate<A, B>(_:_:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (*(a5 + 16))(a3, a5);
  return _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5(v5, partial apply for closure #1 in static vDSP.linearInterpolate<A, B>(_:_:using:));
}

{
  v5 = (*(a5 + 16))(a3, a5);
  return _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5(v5, partial apply for closure #1 in static vDSP.linearInterpolate<A, B>(_:_:using:));
}

uint64_t closure #1 in static vDSP.linearInterpolate<A, B>(_:_:using:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSrySfGMd);
  v15 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(&lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, &_sSrySfGMd);
  static vDSP.linearInterpolate<A, B, C>(_:_:using:result:)(a3, a4, a1, a5, a6, v14, a7, a8, v15);
  result = (*(a7 + 16))(a5, a7);
  *a2 = result;
  return result;
}

{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSrySdGMd);
  v15 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(&lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, &_sSrySdGMd);
  static vDSP.linearInterpolate<A, B, C>(_:_:using:result:)(a3, a4, a1, a5, a6, v14, a7, a8, v15);
  result = (*(a7 + 16))(a5, a7);
  *a2 = result;
  return result;
}

uint64_t partial apply for closure #1 in static vDSP.linearInterpolate<A, B>(_:_:using:)(uint64_t a1, uint64_t *a2)
{
  return closure #1 in static vDSP.linearInterpolate<A, B>(_:_:using:)(a1, a2, v2[6], v2[7], v2[2], v2[3], v2[4], v2[5]);
}

{
  return closure #1 in static vDSP.linearInterpolate<A, B>(_:_:using:)(a1, a2, v2[6], v2[7], v2[2], v2[3], v2[4], v2[5]);
}

uint64_t static vDSP.linearInterpolate<A, B, C>(_:_:using:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = (*(a7 + 16))(a4, a7);
  v13 = *(a9 + 8);
  v14 = *(v13 + 16);
  result = v14(a6, v13);
  if (v12 != result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v16 = (*(a8 + 16))(a5, a8);
  result = v14(a6, v13);
  if (v16 != result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = v14(a6, v13);
  if ((result & 0x8000000000000000) == 0)
  {
    MEMORY[0x1EEE9AC00](result);
    return (*(a7 + 24))(partial apply for closure #1 in static vDSP.linearInterpolate<A, B, C>(_:_:using:result:));
  }

LABEL_7:
  __break(1u);
  return result;
}

{
  v12 = (*(a7 + 16))(a4, a7);
  v13 = *(a9 + 8);
  v14 = *(v13 + 16);
  result = v14(a6, v13);
  if (v12 != result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v16 = (*(a8 + 16))(a5, a8);
  result = v14(a6, v13);
  if (v16 != result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = v14(a6, v13);
  if ((result & 0x8000000000000000) == 0)
  {
    MEMORY[0x1EEE9AC00](result);
    return (*(a7 + 24))(partial apply for closure #1 in static vDSP.linearInterpolate<A, B, C>(_:_:using:result:));
  }

LABEL_7:
  __break(1u);
  return result;
}

void closure #1 in closure #1 in closure #1 in static vDSP.linearInterpolate<A, B, C>(_:_:using:result:)(float **a1, const float *__A, int a3, const float *__B, int a5, vDSP_Length __N, float a7)
{
  if (!__A)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (!__B)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = a7;
  if (*a1)
  {
    vDSP_vintb(__A, 1, __B, 1, &v7, *a1, 1, __N);
    return;
  }

LABEL_7:
  __break(1u);
}

void closure #1 in closure #1 in closure #1 in static vDSP.linearInterpolate<A, B, C>(_:_:using:result:)(double **a1, const double *__A, int a3, const double *__B, int a5, vDSP_Length __N, double a7)
{
  if (!__A)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (!__B)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = a7;
  if (*a1)
  {
    vDSP_vintbD(__A, 1, __B, 1, &v7, *a1, 1, __N);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t static vDSP.linearInterpolate<A, B>(elementsOf:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return static vDSP.linearInterpolate<A, B>(elementsOf:using:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.linearInterpolate<A, B>(elementsOf:using:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5);
}

{
  return static vDSP.linearInterpolate<A, B>(elementsOf:using:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.linearInterpolate<A, B>(elementsOf:using:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5);
}

uint64_t static vDSP.linearInterpolate<A, B, C>(elementsOf:using:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return static vDSP.linearInterpolate<A, B, C>(elementsOf:using:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

{
  return static vDSP.linearInterpolate<A, B, C>(elementsOf:using:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

{
  v12 = (*(a8 + 16))(a5, a8);
  v13 = *(a9 + 8);
  v14 = *(v13 + 16);
  result = v14(a6, v13);
  if (v12 != result)
  {
    __break(1u);
    goto LABEL_6;
  }

  result = v14(a6, v13);
  if (result < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = (*(a7 + 16))(a4, a7);
  if ((result & 0x8000000000000000) == 0)
  {
    MEMORY[0x1EEE9AC00](result);
    return (*(a7 + 24))(v16);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t static vDSP.linearInterpolate<A, B>(elementsOf:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, void *))
{
  v16 = (*(a6 + 16))(a4, a6);
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a5;
  v18[5] = a6;
  v18[6] = a1;
  v18[7] = a2;
  return a8(v16, a7, v18);
}

uint64_t closure #1 in static vDSP.linearInterpolate<A, B>(elementsOf:using:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, unint64_t *a11, void (*a12)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a9);
  v18 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(a11, a9);
  a12(a3, a4, a1, a5, a6, v17, a7, a8, v18);
  result = (*(a8 + 16))(a6, a8);
  *a2 = result;
  return result;
}

void *closure #1 in closure #1 in closure #1 in static vDSP.linearInterpolate<A, B, C>(elementsOf:using:result:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, void, uint64_t))
{
  if (!a2)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (!a4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (*result)
  {
    return a8(a2, a4, 1, *result, 1);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in static vDSP.linearInterpolate<A, B, C>(_:_:using:result:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  v4 = *(v2 + 72);
  v5 = *(v2 + 80);
  v6 = *(v2 + 88);
  v8[2] = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = v3;
  v11 = *(v2 + 48);
  v12 = v4;
  v13 = a1;
  v14 = a2;
  v15 = v5;
  v16 = v6;
  return (*(v11 + 24))(partial apply for closure #1 in closure #1 in static vDSP.linearInterpolate<A, B, C>(_:_:using:result:), v8, MEMORY[0x1E69E7CA8] + 8, v9);
}

{
  v3 = *(v2 + 40);
  v4 = *(v2 + 72);
  v5 = *(v2 + 80);
  v6 = *(v2 + 88);
  v8[2] = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = v3;
  v11 = *(v2 + 48);
  v12 = v4;
  v13 = a1;
  v14 = a2;
  v15 = v5;
  v16 = v6;
  return (*(v11 + 24))(partial apply for closure #1 in closure #1 in static vDSP.linearInterpolate<A, B, C>(_:_:using:result:), v8, MEMORY[0x1E69E7CA8] + 8, v9);
}

uint64_t partial apply for closure #1 in static vDSP.linearInterpolate<A, B>(elementsOf:using:)(uint64_t a1, uint64_t *a2)
{
  return partial apply for closure #1 in static vDSP.linearInterpolate<A, B>(elementsOf:using:)(a1, a2, &_sSrySfGMd, &_sSrySfGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, static vDSP.linearInterpolate<A, B, C>(elementsOf:using:result:));
}

{
  return partial apply for closure #1 in static vDSP.linearInterpolate<A, B>(elementsOf:using:)(a1, a2, &_sSrySdGMd, &_sSrySdGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, static vDSP.linearInterpolate<A, B, C>(elementsOf:using:result:));
}

uint64_t partial apply for closure #1 in static vDSP.linearInterpolate<A, B, C>(elementsOf:using:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in static vDSP.linearInterpolate<A, B, C>(elementsOf:using:result:)(a1, a2, partial apply for closure #1 in closure #1 in static vDSP.linearInterpolate<A, B, C>(elementsOf:using:result:));
}

{
  return partial apply for closure #1 in static vDSP.linearInterpolate<A, B, C>(elementsOf:using:result:)(a1, a2, partial apply for closure #1 in closure #1 in static vDSP.linearInterpolate<A, B, C>(elementsOf:using:result:));
}

uint64_t partial apply for closure #1 in static vDSP.linearInterpolate<A, B, C>(elementsOf:using:result:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 40);
  v5 = *(v3 + 72);
  v7[2] = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = v4;
  v10 = *(v3 + 48);
  v11 = v5;
  v12 = a1;
  v13 = a2;
  v14 = *(v3 + 80);
  return (*(v10 + 24))(a3, v7, MEMORY[0x1E69E7CA8] + 8, v8);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.linearInterpolate<A, B, C>(elementsOf:using:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in static vDSP.linearInterpolate<A, B, C>(elementsOf:using:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.linearInterpolate<A, B, C>(elementsOf:using:result:));
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.linearInterpolate<A, B, C>(elementsOf:using:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.linearInterpolate<A, B, C>(elementsOf:using:result:));
}

void *partial apply for closure #1 in closure #1 in closure #1 in static vDSP.linearInterpolate<A, B, C>(elementsOf:using:result:)(void *a1)
{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.linearInterpolate<A, B, C>(elementsOf:using:result:)(a1, MEMORY[0x1E6959008]);
}

{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.linearInterpolate<A, B, C>(elementsOf:using:result:)(a1, MEMORY[0x1E6959000]);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.linearInterpolate<A, B, C>(elementsOf:using:result:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 32);
  v5 = *(v3 + 56);
  v7[1] = *(v3 + 72);
  v8 = a1;
  v9 = a2;
  v10 = *(v3 + 88);
  return (*(v5 + 16))(a3, v7, MEMORY[0x1E69E7CA8] + 8, v4);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.linearInterpolate<A, B, C>(_:_:using:result:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 56);
  v5 = *(v2 + 88);
  v7[1] = *(v2 + 72);
  v8 = a1;
  v9 = a2;
  v10 = v5;
  return (*(v4 + 16))(partial apply for closure #1 in closure #1 in closure #1 in static vDSP.linearInterpolate<A, B, C>(_:_:using:result:), v7, MEMORY[0x1E69E7CA8] + 8, v3);
}

{
  v3 = *(v2 + 32);
  v4 = *(v2 + 56);
  v5 = *(v2 + 88);
  v7[1] = *(v2 + 72);
  v8 = a1;
  v9 = a2;
  v10 = v5;
  return (*(v4 + 16))(partial apply for closure #1 in closure #1 in closure #1 in static vDSP.linearInterpolate<A, B, C>(_:_:using:result:), v7, MEMORY[0x1E69E7CA8] + 8, v3);
}

Swift::Int BNNS.InterpolationMethod.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B8CB1810](v1);
  return Hasher._finalize()();
}

uint64_t BNNS.ResizeLayer.__allocating_init(interpolationMethod:input:output:alignsCorners:filterParameters:)(_BYTE *a1, _OWORD *a2, __int128 *a3, char a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v53 = *MEMORY[0x1E69E9840];
  v8 = a3[8];
  v9 = a3[9];
  v10 = a3[6];
  v48 = a3[7];
  v49 = v8;
  v11 = a3[10];
  v50 = v9;
  v51 = v11;
  v12 = a3[4];
  v46 = a3[5];
  v47 = v10;
  v13 = a3[2];
  v44 = a3[3];
  v45 = v12;
  v14 = a3[1];
  v41 = *a3;
  v42 = v14;
  v43 = v13;
  v15 = a2[5];
  *&v27[68] = a2[4];
  v16 = a2[2];
  *&v27[52] = a2[3];
  v17 = a2[6];
  *&v27[116] = a2[7];
  v18 = a2[9];
  *&v27[132] = a2[8];
  *&v27[148] = v18;
  *&v27[164] = a2[10];
  *&v27[84] = v15;
  *&v27[100] = v17;
  v19 = a2[1];
  *&v27[4] = *a2;
  *&v27[20] = v19;
  *&v27[36] = v16;
  v37 = *&v27[128];
  v38 = *&v27[144];
  v39 = *&v27[160];
  v33 = *&v27[64];
  v34 = *&v27[80];
  v35 = *&v27[96];
  v36 = *&v27[112];
  v29 = *v27;
  v30 = *&v27[16];
  v31 = *&v27[32];
  v28 = (*a1 & 1) == 0;
  v40 = *&v27[176];
  v32 = *&v27[48];
  v52 = a4;
  if (a7 == 1)
  {
    v20 = 0;
  }

  else
  {
    v23 = a5;
    v24 = a6;
    v25 = a7;
    v26 = a8;
    v20 = &v23;
  }

  v21 = MEMORY[0x1B8CB1AF0](&v28, v20);
  type metadata accessor for BNNS.ResizeLayer();
  result = swift_allocObject();
  if (v21)
  {
    *(result + 16) = v21;
  }

  else
  {
    type metadata accessor for BNNS.Layer();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t BNNS.ResizeLayer.__deallocating_deinit()
{
  BNNSFilterDestroy(*(v0 + 16));

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type BNNS.InterpolationMethod and conformance BNNS.InterpolationMethod()
{
  result = lazy protocol witness table cache variable for type BNNS.InterpolationMethod and conformance BNNS.InterpolationMethod;
  if (!lazy protocol witness table cache variable for type BNNS.InterpolationMethod and conformance BNNS.InterpolationMethod)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BNNS.InterpolationMethod and conformance BNNS.InterpolationMethod);
  }

  return result;
}

uint64_t static vForce.ceil<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return static vForce.ceil<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vForce.ceil<A>(_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5);
}

{
  return static vForce.ceil<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vForce.ceil<A>(_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5);
}

uint64_t partial apply for closure #1 in static vForce.ceil<A>(_:)(uint64_t a1, uint64_t *a2)
{
  return closure #1 in static vForce.ceil<A>(_:)(a1, a2, v2[4], v2[2], v2[3], &_sSrySfGMd, &_sSrySfGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, static vForce.ceil<A, B>(_:result:));
}

{
  return closure #1 in static vForce.ceil<A>(_:)(a1, a2, v2[4], v2[2], v2[3], &_sSrySdGMd, &_sSrySdGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, static vForce.ceil<A, B>(_:result:));
}

uint64_t static vForce.ceil<A, B>(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return static vForce.ceil<A, B>(_:result:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vForce.ceil<A, B>(_:result:));
}

{

  return static vForce.ceil<A, B>(_:result:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vForce.ceil<A, B>(_:result:));
}

uint64_t closure #1 in static vForce.ceil<A>(_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, unint64_t *a8, void (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a6);
  v16 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(a8, a6);
  a9(a3, a1, a4, v15, a5, v16);
  result = (*(a5 + 16))(a4, a5);
  *a2 = result;
  return result;
}

uint64_t static vForce.floor<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return static vForce.ceil<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vForce.floor<A>(_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5);
}

{
  return static vForce.ceil<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vForce.floor<A>(_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5);
}

uint64_t static vForce.floor<A, B>(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return static vForce.ceil<A, B>(_:result:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vForce.floor<A, B>(_:result:));
}

{

  return static vForce.ceil<A, B>(_:result:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vForce.floor<A, B>(_:result:));
}

uint64_t static vForce.copysign<A, B>(magnitudes:signs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return static vForce.copysign<A, B>(magnitudes:signs:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vForce.copysign<A, B>(magnitudes:signs:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5);
}

{
  return static vForce.copysign<A, B>(magnitudes:signs:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vForce.copysign<A, B>(magnitudes:signs:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5);
}

uint64_t static vForce.copysign<A, B, C>(magnitudes:signs:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return static vForce.copysign<A, B, C>(magnitudes:signs:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

{
  return static vForce.copysign<A, B, C>(magnitudes:signs:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

{
  v18 = *(a7 + 16);
  v12 = v18(a4, a7);
  v13 = *(a8 + 16);
  if (v12 != v13(a5, a8))
  {
    __break(1u);
    goto LABEL_7;
  }

  v14 = v13(a5, a8);
  if (v14 != (*(*(a9 + 8) + 16))(a6))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v15 = v18(a4, a7);
  if (v15 < 0xFFFFFFFF80000000)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
  }

  if (v15 > 0x7FFFFFFF)
  {
    goto LABEL_9;
  }

  MEMORY[0x1EEE9AC00](v15);
  return (*(a9 + 16))(v16);
}

uint64_t closure #1 in static vForce.copysign<A, B>(magnitudes:signs:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, unint64_t *a11, void (*a12)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a9);
  v18 = *(a8 + 8);
  v19 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(a11, a9);
  a12(a3, a4, a1, a5, a6, v17, a7, v18, v19);
  result = (*(a7 + 16))(a5, a7);
  *a2 = result;
  return result;
}

uint64_t static vForce.truncatingRemainder<A, B>(dividends:divisors:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return static vForce.copysign<A, B>(magnitudes:signs:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vForce.truncatingRemainder<A, B>(dividends:divisors:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5);
}

{
  return static vForce.copysign<A, B>(magnitudes:signs:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vForce.truncatingRemainder<A, B>(dividends:divisors:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5);
}

uint64_t static vForce.truncatingRemainder<A, B, C>(dividends:divisors:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return static vForce.truncatingRemainder<A, B, C>(dividends:divisors:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

{
  return static vForce.truncatingRemainder<A, B, C>(dividends:divisors:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

{
  v12 = (*(a7 + 16))(a4, a7);
  v13 = *(a8 + 16);
  if (v12 != v13(a5, a8))
  {
    __break(1u);
    goto LABEL_7;
  }

  v14 = v13(a5, a8);
  v15 = *(a9 + 8);
  v16 = *(v15 + 16);
  if (v14 != v16(a6, v15))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v17 = v16(a6, v15);
  if (v17 < 0xFFFFFFFF80000000)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
  }

  if (v17 > 0x7FFFFFFF)
  {
    goto LABEL_9;
  }

  MEMORY[0x1EEE9AC00](v17);
  return (*(a9 + 16))(v18);
}

uint64_t static vForce.remainder<A, B>(dividends:divisors:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return static vForce.copysign<A, B>(magnitudes:signs:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vForce.remainder<A, B>(dividends:divisors:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5);
}

{
  return static vForce.copysign<A, B>(magnitudes:signs:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vForce.remainder<A, B>(dividends:divisors:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5);
}

uint64_t static vForce.remainder<A, B, C>(dividends:divisors:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return static vForce.truncatingRemainder<A, B, C>(dividends:divisors:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

{
  return static vForce.truncatingRemainder<A, B, C>(dividends:divisors:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t static vForce.copysign<A, B>(magnitudes:signs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t))
{
  v12 = *(a5 + 16);
  v13 = v12(a3, a5);
  result = (*(*(a6 + 8) + 16))(a4);
  if (v13 == result)
  {
    v15 = v12(a3, a5);
    v16 = MEMORY[0x1EEE9AC00](v15);
    return a8(v16, a7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in static vForce.copysign<A, B, C>(magnitudes:signs:result:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void))
{
  result = *a3;
  if (!*a3)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (!a4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a1)
  {
    return a7();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t static vForce.trunc<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return static vForce.ceil<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vForce.trunc<A>(_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5);
}

{
  return static vForce.ceil<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vForce.trunc<A>(_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5);
}

uint64_t static vForce.trunc<A, B>(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return static vForce.ceil<A, B>(_:result:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vForce.trunc<A, B>(_:result:));
}

{

  return static vForce.ceil<A, B>(_:result:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vForce.trunc<A, B>(_:result:));
}

uint64_t static vForce.nearestInteger<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return static vForce.ceil<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vForce.nearestInteger<A>(_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5);
}

{
  return static vForce.ceil<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vForce.nearestInteger<A>(_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5);
}

uint64_t static vForce.nearestInteger<A, B>(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return static vForce.ceil<A, B>(_:result:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vForce.nearestInteger<A, B>(_:result:));
}

{

  return static vForce.ceil<A, B>(_:result:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vForce.nearestInteger<A, B>(_:result:));
}

uint64_t static vForce.rsqrt<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return static vForce.ceil<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vForce.rsqrt<A>(_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5);
}

{
  return static vForce.ceil<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vForce.rsqrt<A>(_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5);
}

uint64_t static vForce.rsqrt<A, B>(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return static vForce.ceil<A, B>(_:result:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vForce.rsqrt<A, B>(_:result:));
}

{

  return static vForce.ceil<A, B>(_:result:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vForce.rsqrt<A, B>(_:result:));
}

uint64_t static vForce.sqrt<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return static vForce.ceil<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vForce.sqrt<A>(_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5);
}

{
  return static vForce.ceil<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vForce.sqrt<A>(_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5);
}

uint64_t static vForce.sqrt<A, B>(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return static vForce.ceil<A, B>(_:result:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vForce.sqrt<A, B>(_:result:));
}

{

  return static vForce.ceil<A, B>(_:result:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vForce.sqrt<A, B>(_:result:));
}

uint64_t static vForce.reciprocal<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return static vForce.ceil<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vForce.reciprocal<A>(_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5);
}

{
  return static vForce.ceil<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vForce.reciprocal<A>(_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5);
}

uint64_t static vForce.reciprocal<A, B>(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return static vForce.ceil<A, B>(_:result:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vForce.reciprocal<A, B>(_:result:));
}

{

  return static vForce.ceil<A, B>(_:result:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vForce.reciprocal<A, B>(_:result:));
}

uint64_t static vForce.exp<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return static vForce.ceil<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vForce.exp<A>(_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5);
}

{
  return static vForce.ceil<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vForce.exp<A>(_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5);
}

uint64_t static vForce.exp<A, B>(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return static vForce.ceil<A, B>(_:result:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vForce.exp<A, B>(_:result:));
}

{

  return static vForce.ceil<A, B>(_:result:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vForce.exp<A, B>(_:result:));
}

uint64_t static vForce.expm1<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return static vForce.ceil<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vForce.expm1<A>(_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5);
}

{
  return static vForce.ceil<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vForce.expm1<A>(_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5);
}

uint64_t static vForce.expm1<A, B>(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return static vForce.ceil<A, B>(_:result:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vForce.expm1<A, B>(_:result:));
}

{

  return static vForce.ceil<A, B>(_:result:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vForce.expm1<A, B>(_:result:));
}

uint64_t static vForce.exp2<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return static vForce.ceil<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vForce.exp2<A>(_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5);
}

{
  return static vForce.ceil<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vForce.exp2<A>(_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5);
}

uint64_t static vForce.exp2<A, B>(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return static vForce.ceil<A, B>(_:result:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vForce.exp2<A, B>(_:result:));
}

{

  return static vForce.ceil<A, B>(_:result:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vForce.exp2<A, B>(_:result:));
}

uint64_t static vForce.log2<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return static vForce.ceil<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vForce.log2<A>(_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5);
}

{
  return static vForce.ceil<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vForce.log2<A>(_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5);
}

uint64_t static vForce.log2<A, B>(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return static vForce.ceil<A, B>(_:result:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vForce.log2<A, B>(_:result:));
}

{

  return static vForce.ceil<A, B>(_:result:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vForce.log2<A, B>(_:result:));
}

uint64_t static vForce.log10<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return static vForce.ceil<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vForce.log10<A>(_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5);
}

{
  return static vForce.ceil<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vForce.log10<A>(_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5);
}

uint64_t static vForce.log10<A, B>(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return static vForce.ceil<A, B>(_:result:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vForce.log10<A, B>(_:result:));
}

{

  return static vForce.ceil<A, B>(_:result:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vForce.log10<A, B>(_:result:));
}

uint64_t static vForce.logb<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return static vForce.ceil<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vForce.logb<A>(_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5);
}

{
  return static vForce.ceil<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vForce.logb<A>(_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5);
}

uint64_t static vForce.logb<A, B>(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return static vForce.ceil<A, B>(_:result:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vForce.logb<A, B>(_:result:));
}

{

  return static vForce.ceil<A, B>(_:result:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vForce.logb<A, B>(_:result:));
}

uint64_t static vForce.pow<A, B>(bases:exponents:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return static vForce.pow<A, B>(bases:exponents:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vForce.pow<A, B>(bases:exponents:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5);
}

{
  return static vForce.pow<A, B>(bases:exponents:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vForce.pow<A, B>(bases:exponents:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5);
}

uint64_t static vForce.pow<A, B, C>(bases:exponents:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return static vForce.copysign<A, B, C>(magnitudes:signs:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

{
  return static vForce.copysign<A, B, C>(magnitudes:signs:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t static vForce.pow<A, B>(bases:exponents:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t))
{
  v10 = (*(a5 + 16))(a3, a5);
  v11 = *(a6 + 8);
  v12 = *(v11 + 16);
  result = v12(a4, v11);
  if (v10 == result)
  {
    v14 = v12(a4, v11);
    v15 = MEMORY[0x1EEE9AC00](v14);
    return a8(v15, a7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in static vForce.pow<A, B>(bases:exponents:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, unint64_t *a11, void (*a12)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a9);
  v17 = *(a8 + 8);
  v18 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(a11, a9);
  a12(a3, a4, a1, a5, a6, v16, a7, v17, v18);
  result = (*(v17 + 16))(a6, v17);
  *a2 = result;
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in static vForce.pow<A, B, C>(bases:exponents:result:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void))
{
  result = *a3;
  if (!*a3)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (!a1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a4)
  {
    return a7();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t static vForce.sin<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return static vForce.ceil<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vForce.sin<A>(_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5);
}

{
  return static vForce.ceil<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vForce.sin<A>(_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5);
}

uint64_t static vForce.sin<A, B>(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return static vForce.ceil<A, B>(_:result:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vForce.sin<A, B>(_:result:));
}

{

  return static vForce.ceil<A, B>(_:result:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vForce.sin<A, B>(_:result:));
}

uint64_t static vForce.sinPi<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return static vForce.ceil<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vForce.sinPi<A>(_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5);
}

{
  return static vForce.ceil<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vForce.sinPi<A>(_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5);
}

uint64_t static vForce.sinPi<A, B>(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return static vForce.ceil<A, B>(_:result:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vForce.sinPi<A, B>(_:result:));
}

{

  return static vForce.ceil<A, B>(_:result:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vForce.sinPi<A, B>(_:result:));
}

uint64_t static vForce.cos<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return static vForce.ceil<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vForce.cos<A>(_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5);
}

{
  return static vForce.ceil<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vForce.cos<A>(_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5);
}

uint64_t static vForce.cos<A, B>(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return static vForce.ceil<A, B>(_:result:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vForce.cos<A, B>(_:result:));
}

{

  return static vForce.ceil<A, B>(_:result:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vForce.cos<A, B>(_:result:));
}