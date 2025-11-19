NSValue __swiftcall CATransform3D._bridgeToObjectiveC()()
{
  v7 = *MEMORY[0x29EDCA608];
  v1 = v0[5];
  v6[4] = v0[4];
  v6[5] = v1;
  v2 = v0[7];
  v6[6] = v0[6];
  v6[7] = v2;
  v3 = v0[1];
  v6[0] = *v0;
  v6[1] = v3;
  v4 = v0[3];
  v6[2] = v0[2];
  v6[3] = v4;
  type metadata accessor for CATransform3D(0);
  return [objc_allocWithZone(MEMORY[0x29EDBA168]) initWithBytes:v6 objCType:"{CATransform3D=dddddddddddddddd}"];
}

void type metadata accessor for CACornerRadii(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

__C::CAFrameRateRange __swiftcall CAFrameRateRange.init(minimum:maximum:preferred:)(Swift::Float minimum, Swift::Float maximum, Swift::Float_optional *preferred)
{
  v3 = *&preferred;
  if ((preferred & 0x100000000) != 0)
  {
    v3 = 0.0;
  }

  result.__preferred = v3;
  result.maximum = maximum;
  result.minimum = minimum;
  return result;
}

unint64_t CAFrameRateRange.preferred.getter(double a1, double a2, float a3)
{
  v3 = LODWORD(a3);
  if (a3 == 0.0)
  {
    v3 = 0;
  }

  return v3 | ((a3 == 0.0) << 32);
}

uint64_t key path getter for CAFrameRateRange.preferred : CAFrameRateRange@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  v3 = v2;
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  *a2 = v3;
  *(a2 + 4) = v2 == 0.0;
  return result;
}

uint64_t key path setter for CAFrameRateRange.preferred : CAFrameRateRange(uint64_t result, uint64_t a2)
{
  v2 = *result;
  if (*(result + 4))
  {
    v2 = 0.0;
  }

  *(a2 + 8) = v2;
  return result;
}

uint64_t CAFrameRateRange.preferred.setter(uint64_t result)
{
  v2 = *&result;
  if ((result & 0x100000000) != 0)
  {
    v2 = 0.0;
  }

  *(v1 + 8) = v2;
  return result;
}

uint64_t (*CAFrameRateRange.preferred.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 8);
  v3 = v2;
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = v2 == 0.0;
  return CAFrameRateRange.preferred.modify;
}

uint64_t CAFrameRateRange.preferred.modify(uint64_t result)
{
  v1 = *(result + 8);
  if (*(result + 12))
  {
    v1 = 0.0;
  }

  *(*result + 8) = v1;
  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CACornerRadii(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CACornerRadii(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CAFrameRateRange(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CAFrameRateRange(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 12) = v3;
  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t getEnumTagSinglePayload for CATransform3D(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CATransform3D(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 128) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for CGSize(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CGSize(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

double static CATransform3D._unconditionallyBridgeFromObjectiveC(_:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  specialized static CATransform3D._unconditionallyBridgeFromObjectiveC(_:)(a1, v8);
  v3 = v12;
  a2[4] = v11;
  a2[5] = v3;
  v4 = v14;
  a2[6] = v13;
  a2[7] = v4;
  v5 = v8[1];
  *a2 = v8[0];
  a2[1] = v5;
  result = *&v9;
  v7 = v10;
  a2[2] = v9;
  a2[3] = v7;
  return result;
}

id protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance CATransform3D()
{
  v7 = *MEMORY[0x29EDCA608];
  v1 = v0[5];
  v6[4] = v0[4];
  v6[5] = v1;
  v2 = v0[7];
  v6[6] = v0[6];
  v6[7] = v2;
  v3 = v0[1];
  v6[0] = *v0;
  v6[1] = v3;
  v4 = v0[3];
  v6[2] = v0[2];
  v6[3] = v4;
  return [objc_allocWithZone(MEMORY[0x29EDBA168]) initWithBytes:v6 objCType:"{CATransform3D=dddddddddddddddd}"];
}

double protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance CATransform3D@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  specialized static CATransform3D._unconditionallyBridgeFromObjectiveC(_:)(a1, v8);
  v3 = v12;
  a2[4] = v11;
  a2[5] = v3;
  v4 = v14;
  a2[6] = v13;
  a2[7] = v4;
  v5 = v8[1];
  *a2 = v8[0];
  a2[1] = v5;
  result = *&v9;
  v7 = v10;
  a2[2] = v9;
  a2[3] = v7;
  return result;
}

uint64_t specialized static CATransform3D._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  v4 = [a1 objCType];
  type metadata accessor for CATransform3D(0);
  result = strcmp(v4, "{CATransform3D=dddddddddddddddd}");
  if (result)
  {
    __break(1u);
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    _sSo13CATransform3DVSgWOi_(&v18);
    v6 = v25;
    v7 = v24;
    v8 = v25;
    *(a2 + 96) = v24;
    *(a2 + 112) = v6;
    v9 = v21;
    v10 = v20;
    v11 = v21;
    *(a2 + 32) = v20;
    *(a2 + 48) = v9;
    v12 = v23;
    v14 = v22;
    v13 = v23;
    *(a2 + 64) = v22;
    *(a2 + 80) = v12;
    v15 = v19;
    v17 = v18;
    v16 = v19;
    *a2 = v18;
    *(a2 + 16) = v15;
    v27[6] = v7;
    v27[7] = v8;
    v27[2] = v10;
    v27[3] = v11;
    v27[4] = v14;
    v27[5] = v13;
    *(a2 + 128) = v26;
    v28 = v26;
    v27[0] = v17;
    v27[1] = v16;
    result = _sSo13CATransform3DVSgWOg(v27);
    if (result != 1)
    {
      return [a1 getValue:a2 size:128];
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized static CATransform3D._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  v4 = [a1 objCType];
  type metadata accessor for CATransform3D(0);
  v5 = strcmp(v4, "{CATransform3D=dddddddddddddddd}");
  if (v5)
  {
    _sSo13CATransform3DVSgWOi0_(&v32);
    v6 = v39;
    *(a2 + 96) = v38;
    *(a2 + 112) = v6;
    *(a2 + 128) = v40;
    v7 = v35;
    *(a2 + 32) = v34;
    *(a2 + 48) = v7;
    v8 = v37;
    *(a2 + 64) = v36;
    *(a2 + 80) = v8;
    v9 = v33;
    *a2 = v32;
    *(a2 + 16) = v9;
    return v5 == 0;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  _sSo13CATransform3DVSgWOi_(&v23);
  v10 = v30;
  v11 = v29;
  v12 = v30;
  *(a2 + 96) = v29;
  *(a2 + 112) = v10;
  v13 = v26;
  v14 = v25;
  v15 = v26;
  *(a2 + 32) = v25;
  *(a2 + 48) = v13;
  v16 = v28;
  v18 = v27;
  v17 = v28;
  *(a2 + 64) = v27;
  *(a2 + 80) = v16;
  v19 = v24;
  v21 = v23;
  v20 = v24;
  *a2 = v23;
  *(a2 + 16) = v19;
  v38 = v11;
  v39 = v12;
  v34 = v14;
  v35 = v15;
  v36 = v18;
  v37 = v17;
  *(a2 + 128) = v31;
  v40 = v31;
  v32 = v21;
  v33 = v20;
  result = _sSo13CATransform3DVSgWOg(&v32);
  if (result != 1)
  {
    [a1 getValue:a2 size:128];
    return v5 == 0;
  }

  __break(1u);
  return result;
}

__n128 specialized static CATransform3D._unconditionallyBridgeFromObjectiveC(_:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
LABEL_5:
    __break(1u);
  }

  v4 = [a1 objCType];
  type metadata accessor for CATransform3D(0);
  if (strcmp(v4, "{CATransform3D=dddddddddddddddd}"))
  {
    __break(1u);
    goto LABEL_5;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  [a1 getValue:&v12 size:128];
  v6 = v12;
  v5 = v13;
  v20 = v12;
  v21 = v13;
  v8 = v18;
  v7 = v19;
  v26 = v18;
  v27 = v19;
  v9 = v17;
  v24 = v16;
  v25 = v17;
  v10 = v14;
  v22 = v14;
  v23 = v15;
  *(a2 + 64) = v16;
  *(a2 + 80) = v9;
  *(a2 + 96) = v8;
  *(a2 + 112) = v7;
  *a2 = v6;
  *(a2 + 16) = v5;
  result = v23;
  *(a2 + 32) = v10;
  *(a2 + 48) = result;
  return result;
}

double _sSo13CATransform3DVSgWOi0_(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 1;
  return result;
}

uint64_t _sSo13CATransform3DVSgWOg(uint64_t a1)
{
  if (*(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}