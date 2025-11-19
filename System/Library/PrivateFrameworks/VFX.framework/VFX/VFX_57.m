void sub_1AF589BA0()
{
  if (!qword_1EB63A9C0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A9C0);
    }
  }
}

uint64_t sub_1AF589C00@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF535FD4(a1, a2, v3, &type metadata for ParticleVariableSpawn, &off_1F2567620);
  *a3 = result;
  *(a3 + 8) = v6 & 1;
  return result;
}

void sub_1AF589CE4()
{
  if (!qword_1EB63A9C8)
  {
    sub_1AF589E74(255, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A9C8);
    }
  }
}

void sub_1AF589DF0()
{
  if (!qword_1EB633870)
  {
    sub_1AF589E74(255, &qword_1ED72F950, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    Set = type metadata accessor for EntityGetSet();
    if (!v1)
    {
      atomic_store(Set, &qword_1EB633870);
    }
  }
}

void sub_1AF589E74(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1AF589F0C()
{
  if (!qword_1EB63A9D0)
  {
    sub_1AF589E74(255, &qword_1ED72F950, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    v0 = type metadata accessor for EntityValueAccessors();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A9D0);
    }
  }
}

void sub_1AF589FB4()
{
  if (!qword_1EB63A9E0)
  {
    sub_1AF589E74(255, &qword_1ED72F950, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A9E0);
    }
  }
}

uint64_t sub_1AF58A104@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF534878(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_1AF58A1D8()
{
  if (!qword_1EB63A9E8)
  {
    sub_1AF589E74(255, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A9E8);
    }
  }
}

uint64_t sub_1AF58A26C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  result = a3(a1, a2, v4);
  *a4 = result;
  *(a4 + 8) = v7;
  *(a4 + 16) = v8 & 1;
  return result;
}

void sub_1AF58A2A8()
{
  if (!qword_1EB63A9F0)
  {
    sub_1AF589E74(255, &qword_1ED72F950, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A9F0);
    }
  }
}

unint64_t sub_1AF58A33C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF537564(a1, a2, v3, &type metadata for ParticleSpawnDuration, &off_1F2567440);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AF58A41C()
{
  if (!qword_1EB63A9F8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A9F8);
    }
  }
}

unint64_t sub_1AF58A47C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF537564(a1, a2, v3, &type metadata for ParticleSpawnDelay, &off_1F2567420);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AF58A55C()
{
  if (!qword_1EB63AA00)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AA00);
    }
  }
}

uint64_t sub_1AF58A5BC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF52966C(a1, a2, v3, &type metadata for ParticleRespawn, &off_1F2567380);
  *a3 = result;
  *(a3 + 8) = v6 & 1;
  return result;
}

void sub_1AF58A69C()
{
  if (!qword_1EB63AA08)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AA08);
    }
  }
}

uint64_t sub_1AF58A6FC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF52A03C(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1AF58A7CC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF52A188(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AF58A89C@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF52A0E8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AF58AA00@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF529F9C(a1);
  *a2 = result;
  return result;
}

void sub_1AF58AAF8()
{
  if (!qword_1EB63AA28)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AA28);
    }
  }
}

void sub_1AF58AB58()
{
  if (!qword_1EB63AA30)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AA30);
    }
  }
}

void sub_1AF58ABB8()
{
  if (!qword_1EB63AA38)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AA38);
    }
  }
}

void sub_1AF58AC18()
{
  if (!qword_1EB63AA40)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AA40);
    }
  }
}

void sub_1AF58AC78()
{
  if (!qword_1EB63AA48)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AA48);
    }
  }
}

uint64_t sub_1AF58AD74@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF52D3A4(a1);
  *a2 = result;
  return result;
}

unint64_t sub_1AF58AEFC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF52D20C(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AF58AFCC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF52D45C(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_1AF58B09C()
{
  if (!qword_1EB63AA58)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AA58);
    }
  }
}

void sub_1AF58B0FC()
{
  if (!qword_1EB63AA60)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AA60);
    }
  }
}

void sub_1AF58B15C()
{
  if (!qword_1EB63AA68)
  {
    sub_1AF583D60(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AA68);
    }
  }
}

void sub_1AF58B1FC()
{
  if (!qword_1EB63AA80)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AA80);
    }
  }
}

void sub_1AF58B25C()
{
  if (!qword_1EB63AA88)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AA88);
    }
  }
}

uint64_t sub_1AF58B2BC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF5338A8(a1, a2, v3, &type metadata for ParticleMassInit, &off_1F254E090);
  *a3 = result;
  *(a3 + 8) = v6 & 1;
  return result;
}

void sub_1AF58B3A0()
{
  if (!qword_1EB63AA90)
  {
    sub_1AF589E74(255, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AA90);
    }
  }
}

uint64_t sub_1AF58B434@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF529DAC(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1AF58B508@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF529D14(a1);
  *a2 = result;
  return result;
}

void sub_1AF58B5D0()
{
  if (!qword_1EB63AA98)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AA98);
    }
  }
}

void sub_1AF58B630()
{
  if (!qword_1EB63AAA0)
  {
    sub_1AF589E74(255, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AAA0);
    }
  }
}

uint64_t sub_1AF58B6C4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF52F1C4(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1AF58B794@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF52F328(a1);
  *a2 = result;
  return result;
}

unint64_t sub_1AF58B85C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF52F270(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AF58B9CC()
{
  if (!qword_1EB63AAB0)
  {
    sub_1AF589E74(255, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AAB0);
    }
  }
}

void sub_1AF58BA60()
{
  if (!qword_1EB63AAB8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AAB8);
    }
  }
}

void sub_1AF58BAC0()
{
  if (!qword_1EB63AAD0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AAD0);
    }
  }
}

void sub_1AF58BB20()
{
  if (!qword_1EB63AAD8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AAD8);
    }
  }
}

uint64_t sub_1AF58BB80@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF535FD4(a1, a2, v3, &type metadata for ParticleOrientationInit, &off_1F254E398);
  *a3 = result;
  *(a3 + 8) = v6 & 1;
  return result;
}

void sub_1AF58BC64()
{
  if (!qword_1EB63AAE0)
  {
    sub_1AF589E74(255, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AAE0);
    }
  }
}

uint64_t sub_1AF58BCF8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF535FD4(a1, a2, v3, &type metadata for ParticleAngularVelocityInit, &off_1F254CBF0);
  *a3 = result;
  *(a3 + 8) = v6 & 1;
  return result;
}

void sub_1AF58BDDC()
{
  if (!qword_1EB63AAE8)
  {
    sub_1AF589E74(255, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AAE8);
    }
  }
}

uint64_t sub_1AF58BE70@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF529E50(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1AF58BF40@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF529EFC(a1);
  *a2 = result;
  return result;
}

void sub_1AF58C0A8()
{
  if (!qword_1EB63AAF8)
  {
    sub_1AF589E74(255, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AAF8);
    }
  }
}

void sub_1AF58C16C()
{
  if (!qword_1EB63AB10)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AB10);
    }
  }
}

void sub_1AF58C1CC()
{
  if (!qword_1EB63AB18)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AB18);
    }
  }
}

uint64_t sub_1AF58C22C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF535FD4(a1, a2, v3, &type metadata for ParticlePivotInit, &off_1F254E6A0);
  *a3 = result;
  *(a3 + 8) = v6 & 1;
  return result;
}

void sub_1AF58C310()
{
  if (!qword_1EB63AB20)
  {
    sub_1AF589E74(255, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AB20);
    }
  }
}

uint64_t sub_1AF58C3A4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF5338A8(a1, a2, v3, &type metadata for ParticleAngleInit, &off_1F254C5E8);
  *a3 = result;
  *(a3 + 8) = v6 & 1;
  return result;
}

void sub_1AF58C488()
{
  if (!qword_1EB63AB28)
  {
    sub_1AF589E74(255, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AB28);
    }
  }
}

uint64_t sub_1AF58C51C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF5338A8(a1, a2, v3, &type metadata for ParticleAngleVelocityInit, &off_1F254C8E8);
  *a3 = result;
  *(a3 + 8) = v6 & 1;
  return result;
}

void sub_1AF58C600()
{
  if (!qword_1EB63AB30)
  {
    sub_1AF589E74(255, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AB30);
    }
  }
}

uint64_t sub_1AF58C694@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF5338A8(a1, a2, v3, &type metadata for ParticleTextureFrameInit, &off_1F254F380);
  *a3 = result;
  *(a3 + 8) = v6 & 1;
  return result;
}

void sub_1AF58C778()
{
  if (!qword_1EB63AB38)
  {
    sub_1AF589E74(255, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AB38);
    }
  }
}

uint64_t sub_1AF58C80C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF52AA84(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1AF58C8DC@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF52A9A0(a1);
  *a2 = result;
  return result;
}

unint64_t sub_1AF58C9A4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF52A8A4(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t sub_1AF58CA74@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF52A794(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result);
  *(a2 + 5) = BYTE5(result) & 1;
  return result;
}

uint64_t sub_1AF58CC78@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF52A4CC(a1);
  *a2 = result;
  return result;
}

void sub_1AF58CD40()
{
  if (!qword_1EB63AB48)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AB48);
    }
  }
}

void sub_1AF58CDF4()
{
  if (!qword_1EB63AB50)
  {
    sub_1AF583D60(255, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AB50);
    }
  }
}

void sub_1AF58CF4C()
{
  if (!qword_1EB63AB58)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AB58);
    }
  }
}

void sub_1AF58CFDC()
{
  if (!qword_1EB63AB70)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AB70);
    }
  }
}

void sub_1AF58D03C()
{
  if (!qword_1EB63AB78)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AB78);
    }
  }
}

void sub_1AF58D0CC()
{
  if (!qword_1EB63AB80)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AB80);
    }
  }
}

void sub_1AF58D12C()
{
  if (!qword_1EB63AB88)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AB88);
    }
  }
}

unint64_t sub_1AF58D18C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF528BB8(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AF58D25C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF528B10(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_1AF58D32C()
{
  if (!qword_1EB63AB90)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AB90);
    }
  }
}

void sub_1AF58D3E0()
{
  if (!qword_1EB63AB98)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AB98);
    }
  }
}

uint64_t sub_1AF58D440@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF526EF0(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1AF58D510@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF5273FC(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result);
  *(a2 + 5) = BYTE5(result) & 1;
  return result;
}

unint64_t sub_1AF58D5CC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF527210(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AF58D9EC@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF527178(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AF58DAB8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF527358(a1);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_1AF58DC38@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF52702C(a1);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  return result;
}

void sub_1AF58DC7C()
{
  if (!qword_1EB6338B0)
  {
    sub_1AF5A9240(255, &unk_1EB6338F8, &type metadata for EmitterShape.Direction, MEMORY[0x1E69E6720]);
    Set = type metadata accessor for EntityGetSet();
    if (!v1)
    {
      atomic_store(Set, &qword_1EB6338B0);
    }
  }
}

uint64_t sub_1AF58DD3C@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF526F94(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AF58DEA0@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF5272C0(a1);
  *a2 = result;
  return result;
}

void sub_1AF58DF9C()
{
  if (!qword_1EB63ABA8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63ABA8);
    }
  }
}

void sub_1AF58DFFC()
{
  if (!qword_1EB63ABB0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63ABB0);
    }
  }
}

void sub_1AF58E08C()
{
  if (!qword_1EB63ABC8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63ABC8);
    }
  }
}

void sub_1AF58E0EC()
{
  if (!qword_1EB63ABD0)
  {
    sub_1AF5A9240(255, &unk_1EB6338F8, &type metadata for EmitterShape.Direction, MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for EntityValueAccessors();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63ABD0);
    }
  }
}

uint64_t sub_1AF58E174(uint64_t a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  if (*(a1 + 16))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 48);
  }

  else
  {
    v6 = 0uLL;
    v7 = -2;
  }

  v9 = v6;
  v10 = v7;
  return (*(v4 + 16))(v3, v5, &v9);
}

void sub_1AF58E1D8()
{
  if (!qword_1EB63ABD8)
  {
    sub_1AF5A9240(255, &unk_1EB6338F8, &type metadata for EmitterShape.Direction, MEMORY[0x1E69E6720]);
    v0 = sub_1AFDFEA18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63ABD8);
    }
  }
}

void sub_1AF58E254()
{
  if (!qword_1EB63ABE8)
  {
    sub_1AF5A9240(255, &unk_1EB6338F8, &type metadata for EmitterShape.Direction, MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63ABE8);
    }
  }
}

void sub_1AF58E2E0()
{
  if (!qword_1EB63ABF0)
  {
    sub_1AF583D60(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63ABF0);
    }
  }
}

void sub_1AF58E3B4()
{
  if (!qword_1EB63AC00)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AC00);
    }
  }
}

void sub_1AF58E414()
{
  if (!qword_1EB63AC08)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AC08);
    }
  }
}

void sub_1AF58E474()
{
  if (!qword_1EB63AC10)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AC10);
    }
  }
}

uint64_t sub_1AF58E508(void *a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v6 = a1[2];
  if (v6)
  {
    v6 = a1[4];
    v7 = a1[5];
  }

  else
  {
    v7 = 0;
  }

  v9[0] = v6;
  v9[1] = v7;
  return (*(v4 + 16))(v3, v5, v9);
}

void sub_1AF58E560()
{
  if (!qword_1EB63AC18)
  {
    sub_1AF583D60(255, &qword_1ED72F730, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7450]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AC18);
    }
  }
}

void sub_1AF58E630()
{
  if (!qword_1EB63AC30)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AC30);
    }
  }
}

uint64_t sub_1AF58E6C0(uint64_t a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  if (*(a1 + 16))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 48);
  }

  else
  {
    v6 = 0uLL;
    v7 = -1;
  }

  v9 = v6;
  v10 = v7;
  return (*(v4 + 16))(v3, v5, &v9);
}

void sub_1AF58E73C()
{
  if (!qword_1EB63AC48)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AC48);
    }
  }
}

void sub_1AF58E7BC()
{
  if (!qword_1EB63AC50)
  {
    sub_1AF589E74(255, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AC50);
    }
  }
}

void sub_1AF58E850()
{
  if (!qword_1EB63AC58)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AC58);
    }
  }
}

void sub_1AF58E8E4()
{
  if (!qword_1EB63AC70)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AC70);
    }
  }
}

void sub_1AF58E944()
{
  if (!qword_1EB63AC78)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AC78);
    }
  }
}

uint64_t sub_1AF58E9A4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF52ADF8(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1AF58EB14@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF52AF4C(a1);
  *a2 = result;
  return result;
}

unint64_t sub_1AF58EBDC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF52AE9C(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AF58ED48@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF52AD60(a1);
  *a2 = result;
  return result;
}

void sub_1AF58EE10()
{
  if (!qword_1EB63AC80)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AC80);
    }
  }
}

void sub_1AF58EE70()
{
  if (!qword_1EB63AC88)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AC88);
    }
  }
}

void sub_1AF58EED0()
{
  if (!qword_1EB63AC90)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AC90);
    }
  }
}

void sub_1AF58EF30()
{
  if (!qword_1EB63AC98)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AC98);
    }
  }
}

void sub_1AF58EF90()
{
  if (!qword_1EB63ACA0)
  {
    sub_1AF589E74(255, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63ACA0);
    }
  }
}

void sub_1AF58F024()
{
  if (!qword_1EB63ACA8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63ACA8);
    }
  }
}

uint64_t sub_1AF58F084@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF52B094(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1AF58F154@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF52AFE4(a1);
  *a2 = result;
  return result;
}

void sub_1AF58F21C()
{
  if (!qword_1EB63ACB0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63ACB0);
    }
  }
}

void sub_1AF58F27C()
{
  if (!qword_1EB63ACB8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63ACB8);
    }
  }
}

uint64_t sub_1AF58F2DC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF535FD4(a1, a2, v3, &type metadata for ParticleTargetFromPositionInit, &off_1F254F080);
  *a3 = result;
  *(a3 + 8) = v6 & 1;
  return result;
}

void sub_1AF58F3C0()
{
  if (!qword_1EB63ACC0)
  {
    sub_1AF589E74(255, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63ACC0);
    }
  }
}

uint64_t sub_1AF58F454@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF5302F0(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1AF58F524@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF530224(a1);
  *a2 = result;
  return result;
}

unint64_t sub_1AF58F5EC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF530140(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AF58F744@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF52FF9C(a1);
  *a2 = result;
  return result;
}

void sub_1AF58F80C()
{
  if (!qword_1EB63ACC8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63ACC8);
    }
  }
}

void sub_1AF58F91C()
{
  if (!qword_1EB63ACD0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63ACD0);
    }
  }
}

void sub_1AF58F97C()
{
  if (!qword_1EB63ACD8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63ACD8);
    }
  }
}

void sub_1AF58F9DC()
{
  if (!qword_1EB63ACE0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63ACE0);
    }
  }
}

void sub_1AF58FA3C()
{
  if (!qword_1EB63ACE8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63ACE8);
    }
  }
}

uint64_t sub_1AF58FA9C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF52F0AC(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1AF58FB6C@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF52EFB4(a1);
  *a2 = result;
  return result;
}

unint64_t sub_1AF58FC34@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF52EE9C(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AF58FD04@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF52EDA4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AF58FDE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  result = a3(a1, a2, v4);
  *a4 = result;
  *(a4 + 8) = v7;
  *(a4 + 16) = v8;
  *(a4 + 24) = v9;
  return result;
}

void sub_1AF58FEF0()
{
  if (!qword_1EB63ACF0)
  {
    sub_1AF589E74(255, qword_1ED72F9E0, MEMORY[0x1E69E6448], &off_1F2532E98, type metadata accessor for Curve);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63ACF0);
    }
  }
}

void sub_1AF58FFD8()
{
  if (!qword_1EB63ACF8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63ACF8);
    }
  }
}

void sub_1AF590038()
{
  if (!qword_1EB63AD00)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AD00);
    }
  }
}

void sub_1AF590098()
{
  if (!qword_1EB63AD08)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AD08);
    }
  }
}

void sub_1AF5900F8()
{
  if (!qword_1EB63AD10)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AD10);
    }
  }
}

void sub_1AF590250()
{
  if (!qword_1EB63AD18)
  {
    sub_1AF589E74(255, qword_1ED72F9E0, MEMORY[0x1E69E6448], &off_1F2532E98, type metadata accessor for Curve);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AD18);
    }
  }
}

uint64_t sub_1AF5902E4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF533DB0(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1AF5903B4@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF533F6C(a1);
  *a2 = result;
  return result;
}

unint64_t sub_1AF59047C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF533E88(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AF5906D0()
{
  if (!qword_1EB63AD20)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AD20);
    }
  }
}

void sub_1AF590730()
{
  if (!qword_1EB63AD28)
  {
    sub_1AF589E74(255, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AD28);
    }
  }
}

void sub_1AF5907C4()
{
  if (!qword_1EB63AD30)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AD30);
    }
  }
}

void sub_1AF590824()
{
  if (!qword_1EB63AD38)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AD38);
    }
  }
}

void sub_1AF590884()
{
  if (!qword_1EB63AD40)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AD40);
    }
  }
}

uint64_t sub_1AF5908E4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF535410(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_1AF590AA0()
{
  if (!qword_1EB63AD48)
  {
    sub_1AF589E74(255, qword_1ED72F9E0, MEMORY[0x1E69E6448], &off_1F2532E98, type metadata accessor for Curve);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AD48);
    }
  }
}

void sub_1AF590B34()
{
  if (!qword_1EB63AD50)
  {
    sub_1AF589E74(255, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AD50);
    }
  }
}

unint64_t sub_1AF590BC8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF537350(a1, a2, v3, &type metadata for OrientationOverVelocity, &off_1F2554630);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AF590CA8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF531F14(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1AF590D78@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF5372B0(a1, a2, v3, &type metadata for OrientationOverVelocity, &off_1F2554630);
  *a3 = result;
  return result;
}

void sub_1AF590E80()
{
  if (!qword_1EB63AD70)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AD70);
    }
  }
}

void sub_1AF590EE0()
{
  if (!qword_1EB63AD78)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AD78);
    }
  }
}

void sub_1AF590F40()
{
  if (!qword_1EB63AD80)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AD80);
    }
  }
}

uint64_t sub_1AF590FA0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF533350(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1AF591070@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF533554(a1);
  *a2 = result;
  return result;
}

unint64_t sub_1AF591138@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF53349C(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AF591208@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF5333FC(a1);
  *a2 = result;
  return result;
}

void sub_1AF591370()
{
  if (!qword_1EB63AD88)
  {
    sub_1AF589E74(255, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AD88);
    }
  }
}

void sub_1AF591404()
{
  if (!qword_1EB63AD90)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AD90);
    }
  }
}

void sub_1AF591464()
{
  if (!qword_1EB63AD98)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AD98);
    }
  }
}

void sub_1AF5914C4()
{
  if (!qword_1EB63ADA0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63ADA0);
    }
  }
}

void sub_1AF591524()
{
  if (!qword_1EB63ADA8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63ADA8);
    }
  }
}

unint64_t sub_1AF591584@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF52A2E0(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AF591654@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF52A240(a1);
  *a2 = result;
  return result;
}

void sub_1AF59171C()
{
  if (!qword_1EB63ADB0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63ADB0);
    }
  }
}

void sub_1AF59177C()
{
  if (!qword_1EB63ADB8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63ADB8);
    }
  }
}

uint64_t sub_1AF5917DC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF5327A0(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1AF591948@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF53284C(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AF591AB4@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF532904(a1);
  *a2 = result;
  return result;
}

void sub_1AF591C1C()
{
  if (!qword_1EB63ADC0)
  {
    sub_1AF583D60(255, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63ADC0);
    }
  }
}

void sub_1AF591CBC()
{
  if (!qword_1EB63ADC8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63ADC8);
    }
  }
}

void sub_1AF591D1C()
{
  if (!qword_1EB63ADD0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63ADD0);
    }
  }
}

void sub_1AF591D7C()
{
  if (!qword_1EB63ADD8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63ADD8);
    }
  }
}

void sub_1AF591DDC()
{
  if (!qword_1EB63ADE0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63ADE0);
    }
  }
}

void sub_1AF591E3C()
{
  if (!qword_1EB63ADE8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63ADE8);
    }
  }
}

uint64_t sub_1AF591E9C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF5320A4(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1AF592008@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF532278(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AF592174@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF5321E0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AF59223C@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF532328(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AF592304@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF532148(a1);
  *a2 = result;
  return result;
}

void sub_1AF59250C()
{
  if (!qword_1EB63ADF0)
  {
    sub_1AF583D60(255, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63ADF0);
    }
  }
}

void sub_1AF5925AC()
{
  if (!qword_1EB63ADF8)
  {
    sub_1AF589E74(255, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63ADF8);
    }
  }
}

void sub_1AF592640()
{
  if (!qword_1EB63AE00)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AE00);
    }
  }
}

void sub_1AF5926A0()
{
  if (!qword_1EB63AE08)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AE08);
    }
  }
}

void sub_1AF592730()
{
  if (!qword_1EB63AE10)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AE10);
    }
  }
}

void sub_1AF592790()
{
  if (!qword_1EB63AE18)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AE18);
    }
  }
}

void sub_1AF5927F0()
{
  if (!qword_1EB63AE20)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AE20);
    }
  }
}

void sub_1AF592850()
{
  if (!qword_1EB63AE28)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AE28);
    }
  }
}

void sub_1AF5928B0()
{
  if (!qword_1EB63AE30)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AE30);
    }
  }
}

uint64_t sub_1AF592910@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF5355B4(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1AF592A7C@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF535700(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AF592B44@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF535660(a1);
  *a2 = result;
  return result;
}

unint64_t sub_1AF592D4C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF5354FC(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AF592E1C()
{
  if (!qword_1EB63AE38)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AE38);
    }
  }
}

void sub_1AF592E7C()
{
  if (!qword_1EB63AE40)
  {
    sub_1AF583D60(255, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AE40);
    }
  }
}

void sub_1AF592F1C()
{
  if (!qword_1EB63AE48)
  {
    sub_1AF589E74(255, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AE48);
    }
  }
}

void sub_1AF592FB0()
{
  if (!qword_1EB63AE50)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AE50);
    }
  }
}

void sub_1AF593010()
{
  if (!qword_1EB63AE58)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AE58);
    }
  }
}

void sub_1AF593070()
{
  if (!qword_1EB63AE60)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AE60);
    }
  }
}

void sub_1AF5930D0()
{
  if (!qword_1EB63AE68)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AE68);
    }
  }
}

uint64_t sub_1AF593130@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF533BF4(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1AF59329C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF533A30(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AF593408@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF533B1C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AF593558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  result = a3(a1, a2, v4);
  *a4 = result;
  *(a4 + 8) = v7;
  *(a4 + 16) = v8;
  return result;
}

void sub_1AF59362C()
{
  if (!qword_1EB63AE78)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AE78);
    }
  }
}

uint64_t sub_1AF59368C()
{

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

void sub_1AF5936D4()
{
  if (!qword_1EB63AE80)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AE80);
    }
  }
}

void sub_1AF593764()
{
  if (!qword_1EB63AE98)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AE98);
    }
  }
}

void sub_1AF5937C4()
{
  if (!qword_1EB63AEA0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AEA0);
    }
  }
}

void sub_1AF593824()
{
  if (!qword_1EB63AEA8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AEA8);
    }
  }
}

void sub_1AF593884()
{
  if (!qword_1EB63AEB0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AEB0);
    }
  }
}

uint64_t sub_1AF5938E4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF52FEF8(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1AF5939B4@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF52FE60(a1);
  *a2 = result;
  return result;
}

unint64_t sub_1AF593A7C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF52FDB0(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AF593B4C()
{
  if (!qword_1EB63AEC0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AEC0);
    }
  }
}

void sub_1AF593BDC()
{
  if (!qword_1EB63AED8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AED8);
    }
  }
}

void sub_1AF593C3C()
{
  if (!qword_1EB63AEE0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AEE0);
    }
  }
}

unint64_t sub_1AF593C9C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF535C94(a1, a2, v3, &type metadata for ParticleAngleEvolution, &off_1F2554AA0);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AF593DD4()
{
  if (!qword_1EB63AEF0)
  {
    sub_1AF589E74(255, qword_1ED72F9E0, MEMORY[0x1E69E6448], &off_1F2532E98, type metadata accessor for Curve);
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AEF0);
    }
  }
}

uint64_t sub_1AF593EE4(uint64_t result)
{
  if (result != 1)
  {
    return sub_1AF593EF4(result);
  }

  return result;
}

uint64_t sub_1AF593EF4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_1AF593FE8()
{
  if (!qword_1EB63AF20)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AF20);
    }
  }
}

unint64_t sub_1AF594048@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF535C94(a1, a2, v3, &type metadata for ParticleTextureFrameEvolution, &off_1F25584B8);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AF5942B8()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

void sub_1AF59430C()
{
  if (!qword_1EB63AF30)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AF30);
    }
  }
}

uint64_t sub_1AF59436C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF5267C8(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1AF5944E4@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF526914(a1);
  *a2 = result;
  return result;
}

unint64_t sub_1AF5945AC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF526718(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AF594AA4()
{
  if (!qword_1EB63AF68)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AF68);
    }
  }
}

void sub_1AF594B04()
{
  if (!qword_1EB63AF70)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AF70);
    }
  }
}

void sub_1AF594B98()
{
  if (!qword_1EB63AF78)
  {
    sub_1AF583D60(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AF78);
    }
  }
}

void sub_1AF594D40()
{
  if (!qword_1EB63AFB0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AFB0);
    }
  }
}

void sub_1AF594DD4()
{
  if (!qword_1EB63AFB8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AFB8);
    }
  }
}

void sub_1AF594E34()
{
  if (!qword_1EB63AFC0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AFC0);
    }
  }
}

void sub_1AF594F30()
{
  if (!qword_1EB63AFE0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AFE0);
    }
  }
}

unint64_t sub_1AF594F90@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF52BDE0(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AF595110()
{
  if (!qword_1EB63AFE8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AFE8);
    }
  }
}

void sub_1AF595170()
{
  if (!qword_1EB63AFF0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AFF0);
    }
  }
}

unint64_t sub_1AF5951D0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF537A60(a1, a2, v3, &type metadata for Vortex, &off_1F2569E68);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AF5952B0()
{
  if (!qword_1EB63AFF8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63AFF8);
    }
  }
}

uint64_t sub_1AF5953D0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF52838C(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1AF5954A0@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF5282F4(a1);
  *a2 = result;
  return result;
}

void sub_1AF595568()
{
  if (!qword_1EB63B000)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B000);
    }
  }
}

void sub_1AF5955C8()
{
  if (!qword_1EB63B008)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B008);
    }
  }
}

void sub_1AF595628()
{
  if (!qword_1EB63B010)
  {
    sub_1AF583D60(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B010);
    }
  }
}

unint64_t sub_1AF5956C8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF537A60(a1, a2, v3, &type metadata for ParticleSPHSimulation, &off_1F2558028);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AF5957A8()
{
  if (!qword_1EB63B018)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B018);
    }
  }
}

uint64_t sub_1AF595808@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF52EBFC(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1AF595998@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF52EAAC(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AF595A68@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF52EA1C(a1);
  *a2 = result;
  return result;
}

void sub_1AF595B30()
{
  if (!qword_1EB63B020)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B020);
    }
  }
}

void sub_1AF595B90()
{
  if (!qword_1EB63B028)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B028);
    }
  }
}

void sub_1AF595BF0()
{
  if (!qword_1EB63B030)
  {
    sub_1AF5A9240(255, &unk_1ED72F970, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B030);
    }
  }
}

void sub_1AF595C7C()
{
  if (!qword_1EB63B038)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B038);
    }
  }
}

uint64_t sub_1AF595CDC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF536400(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1AF595DAC@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF536348(a1);
  *a2 = result;
  return result;
}

unint64_t sub_1AF595E74@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF536278(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AF596004@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF5360F8(a1);
  *a2 = result;
  return result;
}

void sub_1AF5960CC()
{
  if (!qword_1EB63B048)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B048);
    }
  }
}

void sub_1AF59612C()
{
  if (!qword_1EB63B050)
  {
    sub_1AF583D60(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B050);
    }
  }
}

void sub_1AF5961CC()
{
  if (!qword_1EB63B058)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B058);
    }
  }
}

void sub_1AF59622C()
{
  if (!qword_1EB63B070)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B070);
    }
  }
}

void sub_1AF59628C()
{
  if (!qword_1EB63B078)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B078);
    }
  }
}

unint64_t sub_1AF5962EC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF5369D8(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AF59647C()
{
  if (!qword_1EB63B080)
  {
    sub_1AF583D60(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B080);
    }
  }
}

void sub_1AF59651C()
{
  if (!qword_1EB63B088)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B088);
    }
  }
}

unint64_t sub_1AF59657C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF536624(a1, a2, v3, &type metadata for ParticleFlockingConstrainToArea, &off_1F2565448);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AF59672C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF5364C4(a1, a2, v3, &type metadata for ParticleFlockingConstrainToArea, &off_1F2565448);
  *a3 = result;
  return result;
}

void sub_1AF596804()
{
  if (!qword_1EB63B090)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B090);
    }
  }
}

void sub_1AF596864()
{
  if (!qword_1EB63B098)
  {
    sub_1AF583D60(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B098);
    }
  }
}

void sub_1AF596904()
{
  if (!qword_1EB63B0A0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B0A0);
    }
  }
}

unint64_t sub_1AF596964@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF536624(a1, a2, v3, &type metadata for ParticleFlockingConstrainToPlane, &off_1F25653A8);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AF596B14@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF5364C4(a1, a2, v3, &type metadata for ParticleFlockingConstrainToPlane, &off_1F25653A8);
  *a3 = result;
  return result;
}

void sub_1AF596BEC()
{
  if (!qword_1EB63B0A8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B0A8);
    }
  }
}

void sub_1AF596C4C()
{
  if (!qword_1EB63B0B0)
  {
    sub_1AF583D60(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B0B0);
    }
  }
}

void sub_1AF596CEC()
{
  if (!qword_1EB63B0B8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B0B8);
    }
  }
}

unint64_t sub_1AF596D4C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF535F1C(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AF596E1C@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF535E7C(a1);
  *a2 = result;
  return result;
}

void sub_1AF596EE4()
{
  if (!qword_1EB63B0C0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B0C0);
    }
  }
}

void sub_1AF596F44()
{
  if (!qword_1EB63B0C8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B0C8);
    }
  }
}

unint64_t sub_1AF596FA4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF530FE4(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AF597074@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF530ED8(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1AF5971E0@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF530DE0(a1);
  *a2 = result;
  return result;
}

void sub_1AF5972FC()
{
  if (!qword_1EB63B0E0)
  {
    sub_1AF583D60(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B0E0);
    }
  }
}

uint64_t sub_1AF5973D8@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF530BCC(a1);
  *a2 = result;
  return result;
}

void sub_1AF5974A0()
{
  if (!qword_1EB63B0E8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B0E8);
    }
  }
}

uint64_t sub_1AF597554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  result = a3(a1, a2, v4);
  *a4 = result;
  *(a4 + 8) = v7;
  *(a4 + 16) = v8;
  *(a4 + 17) = v9 & 1;
  return result;
}

uint64_t sub_1AF5975D4(uint64_t a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  if (*(a1 + 16))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 48);
  }

  else
  {
    v7 = 0;
    v6 = 0uLL;
  }

  v9 = v6;
  v10 = v7;
  return (*(v4 + 16))(v3, v5, &v9);
}

void sub_1AF597668()
{
  if (!qword_1EB63B118)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B118);
    }
  }
}

void sub_1AF5976C8()
{
  if (!qword_1EB63B120)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B120);
    }
  }
}

void sub_1AF597728()
{
  if (!qword_1EB63B128)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B128);
    }
  }
}

void sub_1AF597788()
{
  if (!qword_1EB63B130)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B130);
    }
  }
}

unint64_t sub_1AF5977E8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF5358EC(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AF5978B8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF535840(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1AF597A28@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF5357A0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AF597B14(uint64_t a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  if (*(a1 + 16))
  {
    v6 = *(a1 + 32);
  }

  else
  {
    v6 = 6;
  }

  v8 = v6;
  return (*(v4 + 16))(v3, v5, &v8);
}

void sub_1AF597B6C()
{
  if (!qword_1EB63B138)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B138);
    }
  }
}

void sub_1AF597BCC()
{
  if (!qword_1EB63B140)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B140);
    }
  }
}

void sub_1AF597C2C()
{
  if (!qword_1EB63B148)
  {
    sub_1AF583D60(255, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B148);
    }
  }
}

void sub_1AF597CCC()
{
  if (!qword_1EB63B150)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B150);
    }
  }
}

uint64_t sub_1AF597D2C@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF535B08(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AF597DF4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF535A5C(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1AF597EC4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF5359A4(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AF597F94()
{
  if (!qword_1EB63B158)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B158);
    }
  }
}

void sub_1AF597FF4()
{
  if (!qword_1EB63B160)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B160);
    }
  }
}

void sub_1AF598054()
{
  if (!qword_1EB63B168)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B168);
    }
  }
}

uint64_t sub_1AF5980B4@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF535230(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AF59817C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF535138(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1AF59824C@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF53504C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AF598314@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF534F60(a1);
  *a2 = result;
  return result;
}

unint64_t sub_1AF5983DC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF534E5C(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t sub_1AF59856C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF534C48(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result);
  *(a2 + 5) = BYTE5(result) & 1;
  return result;
}

void sub_1AF5985E8()
{
  if (!qword_1EB63B180)
  {
    sub_1AF5A9240(255, &qword_1EB63B188, MEMORY[0x1E69E6448], MEMORY[0x1E69E6720]);
    Set = type metadata accessor for EntityGetSet();
    if (!v1)
    {
      atomic_store(Set, &qword_1EB63B180);
    }
  }
}

void sub_1AF5986A8()
{
  if (!qword_1EB63B190)
  {
    sub_1AF5A9240(255, &qword_1EB63B188, MEMORY[0x1E69E6448], MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for EntityValueAccessors();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B190);
    }
  }
}

void sub_1AF598730()
{
  if (!qword_1EB63B198)
  {
    sub_1AF5A9240(255, &qword_1EB63B188, MEMORY[0x1E69E6448], MEMORY[0x1E69E6720]);
    v0 = sub_1AFDFEA18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B198);
    }
  }
}

void sub_1AF5987AC()
{
  if (!qword_1EB63B1A0)
  {
    sub_1AF5A9240(255, &qword_1EB63B188, MEMORY[0x1E69E6448], MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B1A0);
    }
  }
}

void sub_1AF59888C()
{
  if (!qword_1EB63B1A8)
  {
    sub_1AF583D60(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B1A8);
    }
  }
}

void sub_1AF59892C()
{
  if (!qword_1EB63B1B0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B1B0);
    }
  }
}

void sub_1AF5989BC()
{
  if (!qword_1EB63B1C8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B1C8);
    }
  }
}

void sub_1AF598A4C()
{
  if (!qword_1EB63B1E0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B1E0);
    }
  }
}

void sub_1AF598AAC()
{
  if (!qword_1EB63B1E8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B1E8);
    }
  }
}

uint64_t sub_1AF598B0C(void *a1)
{
  v3 = sub_1AF441150(a1, a1[3]);
  sub_1AFDFF388();
  if (!v1)
  {
    v3 = sub_1AF448018(v6, v7);
    v4 = sub_1AFDFEAB8();
    if (v4 == 1)
    {
      sub_1AF448018(v6, v7);
      sub_1AF47FEB4();
      sub_1AFDFEAD8();
      v3 = v8;
      goto LABEL_12;
    }

    if (!v4)
    {
      sub_1AF448018(v6, v7);
      v3 = sub_1AFDFEA78();
LABEL_12:
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v6);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
      return v3;
    }

    sub_1AFDFE2C8();
    swift_allocError();
    sub_1AFDFE288();
    swift_willThrow();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v6);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v3;
}

void sub_1AF598CC8()
{
  if (!qword_1EB63B1F0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B1F0);
    }
  }
}

unint64_t sub_1AF598D28@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF537350(a1, a2, v3, &type metadata for ParticleDrag, &off_1F2555AC0);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AF598E08@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF5372B0(a1, a2, v3, &type metadata for ParticleDrag, &off_1F2555AC0);
  *a3 = result;
  return result;
}

void sub_1AF598EE0()
{
  if (!qword_1EB63B1F8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B1F8);
    }
  }
}

void sub_1AF598F40()
{
  if (!qword_1EB63B200)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B200);
    }
  }
}

uint64_t sub_1AF598FA0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF529C58(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1AF599070@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF529BA8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AF599138@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF529AF8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AF5992C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  result = a3(a1, a2, v4);
  *a4 = result;
  *(a4 + 8) = v7;
  *(a4 + 9) = v8 & 1;
  return result;
}

uint64_t sub_1AF599324(uint64_t a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v6 = *(a1 + 16);
  if (v6)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
  }

  else
  {
    v7 = 0;
  }

  v9 = v6;
  v10 = v7;
  return (*(v4 + 16))(v3, v5, &v9);
}

void sub_1AF599384()
{
  if (!qword_1EB63B218)
  {
    sub_1AF5A9240(255, &unk_1ED72F970, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B218);
    }
  }
}

void sub_1AF599440()
{
  if (!qword_1EB63B230)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B230);
    }
  }
}

uint64_t sub_1AF5994D4(uint64_t a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  if (*(a1 + 16))
  {
    v6 = *(a1 + 32);
  }

  else
  {
    v6 = 8;
  }

  v8 = v6;
  return (*(v4 + 16))(v3, v5, &v8);
}

void sub_1AF59952C()
{
  if (!qword_1EB63B248)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B248);
    }
  }
}

void sub_1AF59958C()
{
  if (!qword_1EB63B250)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B250);
    }
  }
}

uint64_t sub_1AF599688@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF528660(a1);
  *a2 = result;
  return result;
}

unint64_t sub_1AF599750@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF528590(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AF599820@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF5284D8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AF5998E8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF528718(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_1AF5999B8()
{
  if (!qword_1EB63B258)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B258);
    }
  }
}

void sub_1AF599A18()
{
  if (!qword_1EB63B260)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B260);
    }
  }
}

void sub_1AF599A78()
{
  if (!qword_1EB63B268)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B268);
    }
  }
}

void sub_1AF599B08()
{
  if (!qword_1EB63B270)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B270);
    }
  }
}

void sub_1AF599B68()
{
  if (!qword_1EB63B278)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B278);
    }
  }
}

unint64_t sub_1AF599BC8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF52DB60(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AF599CE4@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF52DAC8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AF599DAC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF52DA24(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_1AF599E7C()
{
  if (!qword_1EB63B288)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B288);
    }
  }
}

void sub_1AF599EDC()
{
  if (!qword_1EB63B290)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B290);
    }
  }
}

void sub_1AF599F3C()
{
  if (!qword_1EB63B298)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B298);
    }
  }
}

uint64_t sub_1AF599FCC(uint64_t a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  if (*(a1 + 16))
  {
    v6 = *(a1 + 32);
  }

  else
  {
    v6 = 0;
  }

  v8 = v6;
  return (*(v4 + 16))(v3, v5, &v8);
}

void sub_1AF59A024()
{
  if (!qword_1EB63B2B0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B2B0);
    }
  }
}

unint64_t sub_1AF59A084@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF537564(a1, a2, v3, &type metadata for DistanceConstraint, &off_1F2553FB0);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AF59A164()
{
  if (!qword_1EB63B2B8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B2B8);
    }
  }
}

unint64_t sub_1AF59A1C4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF537350(a1, a2, v3, &type metadata for Attach, &off_1F2553DA8);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AF59A2A4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF5372B0(a1, a2, v3, &type metadata for Attach, &off_1F2553DA8);
  *a3 = result;
  return result;
}

void sub_1AF59A37C()
{
  if (!qword_1EB63B2C0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B2C0);
    }
  }
}

void sub_1AF59A3DC()
{
  if (!qword_1EB63B2C8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B2C8);
    }
  }
}

unint64_t sub_1AF59A43C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF537A60(a1, a2, v3, &type metadata for DirectionalLight, &off_1F252AAB0);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AF59A51C()
{
  if (!qword_1EB63B2D0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B2D0);
    }
  }
}

unint64_t sub_1AF59A57C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF537A60(a1, a2, v3, &type metadata for PointLight, &off_1F252AB60);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AF59A65C()
{
  if (!qword_1EB63B2D8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B2D8);
    }
  }
}

unint64_t sub_1AF59A6BC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF537564(a1, a2, v3, &type metadata for AmbientLight, &off_1F252ACC0);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AF59A79C()
{
  if (!qword_1EB63B2E0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B2E0);
    }
  }
}

unint64_t sub_1AF59A7FC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF5386A8(a1, a2, v3, &type metadata for SpotLight, &off_1F252AC10);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AF59A8DC()
{
  if (!qword_1EB63B2E8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B2E8);
    }
  }
}

unint64_t sub_1AF59A93C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF5376B0(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AF59AA0C()
{
  if (!qword_1EB63B2F0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B2F0);
    }
  }
}

unint64_t sub_1AF59AA6C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF5329A4(a1, a2, v3, &type metadata for ParticleCollide, &off_1F2553720);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AF59ABFC()
{
  if (!qword_1EB63B2F8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B2F8);
    }
  }
}

void sub_1AF59AC5C()
{
  if (!qword_1EB63B300)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B300);
    }
  }
}

uint64_t sub_1AF59ACBC@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF530480(a1);
  *a2 = result;
  return result;
}

unint64_t sub_1AF59AD84@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF5303C8(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AF59AF04()
{
  if (!qword_1EB63B308)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B308);
    }
  }
}

void sub_1AF59AF64()
{
  if (!qword_1EB63B310)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B310);
    }
  }
}

void sub_1AF59AFC4()
{
  if (!qword_1EB63B318)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B318);
    }
  }
}

uint64_t sub_1AF59B024@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF531634(a1);
  *a2 = result;
  return result;
}

unint64_t sub_1AF59B0EC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF531574(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AF59B26C()
{
  if (!qword_1EB63B320)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B320);
    }
  }
}

void sub_1AF59B2CC()
{
  if (!qword_1EB63B328)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B328);
    }
  }
}

void sub_1AF59B32C()
{
  if (!qword_1EB63B330)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B330);
    }
  }
}

uint64_t sub_1AF59B38C@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF52D17C(a1);
  *a2 = result;
  return result;
}

unint64_t sub_1AF59B454@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF52D0D4(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AF59B5D4()
{
  if (!qword_1EB63B338)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B338);
    }
  }
}

void sub_1AF59B634()
{
  if (!qword_1EB63B340)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B340);
    }
  }
}

void sub_1AF59B694()
{
  if (!qword_1EB63B348)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B348);
    }
  }
}

unint64_t sub_1AF59B6F4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF5329A4(a1, a2, v3, &type metadata for ParticleCylinderCollider, &off_1F2552A70);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AF59B884()
{
  if (!qword_1EB63B350)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B350);
    }
  }
}

void sub_1AF59B8E4()
{
  if (!qword_1EB63B358)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B358);
    }
  }
}

uint64_t sub_1AF59B944@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF52E30C(a1, a2, v3, &type metadata for ParticleSDFCollider, &off_1F25532A8);
  *a3 = result;
  *(a3 + 8) = v6 & 1;
  return result;
}

unint64_t sub_1AF59BA24@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF52E25C(a1, a2, v3, &type metadata for ParticleSDFCollider, &off_1F25532A8);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AF59BBB4()
{
  if (!qword_1EB63B360)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B360);
    }
  }
}

void sub_1AF59BC14()
{
  if (!qword_1EB63B368)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B368);
    }
  }
}

void sub_1AF59BC74()
{
  if (!qword_1EB63B370)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B370);
    }
  }
}

uint64_t sub_1AF59BCD4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF52E30C(a1, a2, v3, &type metadata for ParticleMeshCollider, &off_1F2552EB8);
  *a3 = result;
  *(a3 + 8) = v6 & 1;
  return result;
}

unint64_t sub_1AF59BDB4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF52E25C(a1, a2, v3, &type metadata for ParticleMeshCollider, &off_1F2552EB8);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AF59BF44(uint64_t a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  if (*(a1 + 16))
  {
    v6 = *(a1 + 32);
  }

  else
  {
    v6 = 0;
  }

  v8 = v6;
  return (*(v4 + 16))(v3, v5, &v8);
}

void sub_1AF59BF9C()
{
  if (!qword_1EB63B378)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B378);
    }
  }
}

void sub_1AF59BFFC()
{
  if (!qword_1EB63B380)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B380);
    }
  }
}

void sub_1AF59C05C()
{
  if (!qword_1EB63B388)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B388);
    }
  }
}

double sub_1AF59C0BC@<D0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF532EA0(a1, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_1AF59C1A4@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF532E00(a1);
  *a2 = result;
  return result;
}

unint64_t sub_1AF59C26C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF532D48(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AF59C33C()
{
  if (!qword_1EB63B390)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B390);
    }
  }
}

void sub_1AF59C39C()
{
  if (!qword_1EB63B398)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B398);
    }
  }
}

void sub_1AF59C3FC()
{
  if (!qword_1EB63B3A0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B3A0);
    }
  }
}

uint64_t sub_1AF59C45C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF538414(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1AF59C52C@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF53837C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AF59C5F4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF5382DC(a1, a2, v3, &type metadata for KillShape, &off_1F2561EB0);
  *a3 = result;
  return result;
}

void sub_1AF59C6CC()
{
  if (!qword_1EB63B3B0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B3B0);
    }
  }
}

void sub_1AF59C75C()
{
  if (!qword_1EB63B3C8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B3C8);
    }
  }
}

void sub_1AF59C7BC()
{
  if (!qword_1EB63B3D0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B3D0);
    }
  }
}

uint64_t sub_1AF59C81C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF527F48(a1, a2, v3, type metadata accessor for EmitterScript, &off_1F255B720, type metadata accessor for EmitterScript, sub_1AF59CA0C);
  *a3 = result;
  return result;
}

uint64_t sub_1AF59C900@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1AF527E44(a1, a2, v3, type metadata accessor for EmitterScript, &off_1F255B720, type metadata accessor for EmitterScript, sub_1AF59CA0C);
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_1AF59CA24(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1AF5A9240(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AF59CA7C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF527F48(a1, a2, v3, type metadata accessor for ParticleInitScript, &off_1F255B9C0, type metadata accessor for ParticleInitScript, sub_1AF59CC6C);
  *a3 = result;
  return result;
}

uint64_t sub_1AF59CB60@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1AF527E44(a1, a2, v3, type metadata accessor for ParticleInitScript, &off_1F255B9C0, type metadata accessor for ParticleInitScript, sub_1AF59CC6C);
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_1AF59CC84@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF527F48(a1, a2, v3, type metadata accessor for ParticleUpdateScript, &off_1F255BAD0, type metadata accessor for ParticleUpdateScript, sub_1AF59CE74);
  *a3 = result;
  return result;
}

uint64_t sub_1AF59CD68@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1AF527E44(a1, a2, v3, type metadata accessor for ParticleUpdateScript, &off_1F255BAD0, type metadata accessor for ParticleUpdateScript, sub_1AF59CE74);
  *a3 = result;
  a3[1] = v6;
  return result;
}

unint64_t sub_1AF59CE8C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF5305C4(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AF59CF5C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF530520(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_1AF59D030()
{
  if (!qword_1EB63B420)
  {
    sub_1AF589E74(255, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B420);
    }
  }
}

void sub_1AF59D0C4()
{
  if (!qword_1EB63B428)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B428);
    }
  }
}

unint64_t sub_1AF59D124()
{
  result = qword_1EB63B430;
  if (!qword_1EB63B430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63B430);
  }

  return result;
}

unint64_t sub_1AF59D2B0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF53083C(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result);
  *(a2 + 5) = BYTE5(result) & 1;
  return result;
}

uint64_t sub_1AF59D36C@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF5307A4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AF59D434@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF53070C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AF59D5AC@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF530674(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AF59D674@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (*a3)(void, void)@<X3>, _BYTE *a4@<X8>)
{
  result = a3(*(a1 + a2 - 16), *(*(a1 + a2 - 8) + 8));
  *a4 = result & 1;
  return result;
}

void sub_1AF59D6B4()
{
  if (!qword_1EB63B448)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B448);
    }
  }
}

void sub_1AF59D714()
{
  if (!qword_1EB63B450)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B450);
    }
  }
}

void sub_1AF59D774()
{
  if (!qword_1EB63B468)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B468);
    }
  }
}

void sub_1AF59D7D4()
{
  if (!qword_1EB63B470)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B470);
    }
  }
}

void sub_1AF59D834()
{
  if (!qword_1EB63B478)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B478);
    }
  }
}

void sub_1AF59D894()
{
  if (!qword_1EB63B480)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B480);
    }
  }
}

void sub_1AF59D8F4()
{
  if (!qword_1EB63B488)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B488);
    }
  }
}

unint64_t sub_1AF59D954@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF52DE4C(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AF59DA24()
{
  if (!qword_1EB63B490)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B490);
    }
  }
}

unint64_t sub_1AF59DA84()
{
  result = qword_1EB63B498;
  if (!qword_1EB63B498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63B498);
  }

  return result;
}

uint64_t sub_1AF59DAD8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF52E1B0(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1AF59DC44@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF52E0E4(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result);
  *(a2 + 5) = BYTE5(result) & 1;
  return result;
}

uint64_t sub_1AF59DD00@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF52E044(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AF59DDC8@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF52DFA4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AF59DF40@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF52DF04(a1);
  *a2 = result;
  return result;
}

void sub_1AF59E008()
{
  if (!qword_1EB63B4A0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B4A0);
    }
  }
}

void sub_1AF59E068()
{
  if (!qword_1EB63B4A8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B4A8);
    }
  }
}

void sub_1AF59E0C8()
{
  if (!qword_1EB63B4B0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B4B0);
    }
  }
}

void sub_1AF59E128()
{
  if (!qword_1EB63B4B8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B4B8);
    }
  }
}

void sub_1AF59E188()
{
  if (!qword_1EB63B4C0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B4C0);
    }
  }
}

void sub_1AF59E1E8()
{
  if (!qword_1EB63B4C8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B4C8);
    }
  }
}

void sub_1AF59E248()
{
  if (!qword_1EB63B4D0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B4D0);
    }
  }
}

uint64_t sub_1AF59E2A8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF52E4FC(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1AF59E420@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF52E828(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AF59E644@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF52E650(a1);
  *a2 = result;
  return result;
}

unint64_t sub_1AF59E70C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF52E5A0(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AF59E918@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF52E790(a1);
  *a2 = result;
  return result;
}

void sub_1AF59E9E0()
{
  if (!qword_1EB63B4D8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B4D8);
    }
  }
}

void sub_1AF59EA40()
{
  if (!qword_1EB63B4E0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B4E0);
    }
  }
}

void sub_1AF59EAA0()
{
  if (!qword_1EB63B4E8)
  {
    sub_1AF583D60(255, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B4E8);
    }
  }
}

void sub_1AF59EB40()
{
  if (!qword_1EB63B4F0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B4F0);
    }
  }
}

void sub_1AF59EBA0()
{
  if (!qword_1EB63B4F8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B4F8);
    }
  }
}

void sub_1AF59EC00()
{
  if (!qword_1EB63B500)
  {
    sub_1AF583D60(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B500);
    }
  }
}

void sub_1AF59ECD0()
{
  if (!qword_1EB63B518)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B518);
    }
  }
}

void sub_1AF59ED60()
{
  if (!qword_1EB63B530)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B530);
    }
  }
}

void sub_1AF59EE2C()
{
  if (!qword_1EB63B540)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B540);
    }
  }
}

unint64_t sub_1AF59EE8C()
{
  result = qword_1ED724FA8;
  if (!qword_1ED724FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED724FA8);
  }

  return result;
}

unint64_t sub_1AF59EEE0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF52E958(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result);
  *(a2 + 5) = BYTE5(result) & 1;
  return result;
}

uint64_t sub_1AF59EF9C@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF52E8C0(a1);
  *a2 = result;
  return result;
}

void sub_1AF59F1B0()
{
  if (!qword_1EB63B550)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B550);
    }
  }
}

void sub_1AF59F210()
{
  if (!qword_1EB63B558)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B558);
    }
  }
}

void sub_1AF59F270()
{
  if (!qword_1EB63B560)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B560);
    }
  }
}

void sub_1AF59F2D0()
{
  if (!qword_1EB63B568)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B568);
    }
  }
}

unint64_t sub_1AF59F330()
{
  result = qword_1EB63B570;
  if (!qword_1EB63B570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63B570);
  }

  return result;
}

uint64_t sub_1AF59F384@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF531A40(a1, a2, v3, &type metadata for ParticleBoxRenderer, &off_1F254FC88);
  *a3 = result;
  *(a3 + 8) = v6 & 1;
  return result;
}

unint64_t sub_1AF59F500@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF531974(a1, a2, v3, &type metadata for ParticleBoxRenderer, &off_1F254FC88);
  *a3 = result;
  *(a3 + 4) = BYTE4(result);
  *(a3 + 5) = BYTE5(result) & 1;
  return result;
}

unint64_t sub_1AF59F5CC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF53177C(a1, a2, v3, &type metadata for ParticleBoxRenderer, &off_1F254FC88);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AF59F6AC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF5318D4(a1, a2, v3, &type metadata for ParticleBoxRenderer, &off_1F254FC88);
  *a3 = result;
  return result;
}

uint64_t sub_1AF59F784@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF531834(a1, a2, v3, &type metadata for ParticleBoxRenderer, &off_1F254FC88);
  *a3 = result;
  return result;
}

uint64_t sub_1AF59F90C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF5316DC(a1, a2, v3, &type metadata for ParticleBoxRenderer, &off_1F254FC88);
  *a3 = result;
  return result;
}

void sub_1AF59FA14()
{
  if (!qword_1EB63B578)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B578);
    }
  }
}

void sub_1AF59FA74()
{
  if (!qword_1EB63B580)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B580);
    }
  }
}

void sub_1AF59FB08()
{
  if (!qword_1EB63B588)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B588);
    }
  }
}

void sub_1AF59FB68()
{
  if (!qword_1EB63B590)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B590);
    }
  }
}

void sub_1AF59FBC8()
{
  if (!qword_1EB63B598)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B598);
    }
  }
}

void sub_1AF59FC70()
{
  if (!qword_1EB63B5A0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B5A0);
    }
  }
}

void sub_1AF59FCD0()
{
  if (!qword_1EB63B5A8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B5A8);
    }
  }
}

void sub_1AF59FD30()
{
  if (!qword_1EB63B5B0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B5B0);
    }
  }
}

unint64_t sub_1AF59FD90()
{
  result = qword_1EB63B5B8;
  if (!qword_1EB63B5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63B5B8);
  }

  return result;
}

uint64_t sub_1AF59FDE4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF531A40(a1, a2, v3, &type metadata for ParticleSphereRenderer, &off_1F25518F8);
  *a3 = result;
  *(a3 + 8) = v6 & 1;
  return result;
}

unint64_t sub_1AF59FF60@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF531974(a1, a2, v3, &type metadata for ParticleSphereRenderer, &off_1F25518F8);
  *a3 = result;
  *(a3 + 4) = BYTE4(result);
  *(a3 + 5) = BYTE5(result) & 1;
  return result;
}

unint64_t sub_1AF5A002C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF53177C(a1, a2, v3, &type metadata for ParticleSphereRenderer, &off_1F25518F8);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AF5A010C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF5318D4(a1, a2, v3, &type metadata for ParticleSphereRenderer, &off_1F25518F8);
  *a3 = result;
  return result;
}

uint64_t sub_1AF5A01E4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF531834(a1, a2, v3, &type metadata for ParticleSphereRenderer, &off_1F25518F8);
  *a3 = result;
  return result;
}

uint64_t sub_1AF5A036C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF5316DC(a1, a2, v3, &type metadata for ParticleSphereRenderer, &off_1F25518F8);
  *a3 = result;
  return result;
}

void sub_1AF5A0444()
{
  if (!qword_1EB63B5C0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B5C0);
    }
  }
}

void sub_1AF5A04A4()
{
  if (!qword_1EB63B5C8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B5C8);
    }
  }
}

void sub_1AF5A0504()
{
  if (!qword_1EB63B5D0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B5D0);
    }
  }
}

void sub_1AF5A0564()
{
  if (!qword_1EB63B5D8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B5D8);
    }
  }
}

void sub_1AF5A05C4()
{
  if (!qword_1EB63B5E0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B5E0);
    }
  }
}

void sub_1AF5A0624()
{
  if (!qword_1EB63B5E8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B5E8);
    }
  }
}

void sub_1AF5A0684()
{
  if (!qword_1EB63B5F0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B5F0);
    }
  }
}

void sub_1AF5A06E4()
{
  if (!qword_1EB63B5F8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B5F8);
    }
  }
}

unint64_t sub_1AF5A0744@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF5386A8(a1, a2, v3, &type metadata for ParticleSurfaceRenderer, &off_1F2551CD0);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AF5A0824()
{
  if (!qword_1EB63B600)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B600);
    }
  }
}

unint64_t sub_1AF5A0884@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF5349C4(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AF5A0954()
{
  if (!qword_1EB63B608)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B608);
    }
  }
}

uint64_t sub_1AF5A09B4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF5340DC(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1AF5A0A84@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF53403C(a1);
  *a2 = result;
  return result;
}

void sub_1AF5A0B7C()
{
  if (!qword_1EB63B628)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B628);
    }
  }
}

void sub_1AF5A0BDC()
{
  if (!qword_1EB63B630)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B630);
    }
  }
}

unint64_t sub_1AF5A0C3C()
{
  result = qword_1EB63B638;
  if (!qword_1EB63B638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63B638);
  }

  return result;
}

unint64_t sub_1AF5A0D2C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF534420(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result);
  *(a2 + 5) = BYTE5(result) & 1;
  return result;
}

unint64_t sub_1AF5A0DE8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF534228(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AF5A0EB8@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF534380(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AF5A0F80@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF5342E0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AF5A10F8@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF534188(a1);
  *a2 = result;
  return result;
}

void sub_1AF5A11C0()
{
  if (!qword_1EB63B640)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B640);
    }
  }
}

void sub_1AF5A1220()
{
  if (!qword_1EB63B648)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B648);
    }
  }
}

void sub_1AF5A1280()
{
  if (!qword_1EB63B650)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B650);
    }
  }
}

void sub_1AF5A12E0()
{
  if (!qword_1EB63B658)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B658);
    }
  }
}

void sub_1AF5A1340()
{
  if (!qword_1EB63B660)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B660);
    }
  }
}

void sub_1AF5A13A0()
{
  if (!qword_1EB63B668)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B668);
    }
  }
}

void sub_1AF5A1400()
{
  if (!qword_1EB63B670)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B670);
    }
  }
}

unint64_t sub_1AF5A1460@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF5326F0(a1, a2, v3, &type metadata for ParticleAOSphereRenderer, &off_1F254FB28);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AF5A1540()
{
  if (!qword_1EB63B678)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B678);
    }
  }
}

unint64_t sub_1AF5A15A0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF5326F0(a1, a2, v3, &type metadata for ParticleAOBoxRenderer, &off_1F254F8D8);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AF5A1680()
{
  if (!qword_1EB63B680)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B680);
    }
  }
}

uint64_t sub_1AF5A16E0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF5338A8(a1, a2, v3, &type metadata for ParticleDecalRenderer, &off_1F2550050);
  *a3 = result;
  *(a3 + 8) = v6 & 1;
  return result;
}

void sub_1AF5A17C0()
{
  if (!qword_1EB63B688)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B688);
    }
  }
}

uint64_t sub_1AF5A1820@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF5310FC(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1AF5A1A28@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF531418(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result);
  *(a2 + 5) = BYTE5(result) & 1;
  return result;
}

unint64_t sub_1AF5A1AE4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF531238(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AF5A1BB4@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF531380(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AF5A1C7C@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF5312E8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AF5A1DF4@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF5311A0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AF5A1F58@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF5314DC(a1);
  *a2 = result;
  return result;
}

void sub_1AF5A215C()
{
  if (!qword_1EB63B6A0)
  {
    sub_1AF583D60(255, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B6A0);
    }
  }
}

void sub_1AF5A222C()
{
  if (!qword_1EB63B6B8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B6B8);
    }
  }
}

void sub_1AF5A22BC()
{
  if (!qword_1EB63B6D0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B6D0);
    }
  }
}

void sub_1AF5A231C()
{
  if (!qword_1EB63B6D8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B6D8);
    }
  }
}

uint64_t sub_1AF5A237C(uint64_t a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  if (*(a1 + 16))
  {
    v6 = *(a1 + 32);
  }

  else
  {
    v6 = 3;
  }

  v8 = v6;
  return (*(v4 + 16))(v3, v5, &v8);
}

void sub_1AF5A23D4()
{
  if (!qword_1EB63B6E0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B6E0);
    }
  }
}

void sub_1AF5A2434()
{
  if (!qword_1EB63B6E8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B6E8);
    }
  }
}

void sub_1AF5A2494()
{
  if (!qword_1EB63B6F0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B6F0);
    }
  }
}

void sub_1AF5A24F4()
{
  if (!qword_1EB63B6F8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B6F8);
    }
  }
}

void sub_1AF5A2554()
{
  if (!qword_1EB63B700)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B700);
    }
  }
}

uint64_t sub_1AF5A25F8(uint64_t a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v6 = *(a1 + 16);
  if (v6)
  {
    LODWORD(v6) = *(a1 + 32);
    v7 = *(a1 + 36);
  }

  else
  {
    v7 = 0;
  }

  v9 = v6;
  v10 = v7;
  return (*(v4 + 16))(v3, v5, &v9);
}

void sub_1AF5A2658()
{
  if (!qword_1EB63B708)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B708);
    }
  }
}

void sub_1AF5A26B8()
{
  if (!qword_1EB63B710)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B710);
    }
  }
}

void sub_1AF5A2718()
{
  if (!qword_1EB63B718)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B718);
    }
  }
}

void sub_1AF5A2778()
{
  if (!qword_1EB63B720)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B720);
    }
  }
}

uint64_t sub_1AF5A27D8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF52E450(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1AF5A2944@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF52E3B0(a1);
  *a2 = result;
  return result;
}

void sub_1AF5A2AA8()
{
  if (!qword_1EB63B728)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B728);
    }
  }
}

void sub_1AF5A2B08()
{
  if (!qword_1EB63B730)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B730);
    }
  }
}

void sub_1AF5A2B68()
{
  if (!qword_1EB63B738)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B738);
    }
  }
}

void sub_1AF5A2BC8()
{
  if (!qword_1EB63B740)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B740);
    }
  }
}

uint64_t sub_1AF5A2C28@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF532C8C(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1AF5A2CF8@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF532BDC(a1);
  *a2 = result;
  return result;
}

unint64_t sub_1AF5A2DC0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF532B14(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AF5A2E90@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF532A64(a1);
  *a2 = result;
  return result;
}

void sub_1AF5A2F58()
{
  if (!qword_1EB63B748)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B748);
    }
  }
}

void sub_1AF5A2FB8()
{
  if (!qword_1EB63B750)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B750);
    }
  }
}

void sub_1AF5A3018()
{
  if (!qword_1EB63B758)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B758);
    }
  }
}

void sub_1AF5A3078()
{
  if (!qword_1EB63B760)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B760);
    }
  }
}

uint64_t sub_1AF5A30D8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF530A90(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1AF5A31A8@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF5309F8(a1);
  *a2 = result;
  return result;
}

void sub_1AF5A32A0()
{
  if (!qword_1EB63B768)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B768);
    }
  }
}

uint64_t sub_1AF5A3320(uint64_t a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  if (*(a1 + 16))
  {
    v6 = *(a1 + 32);
  }

  else
  {
    v6 = 0;
  }

  v8 = v6;
  return (*(v4 + 16))(v3, v5, &v8);
}

void sub_1AF5A3378()
{
  if (!qword_1EB63B770)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B770);
    }
  }
}

double sub_1AF5A33D8@<D0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AF529278(a1, v5);
  v3 = v5[1];
  *a2 = v5[0];
  a2[1] = v3;
  result = *&v6;
  a2[2] = v6;
  return result;
}

void sub_1AF5A3504()
{
  if (!qword_1EB63B778)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B778);
    }
  }
}

double sub_1AF5A35B8@<D0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AF526DD0(a1, v5);
  v3 = v5[1];
  *a2 = v5[0];
  a2[1] = v3;
  result = *&v6;
  a2[2] = v6;
  return result;
}

uint64_t sub_1AF5A366C@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AF526CE0(a1);
  *a2 = result;
  return result;
}

void sub_1AF5A37B8()
{
  if (!qword_1EB63B780)
  {
    sub_1AF5A9240(255, &qword_1ED723210, MEMORY[0x1E69E6448], MEMORY[0x1E69E62F8]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B780);
    }
  }
}

void sub_1AF5A38A0()
{
  if (!qword_1EB63B788)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B788);
    }
  }
}

double sub_1AF5A3900@<D0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AF529710(a1, &type metadata for HeaderFileAsset, &off_1F2542470, v5);
  v3 = v5[1];
  *a2 = v5[0];
  a2[1] = v3;
  result = *&v6;
  a2[2] = v6;
  return result;
}

__int128 *sub_1AF5A3A60(uint64_t a1, uint64_t a2, void (*a3)(unint64_t, uint64_t, __n128), uint64_t (*a4)(void), uint64_t a5)
{
  v11 = v5[2];
  v10 = v5[3];
  v12 = v5[4];
  v13 = v11[1];
  v15[0] = *v11;
  v15[1] = v13;
  v15[2] = v11[2];
  return sub_1AF5208C0(v15, v10, v12, a2, a3, a4, a5);
}

void sub_1AF5A3AC4()
{
  if (!qword_1EB63B790)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B790);
    }
  }
}

uint64_t sub_1AF5A3B24()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1AF5A3B74@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF527F48(a1, a2, v3, type metadata accessor for HeaderScript, &off_1F2542220, type metadata accessor for HeaderScript, sub_1AF5A3E50);
  *a3 = result;
  return result;
}

uint64_t sub_1AF5A3C58(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 8) = v4;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1AF5A3C9C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1AF527E44(a1, a2, v3, type metadata accessor for HeaderScript, &off_1F2542220, type metadata accessor for HeaderScript, sub_1AF5A3E50);
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_1AF5A3DE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AF5A3E68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AF5A3EF8(uint64_t a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  if (*(a1 + 16))
  {
    v6 = *(a1 + 32);
  }

  else
  {
    v6 = 5;
  }

  v8 = v6;
  return (*(v4 + 16))(v3, v5, &v8);
}

uint64_t sub_1AF5A3F50@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF538618(a1);
  *a2 = result;
  return result;
}

void sub_1AF5A4018()
{
  if (!qword_1EB63B7A8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B7A8);
    }
  }
}

uint64_t sub_1AF5A4078@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF53306C(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1AF5A4148@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF533260(a1);
  *a2 = result;
  *(a2 + 8) = v4;
  return result;
}

unint64_t sub_1AF5A41CC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF533160(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AF5A4484()
{
  if (!qword_1EB63B7B8)
  {
    sub_1AF589E74(255, qword_1ED72F9E0, MEMORY[0x1E69E6448], &off_1F2532E98, type metadata accessor for Curve);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B7B8);
    }
  }
}

uint64_t sub_1AF5A4518()
{

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

void sub_1AF5A4568()
{
  if (!qword_1EB63B7C0)
  {
    sub_1AF589E74(255, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B7C0);
    }
  }
}

void sub_1AF5A45FC()
{
  if (!qword_1EB63B7C8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B7C8);
    }
  }
}

uint64_t sub_1AF5A4668(uint64_t a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v6 = *(a1 + 16);
  if (v6)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
  }

  else
  {
    v7 = -1;
  }

  v9 = v6;
  v10 = v7;
  return (*(v4 + 16))(v3, v5, &v9);
}

void sub_1AF5A46C8()
{
  if (!qword_1EB63B7E0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B7E0);
    }
  }
}

void sub_1AF5A4728()
{
  if (!qword_1EB63B7E8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B7E8);
    }
  }
}

unint64_t sub_1AF5A4788@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF529424(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AF5A4918()
{
  if (!qword_1EB63B7F0)
  {
    sub_1AF583D60(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B7F0);
    }
  }
}

void sub_1AF5A49B8()
{
  if (!qword_1EB63B7F8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B7F8);
    }
  }
}

unint64_t sub_1AF5A4A18@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF52D024(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AF5A4AE8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF52CED8(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1AF5A4BB8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF52CF7C(a1);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 12) = v5;
  return result;
}

uint64_t sub_1AF5A4CD4@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF52CE40(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AF5A4DCC(uint64_t a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  if (*(a1 + 16))
  {
    v6 = *(a1 + 32);
  }

  else
  {
    v6 = 4;
  }

  v8 = v6;
  return (*(v4 + 16))(v3, v5, &v8);
}

void sub_1AF5A4E24()
{
  if (!qword_1EB63B820)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B820);
    }
  }
}

void sub_1AF5A4E84()
{
  if (!qword_1EB63B828)
  {
    sub_1AF583D60(255, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B828);
    }
  }
}

uint64_t sub_1AF5A4F4C(uint64_t a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v6 = *(a1 + 16);
  if (v6)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 44);
  }

  else
  {
    v7 = 0;
    v8 = -1;
  }

  v10 = v6;
  v11 = v7;
  v12 = v8;
  return (*(v4 + 16))(v3, v5, &v10);
}

void sub_1AF5A5008()
{
  if (!qword_1EB63B840)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B840);
    }
  }
}

void sub_1AF5A5068()
{
  if (!qword_1EB63B848)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B848);
    }
  }
}

void sub_1AF5A50C8()
{
  if (!qword_1EB63B850)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B850);
    }
  }
}

uint64_t sub_1AF5A5128(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];

  *a2 = v4;
  a2[1] = v3;
  return result;
}

uint64_t sub_1AF5A516C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1AF527E44(a1, a2, v3, type metadata accessor for MetalFunctionScript, &off_1F255B630, type metadata accessor for MetalFunctionScript, sub_1AF5A5328);
  *a3 = result;
  a3[1] = v6;
  return result;
}

void sub_1AF5A52BC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for ComponentValueWriter();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1AF5A5350()
{
  if (!qword_1EB63B888)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B888);
    }
  }
}

void sub_1AF5A5414()
{
  if (!qword_1EB63B890)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B890);
    }
  }
}

void sub_1AF5A54D0()
{
  if (!qword_1EB63B8A0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B8A0);
    }
  }
}

void sub_1AF5A5540()
{
  if (!qword_1EB63B8A8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B8A8);
    }
  }
}

uint64_t sub_1AF5A55BC(uint64_t a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  if (*(a1 + 16))
  {
    v6 = *(a1 + 32);
  }

  else
  {
    v6 = 10;
  }

  v8 = v6;
  return (*(v4 + 16))(v3, v5, &v8);
}

void sub_1AF5A5614()
{
  if (!qword_1EB63B8C8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B8C8);
    }
  }
}

void sub_1AF5A567C()
{
  if (!qword_1EB63B8D0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B8D0);
    }
  }
}

void sub_1AF5A56DC()
{
  if (!qword_1EB632B00)
  {
    v0 = sub_1AFDFCCB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB632B00);
    }
  }
}

void sub_1AF5A5948()
{
  if (!qword_1EB640080)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB640080);
    }
  }
}

void sub_1AF5A59B8()
{
  if (!qword_1EB63B930)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B930);
    }
  }
}

void sub_1AF5A5A60()
{
  if (!qword_1EB63B940)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B940);
    }
  }
}

uint64_t sub_1AF5A5AE8(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1AF5A5AF8(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1AF5A5B10(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1AF5A5B10(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

void sub_1AF5A5B80()
{
  if (!qword_1EB63B960)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B960);
    }
  }
}

void sub_1AF5A5BE0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1AFDFD538();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1AF5A5C3C()
{
  result = qword_1EB63B9A0;
  if (!qword_1EB63B9A0)
  {
    sub_1AF5A5BE0(255, &qword_1EB63B998, &qword_1ED726BB0, &protocolRef_MTLResource, sub_1AF447DFC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63B9A0);
  }

  return result;
}

unint64_t sub_1AF5A5CC0()
{
  result = qword_1EB63B9B8;
  if (!qword_1EB63B9B8)
  {
    sub_1AF5A5BE0(255, &qword_1EB63B9B0, &qword_1EB6427A0, &off_1E7A77AA8, sub_1AF0D4478);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63B9B8);
  }

  return result;
}

void sub_1AF5A5E1C()
{
  if (!qword_1EB63B9D0)
  {
    sub_1AF583D60(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B9D0);
    }
  }
}

void sub_1AF5A5ECC()
{
  if (!qword_1EB63B9D8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B9D8);
    }
  }
}

void sub_1AF5A5FEC()
{
  if (!qword_1EB63B9E0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B9E0);
    }
  }
}

void sub_1AF5A605C()
{
  if (!qword_1EB63B9E8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B9E8);
    }
  }
}

void sub_1AF5A60CC()
{
  if (!qword_1EB63B9F0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B9F0);
    }
  }
}

void sub_1AF5A61EC()
{
  if (!qword_1EB63B9F8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63B9F8);
    }
  }
}

void sub_1AF5A625C()
{
  if (!qword_1EB63BA00)
  {
    sub_1AF583D60(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63BA00);
    }
  }
}

void sub_1AF5A630C()
{
  if (!qword_1EB63BA08)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63BA08);
    }
  }
}

void sub_1AF5A6374()
{
  if (!qword_1EB63BA10)
  {
    sub_1AF583D60(255, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63BA10);
    }
  }
}

void sub_1AF5A6584()
{
  if (!qword_1EB63BA40)
  {
    sub_1AF583D60(255, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63BA40);
    }
  }
}

void sub_1AF5A6634()
{
  if (!qword_1EB63BA48)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63BA48);
    }
  }
}

void sub_1AF5A66A4()
{
  if (!qword_1EB63BA50)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63BA50);
    }
  }
}

void sub_1AF5A6714()
{
  if (!qword_1EB63BA58)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63BA58);
    }
  }
}

void sub_1AF5A6834()
{
  if (!qword_1EB63BA60)
  {
    sub_1AF583D60(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63BA60);
    }
  }
}

void sub_1AF5A68E4()
{
  if (!qword_1EB63BA68)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63BA68);
    }
  }
}

void sub_1AF5A6954()
{
  if (!qword_1EB63BA70)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63BA70);
    }
  }
}

void sub_1AF5A69C4()
{
  if (!qword_1EB63BA78)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63BA78);
    }
  }
}

void sub_1AF5A6B60()
{
  if (!qword_1EB63BAA0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63BAA0);
    }
  }
}

void sub_1AF5A6BD0()
{
  if (!qword_1EB63BAA8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63BAA8);
    }
  }
}

void sub_1AF5A6CF0()
{
  if (!qword_1EB63BAB0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63BAB0);
    }
  }
}

void sub_1AF5A6D60()
{
  if (!qword_1EB63BAB8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63BAB8);
    }
  }
}

void sub_1AF5A6E80()
{
  if (!qword_1EB63BAC0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63BAC0);
    }
  }
}

void sub_1AF5A6EF0()
{
  if (!qword_1EB63BAC8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63BAC8);
    }
  }
}

void sub_1AF5A7010()
{
  if (!qword_1EB63BAD0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63BAD0);
    }
  }
}

void sub_1AF5A7080()
{
  if (!qword_1EB63BAD8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63BAD8);
    }
  }
}

void sub_1AF5A71A0()
{
  if (!qword_1EB63BAE0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63BAE0);
    }
  }
}

void sub_1AF5A7210()
{
  if (!qword_1EB63BAE8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63BAE8);
    }
  }
}

void sub_1AF5A7330()
{
  if (!qword_1EB63BAF0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63BAF0);
    }
  }
}

void sub_1AF5A73A0()
{
  if (!qword_1EB63BAF8)
  {
    sub_1AF583D60(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63BAF8);
    }
  }
}

void sub_1AF5A7500()
{
  if (!qword_1EB63BB00)
  {
    sub_1AF583D60(255, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63BB00);
    }
  }
}

void sub_1AF5A75B0()
{
  if (!qword_1EB63BB08)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63BB08);
    }
  }
}

void sub_1AF5A7620()
{
  if (!qword_1EB63BB10)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63BB10);
    }
  }
}

uint64_t sub_1AF5A7690(uint64_t a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  if (*(a1 + 16))
  {
    v6 = *(a1 + 32);
  }

  else
  {
    v6 = 0;
  }

  v8 = v6;
  return (*(v4 + 16))(v3, v5, &v8);
}

void sub_1AF5A76E8()
{
  if (!qword_1EB63BB18)
  {
    sub_1AF583D60(255, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63BB18);
    }
  }
}

void sub_1AF5A7848()
{
  if (!qword_1EB63BB20)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63BB20);
    }
  }
}

void sub_1AF5A78B8()
{
  if (!qword_1EB63BB28)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63BB28);
    }
  }
}

void sub_1AF5A7928()
{
  if (!qword_1EB63BB30)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63BB30);
    }
  }
}

void sub_1AF5A7AC4()
{
  if (!qword_1EB63BB58)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63BB58);
    }
  }
}

void sub_1AF5A7BE4()
{
  if (!qword_1EB63BB60)
  {
    sub_1AF583D60(255, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63BB60);
    }
  }
}

void sub_1AF5A7C8C()
{
  if (!qword_1EB63BB68)
  {
    sub_1AF583D60(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63BB68);
    }
  }
}

void sub_1AF5A7D3C()
{
  if (!qword_1EB63BB70)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63BB70);
    }
  }
}

void sub_1AF5A7F4C()
{
  if (!qword_1EB63BBB8)
  {
    sub_1AF583D60(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63BBB8);
    }
  }
}

void sub_1AF5A8070()
{
  if (!qword_1EB63BBE0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63BBE0);
    }
  }
}

void sub_1AF5A80E0()
{
  if (!qword_1EB63BBE8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63BBE8);
    }
  }
}

void sub_1AF5A81BC()
{
  if (!qword_1EB63BC10)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63BC10);
    }
  }
}

void sub_1AF5A822C()
{
  if (!qword_1EB63BC18)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63BC18);
    }
  }
}

void sub_1AF5A834C()
{
  if (!qword_1EB63BC20)
  {
    sub_1AF583D60(255, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63BC20);
    }
  }
}

void sub_1AF5A84BC()
{
  if (!qword_1EB63BC30)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63BC30);
    }
  }
}

void sub_1AF5A85EC()
{
  if (!qword_1EB63BC40)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63BC40);
    }
  }
}

void sub_1AF5A865C()
{
  if (!qword_1EB63BC48)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63BC48);
    }
  }
}

void sub_1AF5A877C()
{
  if (!qword_1EB63BC50)
  {
    sub_1AF583D60(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63BC50);
    }
  }
}

void sub_1AF5A882C()
{
  if (!qword_1EB63BC58)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63BC58);
    }
  }
}

void sub_1AF5A894C()
{
  if (!qword_1EB63BC60)
  {
    sub_1AF583D60(255, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63BC60);
    }
  }
}

void sub_1AF5A8A0C()
{
  if (!qword_1EB63BC68)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63BC68);
    }
  }
}

void sub_1AF5A8B20(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1AF5A8B84(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AF5A8BCC(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1AF51B13C(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF5A8C30()
{
  result = qword_1EB63BD30;
  if (!qword_1EB63BD30)
  {
    sub_1AF5A5BE0(255, &qword_1EB63BD28, &qword_1EB63BD20, &protocolRef_MTLBinaryArchive, sub_1AF447DFC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63BD30);
  }

  return result;
}

uint64_t destroy for ShaderArchive.Library()
{
}

void *initializeWithCopy for ShaderArchive.Library(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  return a1;
}

void *assignWithCopy for ShaderArchive.Library(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];

  return a1;
}

void *assignWithTake for ShaderArchive.Library(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;

  v5 = a2[3];
  a1[2] = a2[2];
  a1[3] = v5;

  return a1;
}

uint64_t _s15CaptureDeviceIDVwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t _s15CaptureDeviceIDVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1AF5A8EC8(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_1AF5A5AE8(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for KernelReference(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_1AF5A5AE8(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  sub_1AF5A5B10(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for KernelReference(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  sub_1AF5A5B10(v4, v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for FunctionConstant.Key(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for FunctionConstant.Key(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

unint64_t sub_1AF5A90A4()
{
  result = qword_1EB63BD50;
  if (!qword_1EB63BD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63BD50);
  }

  return result;
}

unint64_t sub_1AF5A90FC()
{
  result = qword_1EB63BD58;
  if (!qword_1EB63BD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63BD58);
  }

  return result;
}

unint64_t sub_1AF5A9154()
{
  result = qword_1EB63BD60;
  if (!qword_1EB63BD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63BD60);
  }

  return result;
}

uint64_t sub_1AF5A91E8(uint64_t a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  if (*(a1 + 16))
  {
    v6 = *(a1 + 32);
  }

  else
  {
    v6 = 7;
  }

  v8 = v6;
  return (*(v4 + 16))(v3, v5, &v8);
}

void sub_1AF5A9240(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1AF5A9290()
{
  if (!qword_1EB63BD80)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63BD80);
    }
  }
}

uint64_t sub_1AF5AA7C0(uint64_t a1)
{
  v2 = sub_1AF5AB6E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5AA7FC(uint64_t a1)
{
  v2 = sub_1AF5AB6E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5AA888(uint64_t a1)
{
  v2 = sub_1AF5AB4F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5AA8C4(uint64_t a1)
{
  v2 = sub_1AF5AB4F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5AA950(void *a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(void), uint64_t a6, void (*a7)(void))
{
  sub_1AF5AB678(0, a4, a5, a6, MEMORY[0x1E69E6F58]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v16 - v13;
  sub_1AF441150(a1, a1[3]);
  a7();
  sub_1AFDFF3F8();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1AF5AAA8C(unint64_t a1, uint64_t a2)
{

  v4 = sub_1AF67CACC(&type metadata for HiddenOrHasHiddenAncestor, &off_1F2529510, a1);

  if (v4)
  {

    v6 = sub_1AF67CACC(&type metadata for Hidden, &off_1F25296F8, a1);

    if (!v6)
    {
      if (a1 != 0xFFFFFFFF)
      {
        v7 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

        if (v7)
        {
          v8 = *(v7 + 80);
          swift_unknownObjectWeakLoadStrong();
          v7 = *(v7 + 56);
        }

        else
        {
          v8 = 0;
        }

        swift_unknownObjectUnownedInit();
        v13[0] = a2;
        v13[2] = v7;
        swift_unknownObjectUnownedAssign();
        swift_unownedRetain();
        swift_unknownObjectRelease();
        v14 = v8;
        sub_1AF6C150C(&type metadata for HiddenOrHasHiddenAncestor, &off_1F2529590, a1);
        sub_1AF579490(v13);
        if (v8)
        {
          v9 = [objc_opt_self() immediateMode];
          sub_1AF6C5E30(v9 ^ 1);
        }
      }

      v10 = sub_1AF5AB97C(a1, a2);
      v11 = *(v10 + 16);
      if (v11)
      {
        v12 = (v10 + 40);
        do
        {
          sub_1AF5AAA8C(*(v12 - 1), *v12);
          v12 += 2;
          --v11;
        }

        while (v11);
      }
    }
  }

  return result;
}

uint64_t sub_1AF5AAC40(unint64_t a1, uint64_t a2)
{

  v4 = sub_1AF67CACC(&type metadata for HiddenOrHasHiddenAncestor, &off_1F2529510, a1);

  if (!v4)
  {
    if (a1 != 0xFFFFFFFF)
    {
      v6 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

      if (v6)
      {
        v7 = *(v6 + 80);
        swift_unknownObjectWeakLoadStrong();
        v6 = *(v6 + 56);
      }

      else
      {
        v7 = 0;
      }

      swift_unknownObjectUnownedInit();
      v12[0] = a2;
      v12[2] = v6;
      swift_unknownObjectUnownedAssign();
      swift_unownedRetain();
      swift_unknownObjectRelease();
      v13 = v7;
      sub_1AFC75AB0(v12, a1);
      sub_1AF579490(v12);
      if (v7)
      {
        v8 = [objc_opt_self() immediateMode];
        sub_1AF6C5E30(v8 ^ 1);
      }
    }

    v9 = sub_1AF5AB97C(a1, a2);
    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = (v9 + 40);
      do
      {
        sub_1AF5AAC40(*(v11 - 1), *v11);
        v11 += 2;
        --v10;
      }

      while (v10);
    }
  }

  return result;
}

uint64_t sub_1AF5AADE8(char a1, unint64_t a2, uint64_t a3)
{
  v6 = a1 & 1;

  v7 = sub_1AF67CACC(&type metadata for Hidden, &off_1F25296F8, a2);

  if (v7 != v6)
  {
    if (a1)
    {
      if (a2 != 0xFFFFFFFF)
      {
        v9 = *(a3 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

        if (v9)
        {
          v10 = *(v9 + 80);
          swift_unknownObjectWeakLoadStrong();
          v9 = *(v9 + 56);
        }

        else
        {
          v10 = 0;
        }

        swift_unknownObjectUnownedInit();
        v19[0] = a3;
        v20 = v9;
        swift_unknownObjectUnownedAssign();
        swift_unownedRetain();
        swift_unknownObjectRelease();
        v21 = v10;
        sub_1AFC75BE8(v19, a2);
        sub_1AF579490(v19);
        if (v10)
        {
          v13 = [objc_opt_self() immediateMode];
          sub_1AF6C5E30(v13 ^ 1);
        }
      }

      return sub_1AF5AAC40(a2, a3);
    }

    else
    {
      if (a2 == 0xFFFFFFFF)
      {
        return sub_1AF5AAA8C(a2, a3);
      }

      v11 = *(a3 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

      if (v11)
      {
        v12 = *(v11 + 80);
        swift_unknownObjectWeakLoadStrong();
        v11 = *(v11 + 56);
      }

      else
      {
        v12 = 0;
      }

      swift_unknownObjectUnownedInit();
      v19[0] = a3;
      v20 = v11;
      swift_unknownObjectUnownedAssign();
      swift_unownedRetain();
      swift_unknownObjectRelease();
      v21 = v12;
      sub_1AF6C150C(&type metadata for Hidden, &off_1F25296D8, a2);
      sub_1AF579490(v19);
      if (v12)
      {
        v14 = [objc_opt_self() immediateMode];
        sub_1AF6C5E30(v14 ^ 1);
      }

      v15 = sub_1AF3C9170(a2);
      v17 = v16;

      if (v17)
      {
        return sub_1AF5AAA8C(a2, a3);
      }

      v18 = sub_1AF67CACC(&type metadata for HiddenOrHasHiddenAncestor, &off_1F2529510, v15);

      if (!v18)
      {
        return sub_1AF5AAA8C(a2, a3);
      }
    }
  }

  return result;
}

uint64_t sub_1AF5AB0D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1AFDFEE28();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1AF5AB154(uint64_t a1)
{
  v2 = sub_1AF5AB624();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5AB190(uint64_t a1)
{
  v2 = sub_1AF5AB624();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5AB1CC@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v15 = a2;
  sub_1AF5AB678(0, &qword_1EB63BDB8, sub_1AF5AB624, &type metadata for Opacity.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v14 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5AB624();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v10 = v15;
  sub_1AFDFE738();
  v12 = v11;
  (*(v6 + 8))(v9, v5);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *v10 = v12;
  return result;
}

uint64_t sub_1AF5AB384(void *a1)
{
  sub_1AF5AB678(0, &qword_1EB63BDC8, sub_1AF5AB624, &type metadata for Opacity.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5AB624();
  sub_1AFDFF3F8();
  sub_1AFDFE8E8();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1AF5AB4F0()
{
  result = qword_1EB63BDA0;
  if (!qword_1EB63BDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63BDA0);
  }

  return result;
}

unint64_t sub_1AF5AB578()
{
  result = qword_1EB63BDA8;
  if (!qword_1EB63BDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63BDA8);
  }

  return result;
}

unint64_t sub_1AF5AB5D0()
{
  result = qword_1EB63BDB0;
  if (!qword_1EB63BDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63BDB0);
  }

  return result;
}

unint64_t sub_1AF5AB624()
{
  result = qword_1EB63BDC0;
  if (!qword_1EB63BDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63BDC0);
  }

  return result;
}

void sub_1AF5AB678(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1AF5AB6E0()
{
  result = qword_1EB63BDD8;
  if (!qword_1EB63BDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63BDD8);
  }

  return result;
}

unint64_t sub_1AF5AB758()
{
  result = qword_1EB63BDE0;
  if (!qword_1EB63BDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63BDE0);
  }

  return result;
}

unint64_t sub_1AF5AB7B0()
{
  result = qword_1EB63BDE8;
  if (!qword_1EB63BDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63BDE8);
  }

  return result;
}

unint64_t sub_1AF5AB808()
{
  result = qword_1EB63BDF0;
  if (!qword_1EB63BDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63BDF0);
  }

  return result;
}

unint64_t sub_1AF5AB860()
{
  result = qword_1EB63BDF8;
  if (!qword_1EB63BDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63BDF8);
  }

  return result;
}

unint64_t sub_1AF5AB8B8()
{
  result = qword_1EB63BE00;
  if (!qword_1EB63BE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63BE00);
  }

  return result;
}

uint64_t sub_1AF5AB97C(unint64_t a1, uint64_t a2)
{
  if (a1 == 0xFFFFFFFF)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = sub_1AF3C9BA4(a1);

  result = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v6 = *(v5 + 16);
    if (v6)
    {
      v14 = MEMORY[0x1E69E7CC0];
      sub_1AFC072B4(0, v6, 0);
      v7 = 32;
      v8 = v14;
      do
      {
        v9 = *(v5 + v7);
        v15 = v8;
        v11 = *(v8 + 16);
        v10 = *(v8 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1AFC072B4(v10 > 1, v11 + 1, 1);
          v8 = v15;
        }

        *(v8 + 16) = v11 + 1;
        v12 = v8 + 16 * v11;
        *(v12 + 32) = v9;
        *(v12 + 40) = a2;
        v7 += 8;
        --v6;
      }

      while (v6);
      v13 = v8;

      return v13;
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1AF5ABAB4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AF5B0CC4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1AF5ABAE0(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3D8();
  v5 = *v1;
  sub_1AF448018(v3, v4);
  sub_1AF480018();
  sub_1AFDFEF28();
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v3);
}

double sub_1AF5ABBE4@<D0>(void *a1@<X8>)
{
  *&result = 0xFFFFFFFFLL;
  *a1 = 0xFFFFFFFFLL;
  return result;
}

uint64_t sub_1AF5ABBF0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 16);
  if (v4)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1AFC07194(0, v4, 0);
    v6 = v15;
    ObjectType = swift_getObjectType();
    v8 = 32;
    do
    {
      v9 = *(v3 + v8);
      sub_1AF62BFF0(v9, 1, ObjectType, a2);
      v16 = v6;
      v11 = *(v6 + 16);
      v10 = *(v6 + 24);
      if (v11 >= v10 >> 1)
      {
        v12 = v9;
        sub_1AFC07194(v10 > 1, v11 + 1, 1);
        v9 = v12;
        v6 = v16;
      }

      *(v6 + 16) = v11 + 1;
      *(v6 + 8 * v11 + 32) = v9;
      v8 += 8;
      --v4;
    }

    while (v4);

    v2 = v14;
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
  }

  *v2 = v6;
  return result;
}

void *sub_1AF5ABD1C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1AF5B0F5C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1AF5ABD48(void *a1)
{
  v2 = *v1;
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3D8();
  v6 = v2;
  sub_1AF448018(v4, v5);
  sub_1AF47815C(0, &unk_1ED723230, &type metadata for Entity, MEMORY[0x1E69E62F8]);
  sub_1AF5B2A80(&qword_1EB642E80, sub_1AF480018);
  sub_1AFDFEF28();
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v4);
}

uint64_t sub_1AF5ABE50(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  v4 = a1;
  v5 = HIDWORD(a3);
  v6 = HIDWORD(a1);
  v8 = a1 != a3 || v6 != v5;
  if (v8 && a2 != 0)
  {
LABEL_11:
    v11 = v4 == -1 && HIDWORD(v4) == 0;
    v8 = v11;
    if (!v11)
    {

      if ((v4 & 0x80000000) == 0 && v4 < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
      {
        v12 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v4);
        v13 = *(v12 + 2);
        if (v6 == 0xFFFFFFFF || v12[2] == v6)
        {
          v14 = *(*(a2 + 144) + 8 * *v12 + 32);
          v15 = *(v14 + 48);
          v16 = (v15 + 32);
          v17 = *(v15 + 16) + 1;
          while (--v17)
          {
            v18 = v16 + 5;
            v19 = *v16;
            v16 += 5;
            if (v19 == &type metadata for Parent)
            {
              v4 = *(&(*(v18 - 2))->Kind + 8 * v13 + *(v14 + 128));

              v6 = HIDWORD(v4);
              if (v4 == v3 && v6 == v5)
              {
                return v8;
              }

              goto LABEL_11;
            }
          }
        }
      }

      return 1;
    }
  }

  return v8;
}

uint64_t sub_1AF5ABF9C(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a2 && (sub_1AF5ABE50(a1, a2, a3) & 1) == 0)
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v15 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v20 = v15;
      swift_once();
      v15 = v20;
    }

    v21[0] = 0;
    return sub_1AF0D4F18(v15, v21, 0xD00000000000002FLL, 0x80000001AFF2C100);
  }

  else
  {
    if (a3 == 0xFFFFFFFF || (, v8 = sub_1AF3C9170(a3), v10 = v9, result = , (v10 & 1) != 0) || !HIDWORD(v8) && v8 == -1)
    {
      if (!a2)
      {
        goto LABEL_21;
      }

      goto LABEL_8;
    }

    if (!a2 || v8 != a1 || (v8 ^ a1) >> 32)
    {

      sub_1AF5B1370(a3, v8);

      if (!a2)
      {
        goto LABEL_21;
      }

LABEL_8:

      v12 = sub_1AF65A128(a1);

      if (v12)
      {
        if (a3 != 0xFFFFFFFF)
        {
          v13 = *(a4 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

          if (v13)
          {
            v14 = *(v13 + 80);
            swift_unknownObjectWeakLoadStrong();
            v13 = *(v13 + 56);
          }

          else
          {
            v14 = 0;
          }

          swift_unknownObjectUnownedInit();
          v21[0] = a4;
          v22 = v13;
          swift_unknownObjectUnownedAssign();
          swift_unownedRetain();
          swift_unknownObjectRelease();
          v23 = v14;
          sub_1AFC75E6C(v21, a1, a3);
          sub_1AF579490(v21);
          if (v14)
          {
            v19 = [objc_opt_self() immediateMode];
            sub_1AF6C5E30(v19 ^ 1);
          }
        }

        sub_1AF5B158C(a3, a1);
        goto LABEL_32;
      }

LABEL_21:
      if (a3 == 0xFFFFFFFF)
      {
        return sub_1AF5AC358(a3, a4);
      }

      v16 = *(a4 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

      if (v16)
      {
        v17 = *(v16 + 80);
        swift_unknownObjectWeakLoadStrong();
        v16 = *(v16 + 56);
      }

      else
      {
        v17 = 0;
      }

      swift_unknownObjectUnownedInit();
      v21[0] = a4;
      v22 = v16;
      swift_unknownObjectUnownedAssign();
      swift_unownedRetain();
      swift_unknownObjectRelease();
      v23 = v17;
      sub_1AF6C150C(&type metadata for Parent, &off_1F2529C98, a3);
      sub_1AF579490(v21);
      if (v17)
      {
        v18 = [objc_opt_self() immediateMode];
        sub_1AF6C5E30(v18 ^ 1);
      }

LABEL_32:

      return sub_1AF5AC358(a3, a4);
    }
  }

  return result;
}

uint64_t sub_1AF5AC358(unint64_t a1, uint64_t a2)
{

  v4 = sub_1AF67CACC(&type metadata for Hidden, &off_1F25296F8, a1);

  if (!v4)
  {
    if (a1 == 0xFFFFFFFF || (, v6 = sub_1AF3C9170(a1), v8 = v7, , (v8 & 1) != 0) || (, v9 = sub_1AF67CACC(&type metadata for HiddenOrHasHiddenAncestor, &off_1F2529510, v6), , !v9))
    {

      return sub_1AF5AAA8C(a1, a2);
    }

    else
    {

      return sub_1AF5AAC40(a1, a2);
    }
  }

  return result;
}

uint64_t sub_1AF5AC464(uint64_t result, unint64_t a2)
{
  v3 = v2;
  v5 = result;
  v6 = HIDWORD(a2);
  if (HIDWORD(a2) || a2 != -1)
  {
    v7 = *v2;
    swift_unownedRetainStrong();
    v8 = sub_1AF67CACC(&type metadata for Children, &off_1F252A420, a2);

    swift_unownedRetainStrong();
    sub_1AFBFD360(v5, a2);

    swift_unownedRetainStrong();

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v3 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v10[0] = a2;
      v10[1] = v6;
      v11 = v7;
      sub_1AF5B2158(0, &qword_1EB63BE08);
      v14 = v9;
      v15 = &off_1F2536170;
      v12 = v5;
      v13 = !v8;
      v16 = 12;

      sub_1AF6C67D0(v10);

      return sub_1AF57955C(v10);
    }
  }

  return result;
}

uint64_t sub_1AF5AC5A8(uint64_t result, unint64_t a2)
{
  v3 = v2;
  v5 = result;
  v6 = HIDWORD(a2);
  if (HIDWORD(a2) || a2 != -1)
  {
    v7 = *v2;
    swift_unownedRetainStrong();
    v8 = type metadata accessor for HeaderScript();
    v9 = sub_1AF67CACC(v8, &off_1F25421A0, a2);

    swift_unownedRetainStrong();
    sub_1AFBFDF4C(v5, a2);

    swift_unownedRetainStrong();

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v3 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v13[0] = a2;
      v13[1] = v6;
      v14 = v7;
      sub_1AF5B25E0(0, &qword_1EB63BE58, type metadata accessor for HeaderScript, &off_1F2542220, type metadata accessor for ComponentWriter);
      v11 = v10;
      v15[3] = v10;
      v15[4] = &off_1F2536170;
      v12 = sub_1AF585714(v15);
      sub_1AF5B264C(v5, v12, type metadata accessor for HeaderScript);
      *(v12 + *(v11 + 36)) = !v9;
      v16 = 12;
      sub_1AF6C67D0(v13);

      return sub_1AF57955C(v13);
    }
  }

  return result;
}

uint64_t sub_1AF5AC738(uint64_t result, unint64_t a2)
{
  v3 = v2;
  v5 = result;
  v6 = HIDWORD(a2);
  if (HIDWORD(a2) || a2 != -1)
  {
    v7 = *v2;
    swift_unownedRetainStrong();
    sub_1AF5B21E4(0);
    v9 = sub_1AF67CACC(v8, &off_1F250F288, a2);

    swift_unownedRetainStrong();
    sub_1AFBFDF34(v5, a2);

    swift_unownedRetainStrong();

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v3 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v13[0] = a2;
      v13[1] = v6;
      v14 = v7;
      sub_1AF5B25E0(0, &qword_1EB63BE50, sub_1AF5B21E4, &off_1F250F310, type metadata accessor for ComponentWriter);
      v11 = v10;
      v15[3] = v10;
      v15[4] = &off_1F2536170;
      v12 = sub_1AF585714(v15);
      sub_1AF5B264C(v5, v12, sub_1AF5B21E4);
      *(v12 + *(v11 + 36)) = !v9;
      v16 = 12;
      sub_1AF6C67D0(v13);

      return sub_1AF57955C(v13);
    }
  }

  return result;
}

uint64_t sub_1AF5AC8C8(uint64_t result, unint64_t a2)
{
  v3 = v2;
  v5 = result;
  v6 = HIDWORD(a2);
  if (HIDWORD(a2) || a2 != -1)
  {
    v7 = *v2;
    swift_unownedRetainStrong();
    sub_1AF5B21A8(0);
    v9 = sub_1AF67CACC(v8, &off_1F2558F10, a2);

    swift_unownedRetainStrong();
    sub_1AFBFDF04(v5, a2);

    swift_unownedRetainStrong();

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v3 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v13[0] = a2;
      v13[1] = v6;
      v14 = v7;
      sub_1AF5B25E0(0, &qword_1EB63BE48, sub_1AF5B21A8, &off_1F2558F90, type metadata accessor for ComponentWriter);
      v11 = v10;
      v15[3] = v10;
      v15[4] = &off_1F2536170;
      v12 = sub_1AF585714(v15);
      sub_1AF5B264C(v5, v12, sub_1AF5B21A8);
      *(v12 + *(v11 + 36)) = !v9;
      v16 = 12;
      sub_1AF6C67D0(v13);

      return sub_1AF57955C(v13);
    }
  }

  return result;
}

uint64_t sub_1AF5ACA58(uint64_t result, unint64_t a2)
{
  v3 = v2;
  v5 = result;
  v6 = HIDWORD(a2);
  if (HIDWORD(a2) || a2 != -1)
  {
    v7 = *v2;
    swift_unownedRetainStrong();
    v8 = type metadata accessor for TriggerScript(0);
    v9 = sub_1AF67CACC(v8, &off_1F255BB48, a2);

    swift_unownedRetainStrong();
    sub_1AFBFDF94(v5, a2);

    swift_unownedRetainStrong();

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v3 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v13[0] = a2;
      v13[1] = v6;
      v14 = v7;
      sub_1AF5B25E0(0, &qword_1EB63BE70, type metadata accessor for TriggerScript, &off_1F255BBC8, type metadata accessor for ComponentWriter);
      v11 = v10;
      v15[3] = v10;
      v15[4] = &off_1F2536170;
      v12 = sub_1AF585714(v15);
      sub_1AF5B264C(v5, v12, type metadata accessor for TriggerScript);
      *(v12 + *(v11 + 36)) = !v9;
      v16 = 12;
      sub_1AF6C67D0(v13);

      return sub_1AF57955C(v13);
    }
  }

  return result;
}

uint64_t sub_1AF5ACBE8(uint64_t result, unint64_t a2)
{
  v3 = v2;
  v5 = result;
  v6 = HIDWORD(a2);
  if (HIDWORD(a2) || a2 != -1)
  {
    v7 = *v2;
    swift_unownedRetainStrong();
    sub_1AF5B225C(0);
    v9 = sub_1AF67CACC(v8, &off_1F250F288, a2);

    swift_unownedRetainStrong();
    sub_1AFBFDF7C(v5, a2);

    swift_unownedRetainStrong();

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v3 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v13[0] = a2;
      v13[1] = v6;
      v14 = v7;
      sub_1AF5B25E0(0, &qword_1EB63BE68, sub_1AF5B225C, &off_1F250F310, type metadata accessor for ComponentWriter);
      v11 = v10;
      v15[3] = v10;
      v15[4] = &off_1F2536170;
      v12 = sub_1AF585714(v15);
      sub_1AF5B264C(v5, v12, sub_1AF5B225C);
      *(v12 + *(v11 + 36)) = !v9;
      v16 = 12;
      sub_1AF6C67D0(v13);

      return sub_1AF57955C(v13);
    }
  }

  return result;
}

uint64_t sub_1AF5ACD78(uint64_t result, unint64_t a2)
{
  v3 = v2;
  v5 = result;
  v6 = HIDWORD(a2);
  if (HIDWORD(a2) || a2 != -1)
  {
    v7 = *v2;
    swift_unownedRetainStrong();
    sub_1AF5B2220(0);
    v9 = sub_1AF67CACC(v8, &off_1F2558F10, a2);

    swift_unownedRetainStrong();
    sub_1AFBFDEEC(v5, a2);

    swift_unownedRetainStrong();

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v3 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v13[0] = a2;
      v13[1] = v6;
      v14 = v7;
      sub_1AF5B25E0(0, &qword_1EB63BE60, sub_1AF5B2220, &off_1F2558F90, type metadata accessor for ComponentWriter);
      v11 = v10;
      v15[3] = v10;
      v15[4] = &off_1F2536170;
      v12 = sub_1AF585714(v15);
      sub_1AF5B264C(v5, v12, sub_1AF5B2220);
      *(v12 + *(v11 + 36)) = !v9;
      v16 = 12;
      sub_1AF6C67D0(v13);

      return sub_1AF57955C(v13);
    }
  }

  return result;
}

uint64_t sub_1AF5ACF08(uint64_t result, unint64_t a2)
{
  v3 = v2;
  v5 = result;
  v6 = HIDWORD(a2);
  if (HIDWORD(a2) || a2 != -1)
  {
    v7 = *v2;
    swift_unownedRetainStrong();
    updated = type metadata accessor for ParticleUpdateScript(0);
    v9 = sub_1AF67CACC(updated, &off_1F255BA18, a2);

    swift_unownedRetainStrong();
    sub_1AFBFDFF4(v5, a2);

    swift_unownedRetainStrong();

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v3 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v13[0] = a2;
      v13[1] = v6;
      v14 = v7;
      sub_1AF5B25E0(0, &qword_1EB63BE88, type metadata accessor for ParticleUpdateScript, &off_1F255BAD0, type metadata accessor for ComponentWriter);
      v11 = v10;
      v15[3] = v10;
      v15[4] = &off_1F2536170;
      v12 = sub_1AF585714(v15);
      sub_1AF5B264C(v5, v12, type metadata accessor for ParticleUpdateScript);
      *(v12 + *(v11 + 36)) = !v9;
      v16 = 12;
      sub_1AF6C67D0(v13);

      return sub_1AF57955C(v13);
    }
  }

  return result;
}

uint64_t sub_1AF5AD098(uint64_t result, unint64_t a2)
{
  v3 = v2;
  v5 = result;
  v6 = HIDWORD(a2);
  if (HIDWORD(a2) || a2 != -1)
  {
    v7 = *v2;
    swift_unownedRetainStrong();
    sub_1AF5B22D4(0);
    v9 = sub_1AF67CACC(v8, &off_1F250F288, a2);

    swift_unownedRetainStrong();
    sub_1AFBFDFDC(v5, a2);

    swift_unownedRetainStrong();

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v3 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v13[0] = a2;
      v13[1] = v6;
      v14 = v7;
      sub_1AF5B25E0(0, &qword_1EB63BE80, sub_1AF5B22D4, &off_1F250F310, type metadata accessor for ComponentWriter);
      v11 = v10;
      v15[3] = v10;
      v15[4] = &off_1F2536170;
      v12 = sub_1AF585714(v15);
      sub_1AF5B264C(v5, v12, sub_1AF5B22D4);
      *(v12 + *(v11 + 36)) = !v9;
      v16 = 12;
      sub_1AF6C67D0(v13);

      return sub_1AF57955C(v13);
    }
  }

  return result;
}

uint64_t sub_1AF5AD228(uint64_t result, unint64_t a2)
{
  v3 = v2;
  v5 = result;
  v6 = HIDWORD(a2);
  if (HIDWORD(a2) || a2 != -1)
  {
    v7 = *v2;
    swift_unownedRetainStrong();
    sub_1AF5B2298(0);
    v9 = sub_1AF67CACC(v8, &off_1F2558F10, a2);

    swift_unownedRetainStrong();
    sub_1AFBFDFAC(v5, a2);

    swift_unownedRetainStrong();

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v3 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v13[0] = a2;
      v13[1] = v6;
      v14 = v7;
      sub_1AF5B25E0(0, &qword_1EB63BE78, sub_1AF5B2298, &off_1F2558F90, type metadata accessor for ComponentWriter);
      v11 = v10;
      v15[3] = v10;
      v15[4] = &off_1F2536170;
      v12 = sub_1AF585714(v15);
      sub_1AF5B264C(v5, v12, sub_1AF5B2298);
      *(v12 + *(v11 + 36)) = !v9;
      v16 = 12;
      sub_1AF6C67D0(v13);

      return sub_1AF57955C(v13);
    }
  }

  return result;
}

uint64_t sub_1AF5AD3B8(uint64_t result, unint64_t a2)
{
  v3 = v2;
  v5 = result;
  v6 = HIDWORD(a2);
  if (HIDWORD(a2) || a2 != -1)
  {
    v7 = *v2;
    swift_unownedRetainStrong();
    inited = type metadata accessor for ParticleInitScript(0);
    v9 = sub_1AF67CACC(inited, &off_1F255B908, a2);

    swift_unownedRetainStrong();
    sub_1AFBFE054(v5, a2);

    swift_unownedRetainStrong();

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v3 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v13[0] = a2;
      v13[1] = v6;
      v14 = v7;
      sub_1AF5B25E0(0, &qword_1EB63BEA0, type metadata accessor for ParticleInitScript, &off_1F255B9C0, type metadata accessor for ComponentWriter);
      v11 = v10;
      v15[3] = v10;
      v15[4] = &off_1F2536170;
      v12 = sub_1AF585714(v15);
      sub_1AF5B264C(v5, v12, type metadata accessor for ParticleInitScript);
      *(v12 + *(v11 + 36)) = !v9;
      v16 = 12;
      sub_1AF6C67D0(v13);

      return sub_1AF57955C(v13);
    }
  }

  return result;
}