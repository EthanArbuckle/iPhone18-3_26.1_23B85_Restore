uint64_t sub_1E10477F0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for EventAttributes.Tickets.TicketLink(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  v55 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v13, v14);
  v54 = &v45 - v16;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_62;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_63;
  }

  v20 = (a2 - a1) / v18;
  v58 = a1;
  v57 = a4;
  if (v20 >= v19 / v18)
  {
    v22 = v19 / v18 * v18;
    if (a4 < a2 || a2 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v30 = a4 + v22;
    if (v22 >= 1)
    {
      v31 = -v18;
      v32 = v30;
      v49 = a4;
      v50 = a1;
      v53 = v8;
      v48 = -v18;
      do
      {
        v46 = v30;
        v33 = a2;
        v34 = a2 + v31;
        v51 = a2;
        v52 = a2 + v31;
        while (1)
        {
          if (v33 <= a1)
          {
            v58 = v33;
            v56 = v46;
            goto LABEL_60;
          }

          v36 = a3;
          v47 = v30;
          a3 += v31;
          v37 = v32 + v31;
          v38 = v54;
          sub_1E10483DC(v32 + v31, v54, type metadata accessor for EventAttributes.Tickets.TicketLink);
          v39 = v55;
          sub_1E10483DC(v34, v55, type metadata accessor for EventAttributes.Tickets.TicketLink);
          v40 = *(v8 + 24);
          v41 = *(v38 + v40);
          v42 = *(v39 + v40);
          sub_1E10482EC(v39, type metadata accessor for EventAttributes.Tickets.TicketLink);
          sub_1E10482EC(v38, type metadata accessor for EventAttributes.Tickets.TicketLink);
          if (v41 < v42)
          {
            break;
          }

          v30 = v37;
          if (v36 < v32 || a3 >= v32)
          {
            v35 = v53;
            swift_arrayInitWithTakeFrontToBack();
            v34 = v52;
            v8 = v35;
            v31 = v48;
          }

          else
          {
            v34 = v52;
            v8 = v53;
            v31 = v48;
            if (v36 != v32)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v32 = v37;
          a1 = v50;
          v33 = v51;
          if (v37 <= v49)
          {
            a2 = v51;
            goto LABEL_59;
          }
        }

        v43 = v49;
        if (v36 < v51 || a3 >= v51)
        {
          a2 = v52;
          v8 = v53;
          swift_arrayInitWithTakeFrontToBack();
          v30 = v47;
          v31 = v48;
        }

        else
        {
          v44 = v36 == v51;
          a2 = v52;
          v8 = v53;
          v30 = v47;
          v31 = v48;
          if (!v44)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v50;
      }

      while (v32 > v43);
    }

LABEL_59:
    v58 = a2;
    v56 = v30;
  }

  else
  {
    v21 = v20 * v18;
    if (a4 < a1 || a1 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v52 = a4 + v21;
    v56 = a4 + v21;
    if (v21 >= 1 && a2 < a3)
    {
      v51 = a3;
      v53 = v8;
      do
      {
        v24 = v54;
        sub_1E10483DC(a2, v54, type metadata accessor for EventAttributes.Tickets.TicketLink);
        v25 = v55;
        sub_1E10483DC(a4, v55, type metadata accessor for EventAttributes.Tickets.TicketLink);
        v26 = *(v8 + 24);
        v27 = *(v24 + v26);
        v28 = *(v25 + v26);
        sub_1E10482EC(v25, type metadata accessor for EventAttributes.Tickets.TicketLink);
        sub_1E10482EC(v24, type metadata accessor for EventAttributes.Tickets.TicketLink);
        if (v27 >= v28)
        {
          if (a1 < a4 || a1 >= a4 + v18)
          {
            v8 = v53;
            swift_arrayInitWithTakeFrontToBack();
            v29 = v51;
          }

          else
          {
            v29 = v51;
            v8 = v53;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v57 = a4 + v18;
          a4 += v18;
        }

        else if (a1 < a2 || a1 >= a2 + v18)
        {
          v8 = v53;
          swift_arrayInitWithTakeFrontToBack();
          a2 += v18;
          v29 = v51;
        }

        else
        {
          v29 = v51;
          v8 = v53;
          if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v18;
        }

        a1 += v18;
        v58 = a1;
      }

      while (a4 < v52 && a2 < v29);
    }
  }

LABEL_60:
  sub_1E1047DBC(&v58, &v57, &v56);
  return 1;
}

uint64_t sub_1E1047D1C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1E1047DA8(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1E1047DBC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for EventAttributes.Tickets.TicketLink(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1E1047EA0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A090, &qword_1E10B6A90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_1E1047FA4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1E10AE9CC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v7 = sub_1E10AEA0C();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1E10AE8FC() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1E10263D8();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_1E10480E0(v9);
  *v2 = v20;
  return v13;
}

unint64_t sub_1E10480E0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1E10AE58C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_1E10AE9CC();

        _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
        v15 = sub_1E10AEA0C();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1E10482A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = v3[5];
  v8[4] = v3[4];
  v8[5] = v4;
  v8[6] = v3[6];
  v5 = v3[1];
  v8[0] = *v3;
  v8[1] = v5;
  v6 = v3[3];
  v8[2] = v3[2];
  v8[3] = v6;
  return sub_1E1046774(a1, v8, a2);
}

uint64_t sub_1E10482EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E1048374(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E10483DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E10484A4()
{
  result = qword_1ECE8A088;
  if (!qword_1ECE8A088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A088);
  }

  return result;
}

unint64_t sub_1E1048554()
{
  result = qword_1ECE8A100;
  if (!qword_1ECE8A100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A100);
  }

  return result;
}

uint64_t sub_1E104863C()
{
  result = sub_1E10ADBBC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E10486C0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 104))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1E104871C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1E10487CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
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

uint64_t sub_1E1048828(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1E10488C4()
{
  result = sub_1E10ADBBC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_12Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E10ADBBC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_13Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E10ADBBC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_1E1048AE4()
{
  sub_1E10ADBBC();
  if (v0 <= 0x3F)
  {
    sub_1E1048D80(319, &qword_1ECE8A170, type metadata accessor for EventAttributes.Tickets.TicketLink, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E1048BC8()
{
  sub_1E0FEF59C(319, &qword_1EE17E4E0);
  if (v0 <= 0x3F)
  {
    sub_1E1048D80(319, &qword_1EE17FF78, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for EventAttributes.Time(319);
      if (v2 <= 0x3F)
      {
        sub_1E1048D80(319, &qword_1ECE8A188, type metadata accessor for EventAttributes.Tickets, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1E1048D80(319, &qword_1ECE8A190, type metadata accessor for EventAttributes.Provider, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1E0FEF59C(319, &qword_1ECE8A198);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1E1048D80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1E1048DE4(uint64_t a1)
{
  *(a1 + 8) = sub_1E103F9DC(&qword_1ECE8A1A0, type metadata accessor for EventAttributes);
  result = sub_1E103F9DC(&qword_1ECE8A1A8, type metadata accessor for EventAttributes);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E1048E6C()
{
  result = qword_1ECE8A1B0;
  if (!qword_1ECE8A1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A1B0);
  }

  return result;
}

unint64_t sub_1E1048F08(uint64_t a1)
{
  *(a1 + 8) = sub_1E1048F38();
  result = sub_1E1048F8C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E1048F38()
{
  result = qword_1ECE8A1C0;
  if (!qword_1ECE8A1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A1C0);
  }

  return result;
}

unint64_t sub_1E1048F8C()
{
  result = qword_1ECE8A1C8;
  if (!qword_1ECE8A1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A1C8);
  }

  return result;
}

unint64_t sub_1E1048FE4()
{
  result = qword_1ECE8A1D0;
  if (!qword_1ECE8A1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A1D0);
  }

  return result;
}

unint64_t sub_1E104903C()
{
  result = qword_1ECE8A1D8;
  if (!qword_1ECE8A1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A1D8);
  }

  return result;
}

unint64_t sub_1E1049094()
{
  result = qword_1ECE8A1E0;
  if (!qword_1ECE8A1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A1E0);
  }

  return result;
}

uint64_t sub_1E10490E8()
{
  v0 = sub_1E10AE74C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1E1049134()
{
  result = qword_1ECE8A1F0;
  if (!qword_1ECE8A1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A1F0);
  }

  return result;
}

uint64_t sub_1E1049188(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F646E6576 && a2 == 0xE600000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726564726FLL && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E10AE8FC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1E1049298(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72656469766F7270 && a2 == 0xE800000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736B6E696CLL && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E10AE8FC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1E10493AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A218, &qword_1E10B5438);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v16 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E104A468();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_1E1028C24();
  sub_1E10AE7AC();
  (*(v6 + 8))(v11, v5);
  v18 = v23;
  v19 = v24;
  v20 = v25;
  v16 = v21;
  v17 = v22;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v14 = v19;
  *(a2 + 32) = v18;
  *(a2 + 48) = v14;
  *(a2 + 64) = v20;
  v15 = v17;
  *a2 = v16;
  *(a2 + 16) = v15;
  return result;
}

uint64_t sub_1E1049570(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v3 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646E694B627573 && a2 == 0xE700000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6465766F6D6572 && a2 == 0xE700000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C7255626577 && a2 == 0xE600000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1701669236 && a2 == 0xE400000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7374656B636974 && a2 == 0xE700000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x72656469766F7270 && a2 == 0xE800000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x72616365726F6373 && a2 == 0xE900000000000064)
  {

    return 9;
  }

  else
  {
    v6 = sub_1E10AE8FC();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_1E104989C()
{
  v0 = sub_1E10AE74C();

  if (v0 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E10498E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A200, &qword_1E10B5428);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v23 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E104A3DC();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89CF8, &qword_1E10B4870);
  LOBYTE(v35) = 0;
  sub_1E103339C();
  sub_1E10AE7AC();
  v34 = v42[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89D10, &qword_1E10B4878);
  LOBYTE(v35) = 1;
  sub_1E1033454();
  sub_1E10AE7AC();
  v33 = v42[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89D28, &qword_1E10B4880);
  LOBYTE(v35) = 2;
  sub_1E103350C();
  sub_1E10AE7AC();
  v32 = v42[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89D40, &qword_1E10B4888);
  LOBYTE(v35) = 3;
  sub_1E10335C4();
  sub_1E10AE7AC();
  v31 = v42[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89D60, &qword_1E10B4898);
  LOBYTE(v35) = 4;
  sub_1E103367C();
  sub_1E10AE7AC();
  v30 = v42[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89D80, &qword_1E10B48A0);
  LOBYTE(v35) = 5;
  sub_1E1033734();
  sub_1E10AE7AC();
  v29 = v42[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89DA0, &qword_1E10B48B0);
  LOBYTE(v35) = 6;
  sub_1E10337EC();
  sub_1E10AE7AC();
  v28 = v42[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89DC0, &qword_1E10B48B8);
  LOBYTE(v35) = 7;
  sub_1E10338A4();
  sub_1E10AE7AC();
  v27 = v42[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89DE0, &qword_1E10B48C8);
  LOBYTE(v35) = 8;
  sub_1E103395C();
  sub_1E10AE7AC();
  v13 = v42[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89E00, &qword_1E10B48D0);
  LOBYTE(v35) = 9;
  sub_1E1033A14();
  sub_1E10AE7AC();
  v26 = v42[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89E20, &qword_1E10B48D8);
  LOBYTE(v35) = 10;
  sub_1E1033ACC();
  sub_1E10AE7AC();
  v25 = v42[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89E40, &qword_1E10B48E0);
  LOBYTE(v35) = 11;
  sub_1E1033B84();
  sub_1E10AE7AC();
  v24 = v42[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89E58, &qword_1E10B48E8);
  v43 = 12;
  sub_1E1033C3C();
  sub_1E10AE7AC();
  (*(v6 + 8))(v11, v5);
  v23 = v44;
  *&v35 = v34;
  v14 = v33;
  *(&v35 + 1) = v33;
  v15 = v32;
  *&v36 = v32;
  v16 = v31;
  *(&v36 + 1) = v31;
  v17 = v30;
  *&v37 = v30;
  v18 = v29;
  *(&v37 + 1) = v29;
  *&v38 = v28;
  *(&v38 + 1) = v27;
  *&v39 = v13;
  *(&v39 + 1) = v26;
  *&v40 = v25;
  *(&v40 + 1) = v24;
  v41 = v44;
  sub_1E104A430(&v35, v42);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v42[0] = v34;
  v42[1] = v14;
  v42[2] = v15;
  v42[3] = v16;
  v42[4] = v17;
  v42[5] = v18;
  v42[6] = v28;
  v42[7] = v27;
  v42[8] = v13;
  v42[9] = v26;
  v42[10] = v25;
  v42[11] = v24;
  v42[12] = v23;
  result = sub_1E1032020(v42);
  v20 = v40;
  *(a2 + 64) = v39;
  *(a2 + 80) = v20;
  *(a2 + 96) = v41;
  v21 = v36;
  *a2 = v35;
  *(a2 + 16) = v21;
  v22 = v38;
  *(a2 + 32) = v37;
  *(a2 + 48) = v22;
  return result;
}

unint64_t sub_1E104A3DC()
{
  result = qword_1ECE8A208;
  if (!qword_1ECE8A208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A208);
  }

  return result;
}

unint64_t sub_1E104A468()
{
  result = qword_1ECE8A220;
  if (!qword_1ECE8A220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A220);
  }

  return result;
}

unint64_t sub_1E104A4F4()
{
  result = qword_1ECE8A238;
  if (!qword_1ECE8A238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A238);
  }

  return result;
}

unint64_t sub_1E104A548()
{
  result = qword_1ECE8A250;
  if (!qword_1ECE8A250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A250);
  }

  return result;
}

uint64_t sub_1E104A59C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8A258, &qword_1E10B5460);
    sub_1E103F9DC(a2, type metadata accessor for EventAttributes.Tickets.TicketLink);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E104A638()
{
  result = qword_1ECE8A290;
  if (!qword_1ECE8A290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A290);
  }

  return result;
}

unint64_t sub_1E104A68C()
{
  result = qword_1ECE8A2B0;
  if (!qword_1ECE8A2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A2B0);
  }

  return result;
}

unint64_t sub_1E104A6E0()
{
  result = qword_1ECE8A2D8;
  if (!qword_1ECE8A2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A2D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EventAttributes.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EventAttributes.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E104A8D8()
{
  result = qword_1ECE8A2E0;
  if (!qword_1ECE8A2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A2E0);
  }

  return result;
}

unint64_t sub_1E104A930()
{
  result = qword_1ECE8A2E8;
  if (!qword_1ECE8A2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A2E8);
  }

  return result;
}

unint64_t sub_1E104A988()
{
  result = qword_1ECE8A2F0;
  if (!qword_1ECE8A2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A2F0);
  }

  return result;
}

unint64_t sub_1E104A9E0()
{
  result = qword_1ECE8A2F8;
  if (!qword_1ECE8A2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A2F8);
  }

  return result;
}

unint64_t sub_1E104AA38()
{
  result = qword_1ECE8A300;
  if (!qword_1ECE8A300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A300);
  }

  return result;
}

unint64_t sub_1E104AA90()
{
  result = qword_1ECE8A308;
  if (!qword_1ECE8A308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A308);
  }

  return result;
}

unint64_t sub_1E104AAE8()
{
  result = qword_1ECE8A310;
  if (!qword_1ECE8A310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A310);
  }

  return result;
}

unint64_t sub_1E104AB40()
{
  result = qword_1ECE8A318;
  if (!qword_1ECE8A318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A318);
  }

  return result;
}

unint64_t sub_1E104AB98()
{
  result = qword_1ECE8A320;
  if (!qword_1ECE8A320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A320);
  }

  return result;
}

unint64_t sub_1E104ABF0()
{
  result = qword_1ECE8A328;
  if (!qword_1ECE8A328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A328);
  }

  return result;
}

unint64_t sub_1E104AC48()
{
  result = qword_1ECE8A330;
  if (!qword_1ECE8A330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A330);
  }

  return result;
}

unint64_t sub_1E104ACA0()
{
  result = qword_1ECE8A338;
  if (!qword_1ECE8A338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A338);
  }

  return result;
}

unint64_t sub_1E104ACF8()
{
  result = qword_1ECE8A340;
  if (!qword_1ECE8A340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A340);
  }

  return result;
}

unint64_t sub_1E104AD50()
{
  result = qword_1ECE8A348;
  if (!qword_1ECE8A348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A348);
  }

  return result;
}

unint64_t sub_1E104ADA8()
{
  result = qword_1ECE8A350;
  if (!qword_1ECE8A350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A350);
  }

  return result;
}

unint64_t sub_1E104AE00()
{
  result = qword_1ECE8A358;
  if (!qword_1ECE8A358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A358);
  }

  return result;
}

unint64_t sub_1E104AE58()
{
  result = qword_1ECE8A360;
  if (!qword_1ECE8A360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A360);
  }

  return result;
}

unint64_t sub_1E104AEB0()
{
  result = qword_1ECE8A368;
  if (!qword_1ECE8A368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A368);
  }

  return result;
}

uint64_t type metadata accessor for ResponseData()
{
  result = qword_1ECE8A370;
  if (!qword_1ECE8A370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E104AFA8()
{
  result = sub_1E10ADBBC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1E104B034(uint64_t a1)
{
  sub_1E104BB70(319, &qword_1EE17FF78, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    sub_1E10AE4EC();
    if (v4 <= 0x3F)
    {
      sub_1E104B668();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1E104B114(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_1E10ADBBC() - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  v9 = *(*(a3 + 16) - 8);
  if (v8)
  {
    v10 = v8 - 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v9 + 84);
  v12 = v11 - 1;
  if (!v11)
  {
    v12 = 0;
  }

  if (v10 <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v10;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v6 + 80);
  v16 = *(v6 + 64);
  if (v8)
  {
    v17 = v16;
  }

  else
  {
    v17 = v16 + 1;
  }

  v18 = *(v9 + 80);
  v19 = *(v9 + 64);
  if (v11)
  {
    v20 = 7;
  }

  else
  {
    v20 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v21 = v17 + 7;
  v22 = v18 + 16;
  if (v14 < a2)
  {
    v23 = ((v20 + v19 + ((v22 + ((v21 + ((v15 + 16) & ~v15)) & 0xFFFFFFFFFFFFFFF8)) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 8;
    v24 = v23 & 0xFFFFFFF8;
    if ((v23 & 0xFFFFFFF8) != 0)
    {
      v25 = 2;
    }

    else
    {
      v25 = a2 - v14 + 1;
    }

    if (v25 >= 0x10000)
    {
      v26 = 4;
    }

    else
    {
      v26 = 2;
    }

    if (v25 < 0x100)
    {
      v26 = 1;
    }

    if (v25 >= 2)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    if (v27 > 1)
    {
      if (v27 == 2)
      {
        v28 = *(a1 + v23);
        if (v28)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v28 = *(a1 + v23);
        if (v28)
        {
          goto LABEL_34;
        }
      }
    }

    else if (v27)
    {
      v28 = *(a1 + v23);
      if (v28)
      {
LABEL_34:
        v29 = v28 - 1;
        if (v24)
        {
          v29 = 0;
          LODWORD(v24) = *a1;
        }

        return v14 + (v24 | v29) + 1;
      }
    }
  }

  if ((v13 & 0x80000000) != 0)
  {
    if (v10 == v14)
    {
      if (v8 >= 2)
      {
        v32 = (*(v7 + 48))((a1 + v15 + 16) & ~v15);
        goto LABEL_51;
      }
    }

    else if (v11 >= 2)
    {
      v32 = (*(*(*(a3 + 16) - 8) + 48))((v22 + ((v21 + ((a1 + v15 + 16) & ~v15)) & 0xFFFFFFFFFFFFFFF8)) & ~v18, v11);
LABEL_51:
      if (v32 >= 2)
      {
        return v32 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v31 = *(a1 + 8);
  if (v31 >= 0xFFFFFFFF)
  {
    LODWORD(v31) = -1;
  }

  return (v31 + 1);
}

void sub_1E104B378(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = 0;
  v9 = *(sub_1E10ADBBC() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  v12 = *(*(a4 + 16) - 8);
  if (v11)
  {
    v13 = v11 - 1;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(*(a4 + 16) - 8);
  v15 = *(v12 + 84);
  v16 = *(v9 + 64);
  v17 = *(v9 + 80);
  v18 = *(v12 + 80);
  v19 = *(v12 + 64);
  v20 = v15 - 1;
  if (!v15)
  {
    v20 = 0;
  }

  if (v13 <= v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = v13;
  }

  if (v21 <= 0x7FFFFFFF)
  {
    v22 = 0x7FFFFFFF;
  }

  else
  {
    v22 = v21;
  }

  if (v11)
  {
    v23 = v16;
  }

  else
  {
    v23 = v16 + 1;
  }

  v24 = v23 + 7;
  if (v15)
  {
    v25 = v19;
  }

  else
  {
    v25 = v19 + 1;
  }

  v26 = ((v25 + ((v18 + 16 + ((v24 + ((v17 + 16) & ~v17)) & 0xFFFFFFFFFFFFFFF8)) & ~v18) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v22 < a3)
  {
    if (((v25 + ((v18 + 16 + ((v24 + ((v17 + 16) & ~v17)) & 0xFFFFFFF8)) & ~v18) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v27 = a3 - v22 + 1;
    }

    else
    {
      v27 = 2;
    }

    if (v27 >= 0x10000)
    {
      v28 = 4;
    }

    else
    {
      v28 = 2;
    }

    if (v27 < 0x100)
    {
      v28 = 1;
    }

    if (v27 >= 2)
    {
      v8 = v28;
    }

    else
    {
      v8 = 0;
    }
  }

  if (a2 > v22)
  {
    if (v26)
    {
      v29 = 1;
    }

    else
    {
      v29 = a2 - v22;
    }

    if (v26)
    {
      v30 = ~v22 + a2;
      bzero(a1, v26);
      *a1 = v30;
    }

    if (v8 > 1)
    {
      if (v8 == 2)
      {
        *(a1 + v26) = v29;
      }

      else
      {
        *(a1 + v26) = v29;
      }
    }

    else if (v8)
    {
      *(a1 + v26) = v29;
    }

    return;
  }

  if (v8 > 1)
  {
    if (v8 != 2)
    {
      *(a1 + v26) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_48;
    }

    *(a1 + v26) = 0;
LABEL_47:
    if (!a2)
    {
      return;
    }

    goto LABEL_48;
  }

  if (!v8)
  {
    goto LABEL_47;
  }

  *(a1 + v26) = 0;
  if (!a2)
  {
    return;
  }

LABEL_48:
  if ((v21 & 0x80000000) != 0)
  {
    v31 = (a1 + v17 + 16) & ~v17;
    if (v13 == v22)
    {
      if (v11 >= 2)
      {
        v32 = *(v10 + 56);

        v32(v31, a2 + 1);
      }
    }

    else if (v15 >= 2)
    {
      v33 = *(v14 + 56);

      v33((v18 + 16 + ((v24 + v31) & 0xFFFFFFFFFFFFFFF8)) & ~v18, a2 + 1, v15);
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    a1[1] = 0;
  }

  else
  {
    a1[1] = a2 - 1;
  }
}

void sub_1E104B668()
{
  if (!qword_1ECE8A400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECE8A408, qword_1E10B5BA8);
    v0 = sub_1E10AE4EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE8A400);
    }
  }
}

void sub_1E104B6CC(uint64_t a1)
{
  sub_1E104BB70(319, &qword_1ECE8A490, type metadata accessor for ResponseData, MEMORY[0x1E69E62F8]);
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1E104B784(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1E104B908(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

void sub_1E104BB70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1E104BBD4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1717924456 && a2 == 0xE400000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F6974616C6572 && a2 == 0xED00007370696873)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E10AE8FC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1E104BD8C(unsigned __int8 a1)
{
  v1 = 25705;
  v2 = 1701869940;
  v3 = 0x7475626972747461;
  if (a1 != 3)
  {
    v3 = 0x6E6F6974616C6572;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 1717924456;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E104BE1C(void *a1, uint64_t a2)
{
  v29 = a2;
  v3 = v2;
  v5 = *(a2 + 24);
  v27[1] = *(a2 + 16);
  v28 = v5;
  type metadata accessor for Resource.CodingKeys();
  swift_getWitnessTable();
  v6 = sub_1E10AE8BC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v27 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E10AEA5C();
  v14 = *v3;
  v15 = v3[1];
  v36 = 0;
  v16 = v30;
  sub_1E10AE86C();
  if (v16)
  {
    return (*(v7 + 8))(v12, v6);
  }

  v18 = v7;
  v20 = v28;
  v19 = v29;
  v21 = v29[9];
  v35 = 1;
  sub_1E10ADBBC();
  sub_1E104E840(&qword_1ECE88CC0, MEMORY[0x1E6968FB0]);
  sub_1E10AE85C();
  v22 = (v3 + v19[10]);
  v23 = *v22;
  v24 = v22[1];
  v34 = 2;
  sub_1E10AE86C();
  v25 = v19[11];
  v33 = 3;
  v26 = *(v20 + 16);
  sub_1E10AE85C();
  v31 = *(v3 + v19[12]);
  v32 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECE8A408, qword_1E10B5BA8);
  sub_1E104E6CC(&qword_1ECE8A538, sub_1E104E750);
  sub_1E10AE85C();
  return (*(v18 + 8))(v12, 0);
}

uint64_t sub_1E104C13C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v50 = a4;
  v54 = sub_1E10AE4EC();
  v56 = *(v54 - 8);
  v7 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v52 = v48 - v10;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C78, &qword_1E10B5E50) - 8) + 64);
  MEMORY[0x1EEE9AC00](v12, v13);
  v55 = v48 - v14;
  type metadata accessor for Resource.CodingKeys();
  WitnessTable = swift_getWitnessTable();
  v15 = sub_1E10AE81C();
  v16 = *(v15 - 8);
  v57 = v15;
  v58 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = v48 - v20;
  v53 = a2;
  v51 = a3;
  v22 = type metadata accessor for Resource();
  v49 = *(v22 - 8);
  v23 = *(v49 + 64);
  v26 = MEMORY[0x1EEE9AC00](v24, v25);
  v28 = (v48 - v27);
  v29 = *(v26 + 36);
  v30 = sub_1E10ADBBC();
  (*(*(v30 - 8) + 56))(v28 + v29, 1, 1, v30);
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v59 = v21;
  v32 = v61;
  sub_1E10AEA3C();
  if (v32)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1E104E5A0(v28 + v29);
  }

  else
  {
    WitnessTable = v22;
    v61 = v29;
    v33 = v55;
    v34 = v56;
    v67 = 0;
    v35 = v57;
    v36 = v28;
    *v28 = sub_1E10AE7BC();
    v28[1] = v37;
    v48[1] = v37;
    v66 = 1;
    sub_1E104E840(&qword_1ECE88D38, MEMORY[0x1E6968FB0]);
    sub_1E10AE7AC();
    sub_1E104E608(v33, v28 + v61);
    v65 = 2;
    v38 = sub_1E10AE7BC();
    v39 = v34;
    v40 = WitnessTable;
    v41 = (v36 + *(WitnessTable + 40));
    *v41 = v38;
    v41[1] = v42;
    v64 = 3;
    v43 = v52;
    v44 = *(v51 + 8);
    sub_1E10AE7AC();
    (*(v39 + 32))(v36 + *(v40 + 44), v43, v54);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECE8A408, qword_1E10B5BA8);
    v63 = 4;
    sub_1E104E6CC(&qword_1ECE8A528, sub_1E104E678);
    sub_1E10AE7AC();
    v45 = *(v40 + 48);
    (*(v58 + 8))(v59, v35);
    *(v36 + v45) = v62;
    v46 = v49;
    (*(v49 + 16))(v50, v36, v40);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return (*(v46 + 8))(v36, v40);
  }
}

uint64_t sub_1E104C77C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1E104BD8C(*v1);
}

uint64_t sub_1E104C788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1E104BBD4(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1E104C7B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E104C80C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E104C898(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v3 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656372756F736572 && a2 == 0xE900000000000073)
  {

    return 1;
  }

  else
  {
    v6 = sub_1E10AE8FC();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1E104C96C(char a1)
{
  if (a1)
  {
    return 0x656372756F736572;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_1E104C9A0(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v19 = *(a2 + 24);
  v20 = v4;
  type metadata accessor for MapJSON.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_1E10AE8BC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v18 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = v21;
  sub_1E10AEA5C();
  v25 = *v13;
  v24 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A4A0, &qword_1E10B5E10);
  sub_1E104E7A4(&qword_1ECE8A548, qword_1ECE8A550);
  v14 = v22;
  sub_1E10AE8AC();
  if (!v14)
  {
    v15 = *(a2 + 36);
    v23 = 1;
    v16 = *(v19 + 16);
    sub_1E10AE8AC();
  }

  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_1E104CBA4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, __n128 a5@<Q0>, __n128 a6@<Q1>)
{
  v35 = a4;
  v34 = *(a2 - 8);
  v9 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](a5, a6);
  v37 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MapJSON.CodingKeys();
  swift_getWitnessTable();
  v40 = sub_1E10AE81C();
  v36 = *(v40 - 8);
  v11 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v33 - v14;
  v38 = a3;
  v16 = type metadata accessor for MapJSON();
  v33 = *(v16 - 8);
  v17 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v33 - v20;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v39 = v15;
  v23 = v41;
  sub_1E10AEA3C();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = v21;
  v41 = v16;
  v25 = a1;
  v26 = v38;
  v28 = v36;
  v27 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A4A0, &qword_1E10B5E10);
  v43 = 0;
  sub_1E104E7A4(&qword_1ECE8A4A8, &qword_1ECE8A4B0);
  sub_1E10AE7FC();
  *v24 = v44;
  v42 = 1;
  v29 = *(v26 + 8);
  sub_1E10AE7FC();
  (*(v28 + 8))(v39, v40);
  v30 = v41;
  (*(v34 + 32))(&v24[*(v41 + 36)], v27, a2);
  v31 = v33;
  (*(v33 + 16))(v35, v24, v30);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return (*(v31 + 8))(v24, v30);
}

uint64_t sub_1E104CF74(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A520, &qword_1E10B5E48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v21[-v10];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E104E474();
  sub_1E10AEA5C();
  v13 = *v3;
  v14 = v3[1];
  v21[15] = 0;
  sub_1E10AE86C();
  if (!v2)
  {
    v15 = type metadata accessor for ResponseData();
    v16 = *(v15 + 20);
    v21[14] = 1;
    sub_1E10ADBBC();
    sub_1E104E840(&qword_1ECE88CC0, MEMORY[0x1E6968FB0]);
    sub_1E10AE8AC();
    v17 = (v3 + *(v15 + 24));
    v18 = *v17;
    v19 = v17[1];
    v21[13] = 2;
    sub_1E10AE86C();
  }

  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_1E104D160@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v39 = sub_1E10ADBBC();
  v37 = *(v39 - 8);
  v4 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A510, &qword_1E10B5E40);
  v38 = *(v40 - 8);
  v9 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v33 - v12;
  v14 = type metadata accessor for ResponseData();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = (v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E104E474();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v34 = v14;
  v35 = a1;
  v22 = v38;
  v21 = v39;
  v43 = 0;
  v23 = v19;
  *v19 = sub_1E10AE7BC();
  v19[1] = v24;
  v33[2] = v24;
  v42 = 1;
  sub_1E104E840(&qword_1ECE88D38, MEMORY[0x1E6968FB0]);
  sub_1E10AE7FC();
  v25 = v34;
  (*(v37 + 32))(v23 + *(v34 + 20), v8, v21);
  v41 = 2;
  v33[1] = 0;
  v26 = sub_1E10AE7BC();
  v33[0] = v27;
  v28 = v35;
  v29 = v26;
  (*(v22 + 8))(v13, v40);
  v30 = (v23 + *(v25 + 24));
  v31 = v33[0];
  *v30 = v29;
  v30[1] = v31;
  sub_1E104E4C8(v23, v36);
  __swift_destroy_boxed_opaque_existential_1(v28);
  return sub_1E104E52C(v23);
}

uint64_t sub_1E104D528(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1E104C96C(*v1);
}

uint64_t sub_1E104D538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1E104C898(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1E104D568(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E104D5BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

unint64_t sub_1E104D64C()
{
  result = qword_1ECE8A498;
  if (!qword_1ECE8A498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A498);
  }

  return result;
}

uint64_t sub_1E104D6A0()
{
  v1 = 1717924456;
  if (*v0 != 1)
  {
    v1 = 1701869940;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1E104D6E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E104DE04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E104D708(uint64_t a1)
{
  v2 = sub_1E104E474();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E104D744(uint64_t a1)
{
  v2 = sub_1E104E474();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E104D7B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[0] = a4;
  v16[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A508, &qword_1E10B5E38);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v16 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E104E420();
  sub_1E10AEA5C();
  v18 = 0;
  sub_1E10AE86C();
  if (!v5)
  {
    v17 = 1;
    sub_1E10AE86C();
  }

  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_1E104D944(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A4E0, &qword_1E10B5E28);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E104E2AC();
  sub_1E10AEA5C();
  v13[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A4C8, &qword_1E10B5E20);
  sub_1E104E300(&qword_1ECE8A4E8, sub_1E104E3CC);
  sub_1E10AE8AC();
  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_1E104DAD0()
{
  if (*v0)
  {
    result = 1701869940;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_1E104DAF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1E10AE8FC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E10AE8FC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E104DBCC(uint64_t a1)
{
  v2 = sub_1E104E420();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E104DC08(uint64_t a1)
{
  v2 = sub_1E104E420();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E104DC44@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1E104DF14(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1E104DCA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E10AE8FC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E104DD2C(uint64_t a1)
{
  v2 = sub_1E104E2AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E104DD68(uint64_t a1)
{
  v2 = sub_1E104E2AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1E104DDA4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1E104E0F8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1E104DE04(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1717924456 && a2 == 0xE400000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E10AE8FC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1E104DF14(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A4F8, &qword_1E10B5E30);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E104E420();
  sub_1E10AEA3C();
  if (!v1)
  {
    v14 = 0;
    v10 = sub_1E10AE7BC();
    v13 = 1;
    sub_1E10AE7BC();
    (*(v4 + 8))(v9, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

void *sub_1E104E0F8(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A4B8, &qword_1E10B5E18);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v13 - v8;
  v10 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E104E2AC();
  sub_1E10AEA3C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A4C8, &qword_1E10B5E20);
    sub_1E104E300(&qword_1ECE8A4D0, sub_1E104E378);
    sub_1E10AE7FC();
    (*(v4 + 8))(v9, v3);
    v11 = v13[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v11;
}

unint64_t sub_1E104E2AC()
{
  result = qword_1ECE8A4C0;
  if (!qword_1ECE8A4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A4C0);
  }

  return result;
}

uint64_t sub_1E104E300(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8A4C8, &qword_1E10B5E20);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E104E378()
{
  result = qword_1ECE8A4D8;
  if (!qword_1ECE8A4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A4D8);
  }

  return result;
}

unint64_t sub_1E104E3CC()
{
  result = qword_1ECE8A4F0;
  if (!qword_1ECE8A4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A4F0);
  }

  return result;
}

unint64_t sub_1E104E420()
{
  result = qword_1ECE8A500;
  if (!qword_1ECE8A500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A500);
  }

  return result;
}

unint64_t sub_1E104E474()
{
  result = qword_1ECE8A518;
  if (!qword_1ECE8A518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A518);
  }

  return result;
}

uint64_t sub_1E104E4C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResponseData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E104E52C(uint64_t a1)
{
  v2 = type metadata accessor for ResponseData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E104E5A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C78, &qword_1E10B5E50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E104E608(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C78, &qword_1E10B5E50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E104E678()
{
  result = qword_1ECE8A530;
  if (!qword_1ECE8A530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A530);
  }

  return result;
}

uint64_t sub_1E104E6CC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECE8A408, qword_1E10B5BA8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E104E750()
{
  result = qword_1ECE8A540;
  if (!qword_1ECE8A540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A540);
  }

  return result;
}

uint64_t sub_1E104E7A4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8A4A0, &qword_1E10B5E10);
    sub_1E104E840(a2, type metadata accessor for ResponseData);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E104E840(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E104E8D8()
{
  result = qword_1ECE8A658;
  if (!qword_1ECE8A658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A658);
  }

  return result;
}

unint64_t sub_1E104E930()
{
  result = qword_1ECE8A660;
  if (!qword_1ECE8A660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A660);
  }

  return result;
}

unint64_t sub_1E104E988()
{
  result = qword_1ECE8A668;
  if (!qword_1ECE8A668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A668);
  }

  return result;
}

unint64_t sub_1E104EA34()
{
  result = qword_1ECE8A670;
  if (!qword_1ECE8A670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A670);
  }

  return result;
}

unint64_t sub_1E104EA8C()
{
  result = qword_1ECE8A678;
  if (!qword_1ECE8A678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A678);
  }

  return result;
}

unint64_t sub_1E104EAE4()
{
  result = qword_1ECE8A680;
  if (!qword_1ECE8A680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A680);
  }

  return result;
}

unint64_t sub_1E104EB3C()
{
  result = qword_1ECE8A688;
  if (!qword_1ECE8A688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A688);
  }

  return result;
}

unint64_t sub_1E104EB94()
{
  result = qword_1ECE8A690;
  if (!qword_1ECE8A690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A690);
  }

  return result;
}

unint64_t sub_1E104EBEC()
{
  result = qword_1ECE8A698;
  if (!qword_1ECE8A698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A698);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1E104EC8C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E104ECD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t Nightlife.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Nightlife.category.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];

  return v1;
}

uint64_t Nightlife.name.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t type metadata accessor for Nightlife()
{
  result = qword_1EE17E588;
  if (!qword_1EE17E588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Nightlife.venue.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Nightlife() + 32));
  v4 = v3[7];
  v5 = v3[5];
  v25 = v3[6];
  v26 = v4;
  v6 = v3[7];
  v7 = v3[9];
  v27 = v3[8];
  v8 = v27;
  v28 = v7;
  v9 = v3[3];
  v11 = v3[1];
  v21 = v3[2];
  v10 = v21;
  v22 = v9;
  v12 = v3[3];
  v13 = v3[5];
  v23 = v3[4];
  v14 = v23;
  v24 = v13;
  v15 = v3[1];
  v20[0] = *v3;
  v16 = v20[0];
  v20[1] = v15;
  a1[6] = v25;
  a1[7] = v6;
  v17 = v3[9];
  a1[8] = v8;
  a1[9] = v17;
  a1[2] = v10;
  a1[3] = v12;
  a1[4] = v14;
  a1[5] = v5;
  *a1 = v16;
  a1[1] = v11;
  return sub_1E0FE6720(v20, &v19);
}

uint64_t Nightlife.tickets.getter()
{
  v1 = *(v0 + *(type metadata accessor for Nightlife() + 44));
}

uint64_t sub_1E104EFC8(uint64_t a1)
{
  v2 = sub_1E1050E8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E104F004(uint64_t a1)
{
  v2 = sub_1E1050E8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Nightlife.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A6A0, &qword_1E10B6428);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v33[-v10];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1050E8C();
  sub_1E10AEA5C();
  v13 = *(v3 + 8);
  *&v47 = *v3;
  *(&v47 + 1) = v13;
  LOBYTE(v37) = 0;
  sub_1E0FED9C8();
  sub_1E10AE8AC();
  if (!v2)
  {
    v14 = *(v3 + 24);
    *&v47 = *(v3 + 16);
    *(&v47 + 1) = v14;
    v48 = *(v3 + 32);
    LOBYTE(v37) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A6B0, &qword_1E10B6430);
    sub_1E1050EE0(&qword_1ECE8A6B8);
    sub_1E10AE8AC();
    v15 = *(v3 + 48);
    v16 = *(v3 + 56);
    LOBYTE(v47) = 2;
    sub_1E10AE86C();
    v17 = type metadata accessor for Nightlife();
    v18 = v17[7];
    v57 = 3;
    type metadata accessor for Time();
    sub_1E1051250(&qword_1ECE88CB0, type metadata accessor for Time);
    sub_1E10AE8AC();
    v19 = (v3 + v17[8]);
    v20 = v19[7];
    v21 = v19[5];
    v53 = v19[6];
    v54 = v20;
    v22 = v19[7];
    v23 = v19[9];
    v55 = v19[8];
    v56 = v23;
    v24 = v19[3];
    v25 = v19[1];
    v49 = v19[2];
    v50 = v24;
    v26 = v19[3];
    v27 = v19[5];
    v51 = v19[4];
    v52 = v27;
    v28 = v19[1];
    v47 = *v19;
    v48 = v28;
    v43 = v53;
    v44 = v22;
    v29 = v19[9];
    v45 = v55;
    v46 = v29;
    v39 = v49;
    v40 = v26;
    v41 = v51;
    v42 = v21;
    v37 = v47;
    v38 = v25;
    v36 = 4;
    sub_1E0FE6720(&v47, v35);
    sub_1E0FEDA64();
    sub_1E10AE8AC();
    v35[6] = v43;
    v35[7] = v44;
    v35[8] = v45;
    v35[9] = v46;
    v35[2] = v39;
    v35[3] = v40;
    v35[4] = v41;
    v35[5] = v42;
    v35[0] = v37;
    v35[1] = v38;
    sub_1E0FEDAB8(v35);
    v30 = v17[9];
    LOBYTE(v34) = 5;
    type metadata accessor for EventAttribution();
    sub_1E1051250(&qword_1ECE88CB8, type metadata accessor for EventAttribution);
    sub_1E10AE85C();
    v31 = v17[10];
    LOBYTE(v34) = 6;
    type metadata accessor for TicketAttribution();
    sub_1E1051250(&qword_1ECE88CE8, type metadata accessor for TicketAttribution);
    sub_1E10AE85C();
    v34 = *(v3 + v17[11]);
    v33[7] = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88CF0, &qword_1E10AF9F8);
    sub_1E1050F30(&qword_1ECE88CF8, &qword_1ECE88D00);
    sub_1E10AE8AC();
  }

  return (*(v6 + 8))(v11, v5);
}

uint64_t Nightlife.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v52 = type metadata accessor for TicketAttribution();
  v51 = *(v52 - 8);
  v4 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v5, v6);
  v49 = (&v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C80, &qword_1E10AF9D0) - 8) + 64);
  MEMORY[0x1EEE9AC00](v9, v10);
  v50 = &v49 - v11;
  v12 = type metadata accessor for EventAttribution();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = (&v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C70, &qword_1E10AF9C8) - 8) + 64);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v49 - v22;
  v24 = *v1;
  v25 = v1[1];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v26 = v1[2];
  v27 = v1[3];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v28 = v1[6];
  v29 = v1[7];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v30 = type metadata accessor for Nightlife();
  v31 = v1 + v30[7];
  sub_1E10ADACC();
  sub_1E1051250(&qword_1EE17FF80, MEMORY[0x1E6968130]);
  sub_1E10ADFFC();
  v32 = *(type metadata accessor for Time() + 20);
  sub_1E10ADE6C();
  sub_1E1051250(&unk_1EE17FF40, MEMORY[0x1E6969BC0]);
  sub_1E10ADFFC();
  v33 = (v2 + v30[8]);
  v34 = v33[7];
  v59 = v33[6];
  v60 = v34;
  v35 = v33[9];
  v61 = v33[8];
  v62 = v35;
  v36 = v33[3];
  v55 = v33[2];
  v56 = v36;
  v37 = v33[5];
  v57 = v33[4];
  v58 = v37;
  v38 = v33[1];
  v53 = *v33;
  v54 = v38;
  Venue.hash(into:)();
  sub_1E0FEDC50(v2 + v30[9], v23, &qword_1ECE88C70, &qword_1E10AF9C8);
  if ((*(v13 + 48))(v23, 1, v12) == 1)
  {
    sub_1E10AE9EC();
  }

  else
  {
    sub_1E0FEDD58(v23, v18, type metadata accessor for EventAttribution);
    sub_1E10AE9EC();
    v39 = *v18;
    v40 = v18[1];
    _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
    v41 = *(v12 + 20);
    sub_1E10ADBBC();
    sub_1E1051250(&qword_1ECE88D18, MEMORY[0x1E6968FB0]);
    sub_1E10ADFFC();
    sub_1E1051034(v18, type metadata accessor for EventAttribution);
  }

  v42 = v50;
  sub_1E0FEDC50(v2 + v30[10], v50, &qword_1ECE88C80, &qword_1E10AF9D0);
  v43 = v52;
  if ((*(v51 + 48))(v42, 1, v52) == 1)
  {
    sub_1E10AE9EC();
  }

  else
  {
    v44 = v49;
    sub_1E0FEDD58(v42, v49, type metadata accessor for TicketAttribution);
    sub_1E10AE9EC();
    v45 = *v44;
    v46 = v44[1];
    _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
    v47 = *(v43 + 20);
    sub_1E10ADBBC();
    sub_1E1051250(&qword_1ECE88D18, MEMORY[0x1E6968FB0]);
    sub_1E10ADFFC();
    sub_1E1051034(v44, type metadata accessor for TicketAttribution);
  }

  return sub_1E0FEBCA4(a1, *(v2 + v30[11]));
}

uint64_t Nightlife.hashValue.getter()
{
  sub_1E10AE9CC();
  Nightlife.hash(into:)(v1);
  return sub_1E10AEA0C();
}

uint64_t Nightlife.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C80, &qword_1E10AF9D0) - 8) + 64);
  MEMORY[0x1EEE9AC00](v4, v5);
  v54 = v51 - v6;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C70, &qword_1E10AF9C8) - 8) + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v51 - v10;
  v12 = type metadata accessor for Time();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A6C0, &qword_1E10B6438);
  v55 = *(v56 - 8);
  v18 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = v51 - v21;
  v23 = type metadata accessor for Nightlife();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = (v51 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = a1[3];
  v29 = a1[4];
  v72 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v30);
  sub_1E1050E8C();
  v57 = v22;
  v31 = v58;
  sub_1E10AEA3C();
  if (v31)
  {
    return __swift_destroy_boxed_opaque_existential_1(v72);
  }

  v51[1] = v12;
  v52 = v17;
  v32 = v55;
  v58 = v23;
  LOBYTE(v60) = 0;
  sub_1E0FEDD04();
  v33 = v56;
  sub_1E10AE7FC();
  v34 = *(&v62 + 1);
  v35 = v28;
  *v28 = v62;
  v28[1] = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A6B0, &qword_1E10B6430);
  LOBYTE(v60) = 1;
  sub_1E1050EE0(&qword_1ECE8A6C8);
  sub_1E10AE7FC();
  v36 = v32;
  v37 = *(&v62 + 1);
  *(v35 + 16) = v62;
  *(v35 + 24) = v37;
  *(v35 + 32) = v63;
  LOBYTE(v62) = 2;
  *(v35 + 48) = sub_1E10AE7BC();
  *(v35 + 56) = v38;
  LOBYTE(v62) = 3;
  sub_1E1051250(&qword_1EE17EE88, type metadata accessor for Time);
  v39 = v52;
  sub_1E10AE7FC();
  v40 = v58;
  sub_1E0FEDD58(v39, v35 + v58[7], type metadata accessor for Time);
  v61 = 4;
  sub_1E0FEDDC0();
  sub_1E10AE7FC();
  LODWORD(v52) = 1;
  v41 = (v35 + v40[8]);
  v42 = v69;
  v43 = v70;
  v41[6] = v68;
  v41[7] = v42;
  v44 = v71;
  v41[8] = v43;
  v41[9] = v44;
  v45 = v65;
  v41[2] = v64;
  v41[3] = v45;
  v46 = v67;
  v41[4] = v66;
  v41[5] = v46;
  v47 = v63;
  *v41 = v62;
  v41[1] = v47;
  type metadata accessor for EventAttribution();
  LOBYTE(v60) = 5;
  sub_1E1051250(&qword_1ECE88D30, type metadata accessor for EventAttribution);
  sub_1E10AE7AC();
  sub_1E0FEDEF4(v11, v35 + v40[9], &qword_1ECE88C70, &qword_1E10AF9C8);
  type metadata accessor for TicketAttribution();
  LOBYTE(v60) = 6;
  sub_1E1051250(&qword_1ECE88D50, type metadata accessor for TicketAttribution);
  v48 = v54;
  sub_1E10AE7AC();
  sub_1E0FEDEF4(v48, v35 + v40[10], &qword_1ECE88C80, &qword_1E10AF9D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88CF0, &qword_1E10AF9F8);
  v59 = 7;
  sub_1E1050F30(&qword_1ECE88D58, &qword_1ECE88D60);
  v49 = v57;
  sub_1E10AE7FC();
  (*(v36 + 8))(v49, v33);
  *(v35 + v40[11]) = v60;
  sub_1E1050FCC(v35, v53, type metadata accessor for Nightlife);
  __swift_destroy_boxed_opaque_existential_1(v72);
  return sub_1E1051034(v35, type metadata accessor for Nightlife);
}

uint64_t sub_1E1050420()
{
  sub_1E10AE9CC();
  Nightlife.hash(into:)(v1);
  return sub_1E10AEA0C();
}

uint64_t sub_1E1050464()
{
  sub_1E10AE9CC();
  Nightlife.hash(into:)(v1);
  return sub_1E10AEA0C();
}

uint64_t _s12ShazamEvents9NightlifeV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for TicketAttribution();
  v93 = *(v4 - 8);
  v5 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v90 = (&v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C80, &qword_1E10AF9D0) - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  v91 = (&v87 - v12);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F40, &qword_1E10B0600);
  v13 = *(*(v92 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v87 - v16;
  v18 = type metadata accessor for EventAttribution();
  v94 = *(v18 - 8);
  v19 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = (&v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C70, &qword_1E10AF9C8) - 8) + 64);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = (&v87 - v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F50, &qword_1E10B0610);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v87 - v33;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1E10AE8FC() & 1) == 0)
  {
    goto LABEL_32;
  }

  if ((a1[2] != a2[2] || a1[3] != a2[3]) && (sub_1E10AE8FC() & 1) == 0)
  {
    goto LABEL_32;
  }

  if ((a1[6] != a2[6] || a1[7] != a2[7]) && (sub_1E10AE8FC() & 1) == 0)
  {
    goto LABEL_32;
  }

  v87 = v4;
  v88 = v17;
  v89 = type metadata accessor for Nightlife();
  v35 = v89[7];
  v36 = a1 + v35;
  v37 = a2 + v35;
  if ((sub_1E10ADA7C() & 1) == 0)
  {
    goto LABEL_32;
  }

  v38 = type metadata accessor for Time();
  if ((MEMORY[0x1E12ED5E0](&v36[*(v38 + 20)], &v37[*(v38 + 20)]) & 1) == 0)
  {
    goto LABEL_32;
  }

  v39 = v89;
  v40 = (a1 + v89[8]);
  v41 = v40[5];
  v42 = v40[7];
  v121 = v40[6];
  v122 = v42;
  v43 = v40[9];
  v44 = v40[7];
  v123 = v40[8];
  v124 = v43;
  v45 = v40[3];
  v46 = v40[1];
  v117 = v40[2];
  v118 = v45;
  v47 = v40[5];
  v48 = v40[3];
  v119 = v40[4];
  v120 = v47;
  v49 = v40[1];
  v116[0] = *v40;
  v116[1] = v49;
  v110 = v119;
  v111 = v41;
  v108 = v117;
  v109 = v48;
  v50 = v40[9];
  v114 = v123;
  v115 = v50;
  v112 = v121;
  v113 = v44;
  v106 = v116[0];
  v107 = v46;
  v51 = (a2 + v89[8]);
  v52 = v51[7];
  v53 = v51[5];
  v130 = v51[6];
  v131 = v52;
  v54 = v51[7];
  v55 = v51[9];
  v132 = v51[8];
  v133 = v55;
  v56 = v51[3];
  v57 = v51[1];
  v126 = v51[2];
  v127 = v56;
  v58 = v51[3];
  v59 = v51[5];
  v128 = v51[4];
  v129 = v59;
  v60 = v51[1];
  v125[0] = *v51;
  v125[1] = v60;
  v102 = v130;
  v103 = v54;
  v61 = v51[9];
  v104 = v132;
  v105 = v61;
  v98 = v126;
  v99 = v58;
  v100 = v128;
  v101 = v53;
  v96 = v125[0];
  v97 = v57;
  sub_1E0FE6720(v116, v95);
  sub_1E0FE6720(v125, v95);
  v62 = _s12ShazamEvents5VenueV2eeoiySbAC_ACtFZ_0(&v106, &v96);
  v134[6] = v102;
  v134[7] = v103;
  v134[8] = v104;
  v134[9] = v105;
  v134[2] = v98;
  v134[3] = v99;
  v134[4] = v100;
  v134[5] = v101;
  v134[0] = v96;
  v134[1] = v97;
  sub_1E0FEDAB8(v134);
  v135[6] = v112;
  v135[7] = v113;
  v135[8] = v114;
  v135[9] = v115;
  v135[2] = v108;
  v135[3] = v109;
  v135[4] = v110;
  v135[5] = v111;
  v135[0] = v106;
  v135[1] = v107;
  sub_1E0FEDAB8(v135);
  if (!v62)
  {
    goto LABEL_32;
  }

  v63 = v39[9];
  v64 = *(v29 + 48);
  sub_1E0FEDC50(a1 + v63, v34, &qword_1ECE88C70, &qword_1E10AF9C8);
  v65 = a2 + v63;
  v66 = v64;
  sub_1E0FEDC50(v65, &v34[v64], &qword_1ECE88C70, &qword_1E10AF9C8);
  v67 = *(v94 + 48);
  if (v67(v34, 1, v18) != 1)
  {
    sub_1E0FEDC50(v34, v28, &qword_1ECE88C70, &qword_1E10AF9C8);
    v94 = v66;
    v70 = v67(&v34[v66], 1, v18);
    v69 = v88;
    if (v70 != 1)
    {
      sub_1E0FEDD58(&v34[v94], v23, type metadata accessor for EventAttribution);
      if (*v28 == *v23 && v28[1] == v23[1] || (sub_1E10AE8FC() & 1) != 0)
      {
        v74 = *(v18 + 20);
        v75 = sub_1E10ADB8C();
        sub_1E1051034(v23, type metadata accessor for EventAttribution);
        sub_1E1051034(v28, type metadata accessor for EventAttribution);
        sub_1E0FF0440(v34, &qword_1ECE88C70, &qword_1E10AF9C8);
        if ((v75 & 1) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_24;
      }

      sub_1E1051034(v23, type metadata accessor for EventAttribution);
      sub_1E1051034(v28, type metadata accessor for EventAttribution);
      v71 = &qword_1ECE88C70;
      v72 = &qword_1E10AF9C8;
LABEL_19:
      v73 = v34;
LABEL_31:
      sub_1E0FF0440(v73, v71, v72);
      goto LABEL_32;
    }

    sub_1E1051034(v28, type metadata accessor for EventAttribution);
LABEL_18:
    v71 = &qword_1ECE88F50;
    v72 = &qword_1E10B0610;
    goto LABEL_19;
  }

  v68 = v67(&v34[v66], 1, v18);
  v69 = v88;
  if (v68 != 1)
  {
    goto LABEL_18;
  }

  sub_1E0FF0440(v34, &qword_1ECE88C70, &qword_1E10AF9C8);
LABEL_24:
  v76 = v89[10];
  v77 = *(v92 + 48);
  sub_1E0FEDC50(a1 + v76, v69, &qword_1ECE88C80, &qword_1E10AF9D0);
  sub_1E0FEDC50(a2 + v76, v69 + v77, &qword_1ECE88C80, &qword_1E10AF9D0);
  v78 = *(v93 + 48);
  v79 = v87;
  if (v78(v69, 1, v87) == 1)
  {
    if (v78(v69 + v77, 1, v79) == 1)
    {
      sub_1E0FF0440(v69, &qword_1ECE88C80, &qword_1E10AF9D0);
LABEL_38:
      v81 = sub_1E0FFE0A4(*(a1 + v89[11]), *(a2 + v89[11]));
      return v81 & 1;
    }

    goto LABEL_29;
  }

  v80 = v91;
  sub_1E0FEDC50(v69, v91, &qword_1ECE88C80, &qword_1E10AF9D0);
  if (v78(v69 + v77, 1, v79) == 1)
  {
    sub_1E1051034(v80, type metadata accessor for TicketAttribution);
LABEL_29:
    v71 = &qword_1ECE88F40;
    v72 = &qword_1E10B0600;
LABEL_30:
    v73 = v69;
    goto LABEL_31;
  }

  v83 = v69 + v77;
  v84 = v90;
  sub_1E0FEDD58(v83, v90, type metadata accessor for TicketAttribution);
  if ((*v80 != *v84 || v80[1] != v84[1]) && (sub_1E10AE8FC() & 1) == 0)
  {
    sub_1E1051034(v84, type metadata accessor for TicketAttribution);
    sub_1E1051034(v80, type metadata accessor for TicketAttribution);
    v71 = &qword_1ECE88C80;
    v72 = &qword_1E10AF9D0;
    goto LABEL_30;
  }

  v85 = *(v87 + 20);
  v86 = sub_1E10ADB8C();
  sub_1E1051034(v84, type metadata accessor for TicketAttribution);
  sub_1E1051034(v80, type metadata accessor for TicketAttribution);
  sub_1E0FF0440(v69, &qword_1ECE88C80, &qword_1E10AF9D0);
  if (v86)
  {
    goto LABEL_38;
  }

LABEL_32:
  v81 = 0;
  return v81 & 1;
}

unint64_t sub_1E1050E8C()
{
  result = qword_1ECE8A6A8;
  if (!qword_1ECE8A6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A6A8);
  }

  return result;
}

uint64_t sub_1E1050EE0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8A6B0, &qword_1E10B6430);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E1050F30(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE88CF0, &qword_1E10AF9F8);
    sub_1E1051250(a2, type metadata accessor for Ticket);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E1050FCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E1051034(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E1051094(uint64_t a1)
{
  result = sub_1E1051250(&qword_1EE17E598, type metadata accessor for Nightlife);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E1051134(void *a1)
{
  a1[1] = sub_1E1051250(&qword_1EE17E5B0, type metadata accessor for Nightlife);
  a1[2] = sub_1E1051250(qword_1EE17E5C8, type metadata accessor for Nightlife);
  a1[3] = sub_1E1051250(&qword_1EE17E5C0, type metadata accessor for Nightlife);
  result = sub_1E1051250(&qword_1EE17E5A8, type metadata accessor for Nightlife);
  a1[4] = result;
  return result;
}

uint64_t sub_1E1051250(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E10512C0()
{
  sub_1E105143C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Time();
    if (v1 <= 0x3F)
    {
      sub_1E100EF28(319, &qword_1ECE88DE0, type metadata accessor for EventAttribution, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1E100EF28(319, qword_1ECE88DE8, type metadata accessor for TicketAttribution, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1E100EF28(319, &qword_1EE17E428, type metadata accessor for Ticket, MEMORY[0x1E69E62F8]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E105143C()
{
  if (!qword_1ECE8A6D0)
  {
    type metadata accessor for Nightlife();
    sub_1E1051250(&qword_1EE17E5A0, type metadata accessor for Nightlife);
    v0 = type metadata accessor for EventCategory();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE8A6D0);
    }
  }
}

unint64_t sub_1E10514E4()
{
  result = qword_1ECE8A6D8;
  if (!qword_1ECE8A6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A6D8);
  }

  return result;
}

unint64_t sub_1E105153C()
{
  result = qword_1ECE8A6E0;
  if (!qword_1ECE8A6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A6E0);
  }

  return result;
}

unint64_t sub_1E1051594()
{
  result = qword_1ECE8A6E8;
  if (!qword_1ECE8A6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A6E8);
  }

  return result;
}

void sub_1E1051630()
{
  sub_1E105170C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for EventAttributes.Time(319);
    if (v1 <= 0x3F)
    {
      sub_1E105175C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E105170C()
{
  if (!qword_1ECE8A700)
  {
    v0 = sub_1E10AE4EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE8A700);
    }
  }
}

void sub_1E105175C()
{
  if (!qword_1ECE8A708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8A710, &qword_1E10B66E8);
    v0 = sub_1E10AE4EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE8A708);
    }
  }
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1E10517F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E105183C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E1051898(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E10518E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E105193C(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v67 = a3;
  v5 = 0;
  v66 = *(type metadata accessor for PartialEventResource(0) - 8);
  v6 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v7, v8);
  v78 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = (&v65 - v12);
  v14 = &qword_1ECE89878;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89878, &unk_1E10B6A20);
  v15 = *(*(v73 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v71 = &v65 - v22;
  v23 = a2 + 64;
  v24 = 1 << *(a2 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(a2 + 64);
  v27 = (v24 + 63) >> 6;
  v75 = a2;

  v68 = MEMORY[0x1E69E7CC0];
  v69 = v27;
  v28 = 0;
  v77 = v13;
  v70 = v23;
  v74 = a1;
  v72 = 0;
LABEL_4:
  v29 = v28;
  if (!v26)
  {
    goto LABEL_6;
  }

  do
  {
    v30 = v14;
    v28 = v29;
LABEL_10:
    v31 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v32 = v31 | (v28 << 6);
    v33 = v75;
    v34 = *(v75 + 48);
    v35 = sub_1E10ADCFC();
    v36 = *(v35 - 8);
    v37 = v36;
    v38 = v34 + *(v36 + 72) * v32;
    v39 = *(v36 + 16);
    v40 = v71;
    v76 = v35;
    v39(v71, v38);
    v41 = (*(v33 + 56) + 16 * v32);
    v42 = *v41;
    v43 = v41[1];
    v44 = v73;
    v45 = (v40 + *(v73 + 48));
    *v45 = v42;
    v45[1] = v43;
    sub_1E0FEDC50(v40, v19, v30, &unk_1E10B6A20);
    v46 = &v19[*(v44 + 48)];
    v48 = *v46;
    v47 = *(v46 + 1);

    v49 = sub_1E10AE74C();

    if (v49 < 8)
    {
      sub_1E0FF0440(v40, v30, &unk_1E10B6A20);
      (*(v37 + 8))(v19, v76);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      a1 = v74;
      v14 = v30;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v68 = sub_1E1058E04(0, *(v68 + 2) + 1, 1, v68);
      }

      v5 = v72;
      v27 = v69;
      v52 = *(v68 + 2);
      v51 = *(v68 + 3);
      if (v52 >= v51 >> 1)
      {
        v68 = sub_1E1058E04((v51 > 1), v52 + 1, 1, v68);
      }

      v53 = v68;
      *(v68 + 2) = v52 + 1;
      v53[v52 + 32] = v49;
      v13 = v77;
      v23 = v70;
      goto LABEL_4;
    }

    sub_1E0FF0440(v40, v30, &unk_1E10B6A20);
    (*(v37 + 8))(v19, v76);
    v29 = v28;
    a1 = v74;
    v13 = v77;
    v14 = v30;
    v5 = v72;
    v27 = v69;
    v23 = v70;
  }

  while (v26);
  while (1)
  {
LABEL_6:
    v28 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
LABEL_32:

      sub_1E1058490(v13, type metadata accessor for PartialEventResource);

      __break(1u);
      return result;
    }

    if (v28 >= v27)
    {
      break;
    }

    v26 = *(v23 + 8 * v28);
    ++v29;
    if (v26)
    {
      v30 = v14;
      goto LABEL_10;
    }
  }

  v54 = sub_1E102736C(v68);

  v55 = *(v67 + 16);
  if (v55)
  {
    v56 = (*(v66 + 80) + 32) & ~*(v66 + 80);
    v57 = *(v66 + 72);
    v58 = v67 + v56;
    v59 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1E105BCD0(v58, v13, type metadata accessor for PartialEventResource);
      v60 = sub_1E1057B14(v13, v54, a1);
      if (v5)
      {
        goto LABEL_32;
      }

      if (v60)
      {
        sub_1E105BC68(v13, v78, type metadata accessor for PartialEventResource);
        v61 = swift_isUniquelyReferenced_nonNull_native();
        v79 = v59;
        if ((v61 & 1) == 0)
        {
          sub_1E1059D6C(0, *(v59 + 16) + 1, 1);
          v59 = v79;
        }

        v63 = *(v59 + 16);
        v62 = *(v59 + 24);
        if (v63 >= v62 >> 1)
        {
          sub_1E1059D6C(v62 > 1, v63 + 1, 1);
          v59 = v79;
        }

        *(v59 + 16) = v63 + 1;
        sub_1E105BC68(v78, v59 + v56 + v63 * v57, type metadata accessor for PartialEventResource);
        v13 = v77;
      }

      else
      {
        sub_1E1058490(v13, type metadata accessor for PartialEventResource);
      }

      v58 += v57;
      if (!--v55)
      {
        goto LABEL_30;
      }
    }
  }

  v59 = MEMORY[0x1E69E7CC0];
LABEL_30:

  return v59;
}

char *sub_1E1051EE4(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A930, &unk_1E10B6BE0) - 8) + 64);
  MEMORY[0x1EEE9AC00](v3, v4);
  v295 = &v269 - v5;
  v294 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A938, &qword_1E10BCC00);
  v287 = *(v294 - 8);
  v6 = *(v287 + 64);
  MEMORY[0x1EEE9AC00](v7, v8);
  v272 = &v269 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v271 = &v269 - v12;
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A940, &unk_1E10B6BF0) - 8) + 64);
  MEMORY[0x1EEE9AC00](v14, v15);
  v312 = &v269 - v16;
  v296 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A948, &qword_1E10BCC10);
  v288 = *(v296 - 8);
  v17 = *(v288 + 64);
  MEMORY[0x1EEE9AC00](v18, v19);
  v274 = &v269 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v273 = &v269 - v23;
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A950, &unk_1E10B6C00) - 8) + 64);
  MEMORY[0x1EEE9AC00](v25, v26);
  v298 = &v269 - v27;
  v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A958, &qword_1E10BCC20);
  v289 = *(v297 - 8);
  v28 = *(v289 + 64);
  MEMORY[0x1EEE9AC00](v29, v30);
  v276 = &v269 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v275 = &v269 - v34;
  v35 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A960, &unk_1E10B6C10) - 8) + 64);
  MEMORY[0x1EEE9AC00](v36, v37);
  v300 = &v269 - v38;
  v299 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A968, &qword_1E10BCC50);
  v290 = *(v299 - 8);
  v39 = *(v290 + 64);
  MEMORY[0x1EEE9AC00](v40, v41);
  v278 = &v269 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43, v44);
  v277 = &v269 - v45;
  v46 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A970, &unk_1E10B6C20) - 8) + 64);
  MEMORY[0x1EEE9AC00](v47, v48);
  v303 = &v269 - v49;
  v302 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A978, &qword_1E10BCC40);
  v291 = *(v302 - 8);
  v50 = *(v291 + 64);
  MEMORY[0x1EEE9AC00](v51, v52);
  v280 = &v269 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54, v55);
  v279 = &v269 - v56;
  v57 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A980, &unk_1E10B6C30) - 8) + 64);
  MEMORY[0x1EEE9AC00](v58, v59);
  v306 = &v269 - v60;
  v305 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A988, &qword_1E10BCC30);
  v292 = *(v305 - 8);
  v61 = *(v292 + 64);
  MEMORY[0x1EEE9AC00](v62, v63);
  v282 = &v269 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v65, v66);
  v281 = &v269 - v67;
  v68 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A990, &unk_1E10B6C40) - 8) + 64);
  MEMORY[0x1EEE9AC00](v69, v70);
  v310 = &v269 - v71;
  v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A998, &qword_1E10BCC60);
  v293 = *(v309 - 8);
  v72 = *(v293 + 64);
  MEMORY[0x1EEE9AC00](v73, v74);
  v284 = &v269 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v76, v77);
  v283 = &v269 - v78;
  v79 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A9A0, &unk_1E10B6C50) - 8) + 64);
  MEMORY[0x1EEE9AC00](v80, v81);
  v83 = &v269 - v82;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A9A8, &qword_1E10BCC70);
  v85 = *(v84 - 8);
  v86 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v87, v88);
  v286 = &v269 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v90, v91);
  v285 = &v269 - v92;
  v93 = *(type metadata accessor for PartialEventResource(0) - 8);
  v94 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v95, v96);
  v313 = &v269 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v98, v99);
  v314 = &v269 - v100;
  MEMORY[0x1EEE9AC00](v101, v102);
  v304 = &v269 - v103;
  MEMORY[0x1EEE9AC00](v104, v105);
  v316 = &v269 - v106;
  MEMORY[0x1EEE9AC00](v107, v108);
  v318 = (&v269 - v109);
  MEMORY[0x1EEE9AC00](v110, v111);
  v113 = &v269 - v112;
  MEMORY[0x1EEE9AC00](v114, v115);
  v117 = (&v269 - v116);
  MEMORY[0x1EEE9AC00](v118, v119);
  v121 = &v269 - v120;
  v122 = MEMORY[0x1E69E7CC0];
  v123 = sub_1E1058EF8(0, 8, 0, MEMORY[0x1E69E7CC0], &qword_1ECE8AA38, &qword_1E10B6CB0);
  v311 = v123;
  v320 = a1;
  v124 = *(a1 + 16);
  if (!v124)
  {
    v301 = v122;
    goto LABEL_20;
  }

  v307 = v84;
  v125 = v85;
  v126 = 0;
  v270 = v125;
  v127 = (v125 + 56);
  v128 = MEMORY[0x1E69E7CC0];
  v301 = MEMORY[0x1E69E7CC0];
  v308 = v83;
  v315 = v117;
  do
  {
    v129 = v126;
    while (1)
    {
      if (v129 >= v124)
      {
        __break(1u);
LABEL_216:
        __break(1u);
LABEL_217:
        __break(1u);
LABEL_218:
        __break(1u);
        goto LABEL_219;
      }

      v123 = sub_1E105BCD0(v320 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v129, v121, type metadata accessor for PartialEventResource);
      v126 = v129 + 1;
      if (__OFADD__(v129, 1))
      {
        goto LABEL_216;
      }

      v130 = v124;
      v131 = v93;
      v132 = v113;
      v133 = v127;
      v134 = *(v121 + 48);
      v135 = *(v121 + 56);
      sub_1E10AE06C();
      v122 = sub_1E10AE74C();

      if (v122 - 1 >= 7)
      {
        break;
      }

      v123 = sub_1E1058490(v121, type metadata accessor for PartialEventResource);
LABEL_5:
      v127 = v133;
      ++v129;
      v147 = v126 == v130;
      v113 = v132;
      v93 = v131;
      v124 = v130;
      v117 = v315;
      if (v147)
      {
        goto LABEL_20;
      }
    }

    if (v122)
    {
      sub_1E1031F0C();
      swift_allocError();
      *v257 = 2;
      swift_willThrow();
      sub_1E1058490(v121, type metadata accessor for PartialEventResource);

      goto LABEL_213;
    }

    v136 = v317;
    sub_1E1055D50(&v319);
    v317 = v136;
    if (v136)
    {
      sub_1E1058490(v121, type metadata accessor for PartialEventResource);

      goto LABEL_213;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A068, &qword_1E10B6C60);
    v137 = v307;
    v122 = v308;
    v138 = swift_dynamicCast();
    v139 = *v133;
    if ((v138 & 1) == 0)
    {
      v139(v122, 1, 1, v137);
      sub_1E1058490(v121, type metadata accessor for PartialEventResource);
      v123 = sub_1E0FF0440(v122, &qword_1ECE8A9A0, &unk_1E10B6C50);
      goto LABEL_5;
    }

    v139(v122, 0, 1, v137);
    v140 = v285;
    sub_1E0FEDEF4(v122, v285, &qword_1ECE8A9A8, &qword_1E10BCC70);
    sub_1E0FEDC50(v140, v286, &qword_1ECE8A9A8, &qword_1E10BCC70);
    v127 = v133;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v301 = sub_1E1059860(0, v301[2] + 1, 1, v301, &qword_1ECE8A9E8, &qword_1E10B6CA0, &qword_1ECE8A9A8, &qword_1E10BCC70);
    }

    v113 = v132;
    v122 = v301[2];
    v141 = v301[3];
    v93 = v131;
    v269 = v122 + 1;
    if (v122 >= v141 >> 1)
    {
      v301 = sub_1E1059860(v141 > 1, v122 + 1, 1, v301, &qword_1ECE8A9E8, &qword_1E10B6CA0, &qword_1ECE8A9A8, &qword_1E10BCC70);
    }

    v124 = v130;
    sub_1E0FF0440(v285, &qword_1ECE8A9A8, &qword_1E10BCC70);
    v142 = v301;
    v301[2] = v269;
    sub_1E0FEDEF4(v286, v142 + ((*(v270 + 80) + 32) & ~*(v270 + 80)) + *(v270 + 72) * v122, &qword_1ECE8A9A8, &qword_1E10BCC70);
    v123 = sub_1E1058490(v121, type metadata accessor for PartialEventResource);
    v117 = v315;
  }

  while (v126 != v124);
LABEL_20:
  v123 = v301;
  if (!v301[2])
  {

    v126 = v311;
    if (!v124)
    {
      goto LABEL_67;
    }

LABEL_23:
    v122 = 0;
    v128 = v293 + 56;
    v311 = (v293 + 56);
    v123 = MEMORY[0x1E69E7CC0];
LABEL_24:
    v308 = v123;
    v144 = v122;
    while (1)
    {
      if (v144 >= v124)
      {
        goto LABEL_217;
      }

      v123 = sub_1E105BCD0(v320 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v144, v117, type metadata accessor for PartialEventResource);
      v122 = v144 + 1;
      if (__OFADD__(v144, 1))
      {
        goto LABEL_218;
      }

      v145 = v117[6];
      v146 = v117[7];
      sub_1E10AE06C();
      v121 = sub_1E10AE74C();

      v147 = v121 - 2 < 6 || v121 == 0;
      if (v147)
      {
        v123 = sub_1E1058490(v117, type metadata accessor for PartialEventResource);
      }

      else
      {
        if (v121 != 1)
        {
          sub_1E1031F0C();
          swift_allocError();
          *v259 = 2;
          swift_willThrow();
          sub_1E1058490(v117, type metadata accessor for PartialEventResource);

          goto LABEL_213;
        }

        v148 = v317;
        sub_1E1055D50(&v319);
        v317 = v148;
        if (v148)
        {
          sub_1E1058490(v117, type metadata accessor for PartialEventResource);

          goto LABEL_213;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A068, &qword_1E10B6C60);
        v149 = v309;
        v121 = v310;
        v150 = swift_dynamicCast();
        v151 = *v311;
        if (v150)
        {
          v151(v121, 0, 1, v149);
          v152 = v121;
          v153 = v283;
          sub_1E0FEDEF4(v152, v283, &qword_1ECE8A998, &qword_1E10BCC60);
          sub_1E0FEDC50(v153, v284, &qword_1ECE8A998, &qword_1E10BCC60);
          v154 = v308;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v154 = sub_1E1059860(0, v154[2] + 1, 1, v154, &qword_1ECE8A9E0, &qword_1E10B6C98, &qword_1ECE8A998, &qword_1E10BCC60);
          }

          v156 = v154[2];
          v155 = v154[3];
          v157 = v154;
          v308 = (v156 + 1);
          if (v156 >= v155 >> 1)
          {
            v157 = sub_1E1059860(v155 > 1, v156 + 1, 1, v154, &qword_1ECE8A9E0, &qword_1E10B6C98, &qword_1ECE8A998, &qword_1E10BCC60);
          }

          v121 = &qword_1ECE8A998;
          sub_1E0FF0440(v283, &qword_1ECE8A998, &qword_1E10BCC60);
          *(v157 + 16) = v308;
          sub_1E0FEDEF4(v284, v157 + ((*(v293 + 80) + 32) & ~*(v293 + 80)) + *(v293 + 72) * v156, &qword_1ECE8A998, &qword_1E10BCC60);
          sub_1E1058490(v117, type metadata accessor for PartialEventResource);
          v123 = v157;
          if (v122 != v124)
          {
            goto LABEL_24;
          }

          goto LABEL_44;
        }

        v151(v121, 1, 1, v149);
        sub_1E1058490(v117, type metadata accessor for PartialEventResource);
        v123 = sub_1E0FF0440(v121, &qword_1ECE8A990, &unk_1E10B6C40);
      }

      ++v144;
      if (v122 == v124)
      {
        v123 = v308;
LABEL_44:
        if (!*(v123 + 2))
        {
          goto LABEL_68;
        }

        goto LABEL_45;
      }
    }
  }

  v126 = v311;
  v121 = *(v311 + 2);
  v128 = *(v311 + 3);
  v122 = v121 + 1;
  if (v121 >= v128 >> 1)
  {
    goto LABEL_231;
  }

  while (2)
  {
    *(v126 + 16) = v122;
    v143 = (v126 + 16 * v121);
    *(v143 + 4) = v123;
    v143[40] = 0;
    if (v124)
    {
      goto LABEL_23;
    }

LABEL_67:
    v123 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_45:
      v121 = *(v126 + 16);
      v158 = *(v126 + 24);
      if (v121 >= v158 >> 1)
      {
        v267 = v123;
        v126 = sub_1E1058EF8((v158 > 1), v121 + 1, 1, v126, &qword_1ECE8AA38, &qword_1E10B6CB0);
        v123 = v267;
      }

      *(v126 + 16) = v121 + 1;
      v159 = (v126 + 16 * v121);
      *(v159 + 4) = v123;
      v159[40] = 1;
      if (!v124)
      {
        break;
      }

      goto LABEL_48;
    }

LABEL_68:

    if (v124)
    {
LABEL_48:
      v122 = 0;
      v160 = (v292 + 56);
      v128 = MEMORY[0x1E69E7CC0];
      v315 = MEMORY[0x1E69E7CC0];
      v117 = &unk_1F5BED160;
      v311 = v126;
LABEL_49:
      v126 = v122;
      while (v126 < v124)
      {
        v123 = sub_1E105BCD0(v320 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v126, v113, type metadata accessor for PartialEventResource);
        v122 = v126 + 1;
        if (__OFADD__(v126, 1))
        {
          goto LABEL_220;
        }

        v161 = *(v113 + 6);
        v162 = *(v113 + 7);
        sub_1E10AE06C();
        v121 = sub_1E10AE74C();

        if (v121 > 7)
        {
          sub_1E1031F0C();
          swift_allocError();
          *v260 = 2;
          swift_willThrow();
          sub_1E1058490(v113, type metadata accessor for PartialEventResource);

          goto LABEL_213;
        }

        if (v121 == 4)
        {
          v163 = v317;
          sub_1E1055D50(&v319);
          v317 = v163;
          if (v163)
          {
            sub_1E1058490(v113, type metadata accessor for PartialEventResource);

            goto LABEL_213;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A068, &qword_1E10B6C60);
          v164 = v305;
          v121 = v306;
          v165 = swift_dynamicCast();
          v166 = *v160;
          if (v165)
          {
            v166(v121, 0, 1, v164);
            v167 = v121;
            v168 = v281;
            sub_1E0FEDEF4(v167, v281, &qword_1ECE8A988, &qword_1E10BCC30);
            sub_1E0FEDC50(v168, v282, &qword_1ECE8A988, &qword_1E10BCC30);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v315 = sub_1E1059860(0, v315[2] + 1, 1, v315, &qword_1ECE8A9D8, &qword_1E10B6C90, &qword_1ECE8A988, &qword_1E10BCC30);
            }

            v126 = v311;
            v170 = v315[2];
            v169 = v315[3];
            v310 = (v170 + 1);
            if (v170 >= v169 >> 1)
            {
              v315 = sub_1E1059860(v169 > 1, v170 + 1, 1, v315, &qword_1ECE8A9D8, &qword_1E10B6C90, &qword_1ECE8A988, &qword_1E10BCC30);
            }

            v121 = &qword_1ECE8A988;
            sub_1E0FF0440(v281, &qword_1ECE8A988, &qword_1E10BCC30);
            v171 = v315;
            v315[2] = v310;
            sub_1E0FEDEF4(v282, v171 + ((*(v292 + 80) + 32) & ~*(v292 + 80)) + *(v292 + 72) * v170, &qword_1ECE8A988, &qword_1E10BCC30);
            v123 = sub_1E1058490(v113, type metadata accessor for PartialEventResource);
            if (v122 != v124)
            {
              goto LABEL_49;
            }

            goto LABEL_70;
          }

          v166(v121, 1, 1, v164);
          sub_1E1058490(v113, type metadata accessor for PartialEventResource);
          v123 = sub_1E0FF0440(v121, &qword_1ECE8A980, &unk_1E10B6C30);
        }

        else
        {
          v123 = sub_1E1058490(v113, type metadata accessor for PartialEventResource);
        }

        ++v126;
        if (v122 == v124)
        {
          v126 = v311;
          goto LABEL_70;
        }
      }

LABEL_219:
      __break(1u);
LABEL_220:
      __break(1u);
LABEL_221:
      __break(1u);
LABEL_222:
      __break(1u);
LABEL_223:
      __break(1u);
LABEL_224:
      __break(1u);
LABEL_225:
      __break(1u);
LABEL_226:
      __break(1u);
LABEL_227:
      __break(1u);
LABEL_228:
      __break(1u);
LABEL_229:
      __break(1u);
LABEL_230:
      __break(1u);
LABEL_231:
      v266 = v123;
      v126 = sub_1E1058EF8((v128 > 1), v122, 1, v126, &qword_1ECE8AA38, &qword_1E10B6CB0);
      v123 = v266;
      continue;
    }

    break;
  }

  v315 = MEMORY[0x1E69E7CC0];
LABEL_70:
  v123 = v315;
  if (v315[2])
  {
    v173 = *(v126 + 16);
    v172 = *(v126 + 24);
    if (v173 >= v172 >> 1)
    {
      v268 = v315;
      v126 = sub_1E1058EF8((v172 > 1), v173 + 1, 1, v126, &qword_1ECE8AA38, &qword_1E10B6CB0);
      v123 = v268;
    }

    *(v126 + 16) = v173 + 1;
    v174 = (v126 + 16 * v173);
    *(v174 + 4) = v123;
    v174[40] = 4;
    v121 = v318;
    if (v124)
    {
LABEL_74:
      v113 = 0;
      v128 = v291;
      v175 = (v291 + 56);
      v122 = MEMORY[0x1E69E7CC0];
      v117 = &unk_1F5BED160;
      v311 = v126;
      while (1)
      {
        v126 = v113;
        while (1)
        {
          if (v126 >= v124)
          {
            goto LABEL_221;
          }

          v123 = sub_1E105BCD0(v320 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v126, v121, type metadata accessor for PartialEventResource);
          v113 = (v126 + 1);
          if (__OFADD__(v126, 1))
          {
            goto LABEL_222;
          }

          v176 = *(v121 + 48);
          v177 = *(v121 + 56);
          sub_1E10AE06C();
          v178 = sub_1E10AE74C();

          if (v178 > 7)
          {
            sub_1E1031F0C();
            swift_allocError();
            *v261 = 2;
            swift_willThrow();
            v264 = v318;
            goto LABEL_212;
          }

          if (v178 == 3)
          {
            break;
          }

          v123 = sub_1E1058490(v318, type metadata accessor for PartialEventResource);
LABEL_77:
          ++v126;
          v121 = v318;
          if (v113 == v124)
          {
            v126 = v311;
            goto LABEL_92;
          }
        }

        v179 = v317;
        sub_1E1055D50(&v319);
        v317 = v179;
        if (v179)
        {
          v264 = v318;
          goto LABEL_212;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A068, &qword_1E10B6C60);
        v180 = v303;
        v181 = v302;
        v182 = swift_dynamicCast();
        v183 = *v175;
        if ((v182 & 1) == 0)
        {
          break;
        }

        v183(v180, 0, 1, v181);
        v184 = v180;
        v185 = v279;
        sub_1E0FEDEF4(v184, v279, &qword_1ECE8A978, &qword_1E10BCC40);
        sub_1E0FEDC50(v185, v280, &qword_1ECE8A978, &qword_1E10BCC40);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v122 = sub_1E1059860(0, *(v122 + 16) + 1, 1, v122, &qword_1ECE8A9D0, &qword_1E10B6C88, &qword_1ECE8A978, &qword_1E10BCC40);
        }

        v126 = v311;
        v187 = *(v122 + 16);
        v186 = *(v122 + 24);
        v315 = (v187 + 1);
        if (v187 >= v186 >> 1)
        {
          v122 = sub_1E1059860(v186 > 1, v187 + 1, 1, v122, &qword_1ECE8A9D0, &qword_1E10B6C88, &qword_1ECE8A978, &qword_1E10BCC40);
        }

        sub_1E0FF0440(v279, &qword_1ECE8A978, &qword_1E10BCC40);
        *(v122 + 16) = v315;
        sub_1E0FEDEF4(v280, v122 + ((*(v291 + 80) + 32) & ~*(v291 + 80)) + *(v291 + 72) * v187, &qword_1ECE8A978, &qword_1E10BCC40);
        v121 = v318;
        v123 = sub_1E1058490(v318, type metadata accessor for PartialEventResource);
        if (v113 == v124)
        {
LABEL_92:
          if (*(v122 + 16))
          {
            goto LABEL_93;
          }

LABEL_120:

          v121 = v316;
          if (!v124)
          {
            goto LABEL_121;
          }

LABEL_96:
          v191 = 0;
          v128 = v290;
          v113 = (v290 + 56);
          v122 = MEMORY[0x1E69E7CC0];
          v117 = &unk_1F5BED160;
          v311 = v126;
LABEL_97:
          v126 = v191;
          while (1)
          {
            if (v126 >= v124)
            {
              goto LABEL_223;
            }

            v123 = sub_1E105BCD0(v320 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v126, v121, type metadata accessor for PartialEventResource);
            v191 = (v126 + 1);
            if (__OFADD__(v126, 1))
            {
              goto LABEL_224;
            }

            v192 = *(v121 + 48);
            v193 = *(v121 + 56);
            sub_1E10AE06C();
            v194 = sub_1E10AE74C();

            if (v194 > 7)
            {
              sub_1E1031F0C();
              swift_allocError();
              *v262 = 2;
              swift_willThrow();
              v264 = v316;
              goto LABEL_212;
            }

            if (v194 == 2)
            {
              v195 = v317;
              sub_1E1055D50(&v319);
              v317 = v195;
              if (v195)
              {
                v264 = v316;
                goto LABEL_212;
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A068, &qword_1E10B6C60);
              v196 = v300;
              v197 = v299;
              v198 = swift_dynamicCast();
              v199 = *v113;
              if (v198)
              {
                v199(v196, 0, 1, v197);
                v200 = v196;
                v201 = v277;
                sub_1E0FEDEF4(v200, v277, &qword_1ECE8A968, &qword_1E10BCC50);
                sub_1E0FEDC50(v201, v278, &qword_1ECE8A968, &qword_1E10BCC50);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v122 = sub_1E1059860(0, *(v122 + 16) + 1, 1, v122, &qword_1ECE8A9C8, &qword_1E10B6C80, &qword_1ECE8A968, &qword_1E10BCC50);
                }

                v126 = v311;
                v203 = *(v122 + 16);
                v202 = *(v122 + 24);
                v318 = (v203 + 1);
                if (v203 >= v202 >> 1)
                {
                  v122 = sub_1E1059860(v202 > 1, v203 + 1, 1, v122, &qword_1ECE8A9C8, &qword_1E10B6C80, &qword_1ECE8A968, &qword_1E10BCC50);
                }

                sub_1E0FF0440(v277, &qword_1ECE8A968, &qword_1E10BCC50);
                *(v122 + 16) = v318;
                sub_1E0FEDEF4(v278, v122 + ((*(v290 + 80) + 32) & ~*(v290 + 80)) + *(v290 + 72) * v203, &qword_1ECE8A968, &qword_1E10BCC50);
                v121 = v316;
                v123 = sub_1E1058490(v316, type metadata accessor for PartialEventResource);
                if (v191 != v124)
                {
                  goto LABEL_97;
                }

                goto LABEL_114;
              }

              v199(v196, 1, 1, v197);
              sub_1E1058490(v316, type metadata accessor for PartialEventResource);
              v123 = sub_1E0FF0440(v196, &qword_1ECE8A960, &unk_1E10B6C10);
            }

            else
            {
              v123 = sub_1E1058490(v316, type metadata accessor for PartialEventResource);
            }

            ++v126;
            v121 = v316;
            if (v191 == v124)
            {
              v126 = v311;
LABEL_114:
              if (!*(v122 + 16))
              {
                goto LABEL_122;
              }

              goto LABEL_115;
            }
          }
        }
      }

      v183(v180, 1, 1, v181);
      sub_1E1058490(v318, type metadata accessor for PartialEventResource);
      v123 = sub_1E0FF0440(v180, &qword_1ECE8A970, &unk_1E10B6C20);
      goto LABEL_77;
    }
  }

  else
  {

    v121 = v318;
    if (v124)
    {
      goto LABEL_74;
    }
  }

  v122 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_120;
  }

LABEL_93:
  v189 = *(v126 + 16);
  v188 = *(v126 + 24);
  if (v189 >= v188 >> 1)
  {
    v123 = sub_1E1058EF8((v188 > 1), v189 + 1, 1, v126, &qword_1ECE8AA38, &qword_1E10B6CB0);
    v126 = v123;
  }

  *(v126 + 16) = v189 + 1;
  v190 = (v126 + 16 * v189);
  *(v190 + 4) = v122;
  v190[40] = 3;
  v121 = v316;
  if (v124)
  {
    goto LABEL_96;
  }

LABEL_121:
  v122 = MEMORY[0x1E69E7CC0];
  if (*(MEMORY[0x1E69E7CC0] + 16))
  {
LABEL_115:
    v205 = *(v126 + 16);
    v204 = *(v126 + 24);
    v121 = v205 + 1;
    v206 = v314;
    if (v205 >= v204 >> 1)
    {
      v123 = sub_1E1058EF8((v204 > 1), v205 + 1, 1, v126, &qword_1ECE8AA38, &qword_1E10B6CB0);
      v126 = v123;
    }

    *(v126 + 16) = v121;
    v207 = (v126 + 16 * v205);
    *(v207 + 4) = v122;
    v207[40] = 2;
  }

  else
  {
LABEL_122:

    v206 = v314;
  }

  v311 = v126;
  v122 = v304;
  if (!v124)
  {
    v208 = MEMORY[0x1E69E7CC0];
    if (!*(MEMORY[0x1E69E7CC0] + 16))
    {
      goto LABEL_188;
    }

LABEL_143:
    v220 = v311;
    v222 = *(v311 + 2);
    v221 = *(v311 + 3);
    v121 = v222 + 1;
    if (v222 >= v221 >> 1)
    {
      v123 = sub_1E1058EF8((v221 > 1), v222 + 1, 1, v311, &qword_1ECE8AA38, &qword_1E10B6CB0);
      v220 = v123;
    }

    *(v220 + 2) = v121;
    v223 = &v220[16 * v222];
    *(v223 + 4) = v208;
    v223[40] = 5;
    v311 = v220;
    if (v124)
    {
      goto LABEL_146;
    }

LABEL_189:
    v122 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_166:
      v235 = v311;
      v237 = *(v311 + 2);
      v236 = *(v311 + 3);
      v121 = v237 + 1;
      if (v237 >= v236 >> 1)
      {
        v123 = sub_1E1058EF8((v236 > 1), v237 + 1, 1, v311, &qword_1ECE8AA38, &qword_1E10B6CB0);
        v235 = v123;
      }

      *(v235 + 2) = v121;
      v238 = &v235[16 * v237];
      *(v238 + 4) = v122;
      v238[40] = 6;
      v311 = v235;
      if (!v124)
      {
LABEL_191:
        v239 = MEMORY[0x1E69E7CC0];
LABEL_192:
        if (v239[2])
        {
LABEL_193:
          v253 = v311;
          v255 = *(v311 + 2);
          v254 = *(v311 + 3);
          if (v255 >= v254 >> 1)
          {
            v253 = sub_1E1058EF8((v254 > 1), v255 + 1, 1, v311, &qword_1ECE8AA38, &qword_1E10B6CB0);
          }

          *(v253 + 2) = v255 + 1;
          v256 = &v253[16 * v255];
          *(v256 + 4) = v239;
          v256[40] = 7;
        }

        else
        {
LABEL_197:

          return v311;
        }

        return v253;
      }
    }

    else
    {
LABEL_190:

      if (!v124)
      {
        goto LABEL_191;
      }
    }

    v126 = 0;
    v128 = v287;
    v113 = (v287 + 56);
    v239 = MEMORY[0x1E69E7CC0];
    v117 = &unk_1F5BED160;
LABEL_170:
    v318 = v239;
    v240 = v126;
    v122 = v313;
    while (v240 < v124)
    {
      v123 = sub_1E105BCD0(v320 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v240, v122, type metadata accessor for PartialEventResource);
      v126 = v240 + 1;
      if (__OFADD__(v240, 1))
      {
        goto LABEL_230;
      }

      v241 = *(v122 + 48);
      v242 = *(v122 + 56);
      sub_1E10AE06C();
      v121 = v243;
      v244 = sub_1E10AE74C();

      v245 = v244 == 7;
      if (v244 < 7)
      {
        v123 = sub_1E1058490(v122, type metadata accessor for PartialEventResource);
      }

      else
      {
        v246 = v295;
        if (!v245)
        {
          sub_1E1031F0C();
          swift_allocError();
          *v263 = 2;
          swift_willThrow();
          v264 = v313;
          goto LABEL_212;
        }

        v247 = v317;
        sub_1E1055D50(&v319);
        v317 = v247;
        if (v247)
        {
          v264 = v313;
          goto LABEL_212;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A068, &qword_1E10B6C60);
        v121 = v294;
        v248 = swift_dynamicCast();
        v249 = *v113;
        if (v248)
        {
          v249(v246, 0, 1, v121);
          v250 = v271;
          sub_1E0FEDEF4(v246, v271, &qword_1ECE8A938, &qword_1E10BCC00);
          sub_1E0FEDC50(v250, v272, &qword_1ECE8A938, &qword_1E10BCC00);
          v239 = v318;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v239 = sub_1E1059860(0, v239[2] + 1, 1, v239, &qword_1ECE8A9B0, &qword_1E10B6C68, &qword_1ECE8A938, &qword_1E10BCC00);
          }

          v252 = v239[2];
          v251 = v239[3];
          v121 = v252 + 1;
          if (v252 >= v251 >> 1)
          {
            v239 = sub_1E1059860(v251 > 1, v252 + 1, 1, v239, &qword_1ECE8A9B0, &qword_1E10B6C68, &qword_1ECE8A938, &qword_1E10BCC00);
          }

          sub_1E0FF0440(v271, &qword_1ECE8A938, &qword_1E10BCC00);
          v239[2] = v121;
          sub_1E0FEDEF4(v272, v239 + ((*(v287 + 80) + 32) & ~*(v287 + 80)) + *(v287 + 72) * v252, &qword_1ECE8A938, &qword_1E10BCC00);
          v123 = sub_1E1058490(v313, type metadata accessor for PartialEventResource);
          if (v126 != v124)
          {
            goto LABEL_170;
          }

          goto LABEL_192;
        }

        v249(v246, 1, 1, v121);
        sub_1E1058490(v313, type metadata accessor for PartialEventResource);
        v123 = sub_1E0FF0440(v246, &qword_1ECE8A930, &unk_1E10B6BE0);
      }

      ++v240;
      v122 = v313;
      if (v126 == v124)
      {
        v239 = v318;
        if (v318[2])
        {
          goto LABEL_193;
        }

        goto LABEL_197;
      }
    }

    goto LABEL_229;
  }

  v126 = 0;
  v128 = v289;
  v113 = (v289 + 56);
  v208 = MEMORY[0x1E69E7CC0];
  v117 = &unk_1F5BED160;
  while (2)
  {
    v318 = v208;
    v209 = v126;
    while (2)
    {
      if (v209 >= v124)
      {
        goto LABEL_225;
      }

      v123 = sub_1E105BCD0(v320 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v209, v122, type metadata accessor for PartialEventResource);
      v126 = v209 + 1;
      if (__OFADD__(v209, 1))
      {
        goto LABEL_226;
      }

      v210 = *(v122 + 48);
      v211 = *(v122 + 56);
      sub_1E10AE06C();
      v121 = sub_1E10AE74C();

      if (v121 > 7)
      {
LABEL_200:
        sub_1E1031F0C();
        swift_allocError();
        *v258 = 2;
        swift_willThrow();
        v264 = v122;
        goto LABEL_212;
      }

      v206 = v314;
      if (v121 != 5)
      {
        v123 = sub_1E1058490(v122, type metadata accessor for PartialEventResource);
LABEL_127:
        ++v209;
        if (v126 == v124)
        {
          v208 = v318;
          goto LABEL_142;
        }

        continue;
      }

      break;
    }

    v212 = v317;
    sub_1E1055D50(&v319);
    v317 = v212;
    if (!v212)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A068, &qword_1E10B6C60);
      v121 = v298;
      v213 = v297;
      v214 = swift_dynamicCast();
      v215 = *v113;
      if (v214)
      {
        v215(v121, 0, 1, v213);
        v216 = v121;
        v217 = v275;
        v121 = &qword_1ECE8A958;
        sub_1E0FEDEF4(v216, v275, &qword_1ECE8A958, &qword_1E10BCC20);
        sub_1E0FEDC50(v217, v276, &qword_1ECE8A958, &qword_1E10BCC20);
        v208 = v318;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v208 = sub_1E1059860(0, v208[2] + 1, 1, v208, &qword_1ECE8A9C0, &qword_1E10B6C78, &qword_1ECE8A958, &qword_1E10BCC20);
        }

        v122 = v304;
        v219 = v208[2];
        v218 = v208[3];
        v318 = (v219 + 1);
        if (v219 >= v218 >> 1)
        {
          v208 = sub_1E1059860(v218 > 1, v219 + 1, 1, v208, &qword_1ECE8A9C0, &qword_1E10B6C78, &qword_1ECE8A958, &qword_1E10BCC20);
        }

        sub_1E0FF0440(v275, &qword_1ECE8A958, &qword_1E10BCC20);
        v208[2] = v318;
        sub_1E0FEDEF4(v276, v208 + ((*(v289 + 80) + 32) & ~*(v289 + 80)) + *(v289 + 72) * v219, &qword_1ECE8A958, &qword_1E10BCC20);
        v123 = sub_1E1058490(v122, type metadata accessor for PartialEventResource);
        v206 = v314;
        if (v126 == v124)
        {
LABEL_142:
          if (v208[2])
          {
            goto LABEL_143;
          }

LABEL_188:

          if (!v124)
          {
            goto LABEL_189;
          }

LABEL_146:
          v126 = 0;
          v128 = v288;
          v113 = (v288 + 56);
          v122 = MEMORY[0x1E69E7CC0];
          v117 = &unk_1F5BED160;
          while (2)
          {
            v318 = v122;
            v224 = v126;
LABEL_151:
            if (v224 >= v124)
            {
              goto LABEL_227;
            }

            v123 = sub_1E105BCD0(v320 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v224, v206, type metadata accessor for PartialEventResource);
            v126 = v224 + 1;
            if (__OFADD__(v224, 1))
            {
              goto LABEL_228;
            }

            v225 = *(v206 + 48);
            v226 = *(v206 + 56);
            sub_1E10AE06C();
            v122 = v206;
            v121 = sub_1E10AE74C();
            v227 = v312;

            if (v121 >= 6)
            {
              if (v121 == 6)
              {
                v228 = v317;
                sub_1E1055D50(&v319);
                v317 = v228;
                if (v228)
                {
                  v264 = v314;
                  goto LABEL_212;
                }

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A068, &qword_1E10B6C60);
                v121 = v296;
                v229 = swift_dynamicCast();
                v230 = *v113;
                if (v229)
                {
                  v230(v227, 0, 1, v121);
                  v232 = v273;
                  sub_1E0FEDEF4(v227, v273, &qword_1ECE8A948, &qword_1E10BCC10);
                  sub_1E0FEDC50(v232, v274, &qword_1ECE8A948, &qword_1E10BCC10);
                  v122 = v318;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v122 = sub_1E1059860(0, *(v122 + 16) + 1, 1, v122, &qword_1ECE8A9B8, &qword_1E10B6C70, &qword_1ECE8A948, &qword_1E10BCC10);
                  }

                  v234 = *(v122 + 16);
                  v233 = *(v122 + 24);
                  v121 = v234 + 1;
                  if (v234 >= v233 >> 1)
                  {
                    v122 = sub_1E1059860(v233 > 1, v234 + 1, 1, v122, &qword_1ECE8A9B8, &qword_1E10B6C70, &qword_1ECE8A948, &qword_1E10BCC10);
                  }

                  sub_1E0FF0440(v273, &qword_1ECE8A948, &qword_1E10BCC10);
                  *(v122 + 16) = v121;
                  sub_1E0FEDEF4(v274, v122 + ((*(v288 + 80) + 32) & ~*(v288 + 80)) + *(v288 + 72) * v234, &qword_1ECE8A948, &qword_1E10BCC10);
                  v206 = v314;
                  v123 = sub_1E1058490(v314, type metadata accessor for PartialEventResource);
                  if (v126 != v124)
                  {
                    continue;
                  }

                  goto LABEL_165;
                }

                v230(v227, 1, 1, v121);
                v122 = v314;
                sub_1E1058490(v314, type metadata accessor for PartialEventResource);
                v231 = v227;
                v206 = v122;
                v123 = sub_1E0FF0440(v231, &qword_1ECE8A940, &unk_1E10B6BF0);
                goto LABEL_150;
              }

              v122 = v314;
              if (v121 != 7)
              {
                goto LABEL_200;
              }
            }

            break;
          }

          v123 = sub_1E1058490(v122, type metadata accessor for PartialEventResource);
          v206 = v122;
LABEL_150:
          ++v224;
          if (v126 == v124)
          {
            v122 = v318;
LABEL_165:
            if (!*(v122 + 16))
            {
              goto LABEL_190;
            }

            goto LABEL_166;
          }

          goto LABEL_151;
        }

        continue;
      }

      v215(v121, 1, 1, v213);
      v122 = v304;
      sub_1E1058490(v304, type metadata accessor for PartialEventResource);
      v123 = sub_1E0FF0440(v121, &qword_1ECE8A950, &unk_1E10B6C00);
      goto LABEL_127;
    }

    break;
  }

  v264 = v122;
LABEL_212:
  sub_1E1058490(v264, type metadata accessor for PartialEventResource);

LABEL_213:

  return v253;
}

uint64_t sub_1E1054A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_1E10AE9CC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v7 = sub_1E10AEA0C();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1E10AE8FC() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1E1054B80(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = *(a2 + 40), v5 = sub_1E109CC6C(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v29 = ~v6;
    v8 = 0x74726F7073;
    v9 = 0x65636E6164;
    while (1)
    {
      v10 = *(*(a2 + 48) + v7);
      if (v10 > 3)
      {
        if (*(*(a2 + 48) + v7) > 5u)
        {
          if (v10 == 6)
          {
            v14 = 0xD000000000000011;
            v15 = 0x80000001E10BF070;
          }

          else
          {
            v14 = 0x66696C746867696ELL;
            v15 = 0xE900000000000065;
          }
        }

        else
        {
          if (v10 == 4)
          {
            v14 = 0x72657461656874;
          }

          else
          {
            v14 = 0x657665656C707061;
          }

          if (v10 == 4)
          {
            v15 = 0xE700000000000000;
          }

          else
          {
            v15 = 0xEA0000000000746ELL;
          }
        }
      }

      else
      {
        if (v10 == 2)
        {
          v11 = 0x6D646E6173747261;
        }

        else
        {
          v11 = v9;
        }

        if (v10 == 2)
        {
          v12 = 0xEE00736D75657375;
        }

        else
        {
          v12 = 0xE500000000000000;
        }

        if (*(*(a2 + 48) + v7))
        {
          v13 = v8;
        }

        else
        {
          v13 = 0x636973756DLL;
        }

        if (*(*(a2 + 48) + v7) <= 1u)
        {
          v14 = v13;
        }

        else
        {
          v14 = v11;
        }

        if (*(*(a2 + 48) + v7) <= 1u)
        {
          v15 = 0xE500000000000000;
        }

        else
        {
          v15 = v12;
        }
      }

      v16 = 0xD000000000000011;
      if (a1 != 6)
      {
        v16 = 0x66696C746867696ELL;
      }

      v17 = 0xE900000000000065;
      if (a1 == 6)
      {
        v17 = 0x80000001E10BF070;
      }

      v18 = 0x657665656C707061;
      if (a1 == 4)
      {
        v18 = 0x72657461656874;
      }

      v19 = 0xEA0000000000746ELL;
      if (a1 == 4)
      {
        v19 = 0xE700000000000000;
      }

      if (a1 <= 5u)
      {
        v16 = v18;
        v17 = v19;
      }

      if (a1 == 2)
      {
        v20 = 0x6D646E6173747261;
      }

      else
      {
        v20 = v9;
      }

      if (a1 == 2)
      {
        v21 = 0xEE00736D75657375;
      }

      else
      {
        v21 = 0xE500000000000000;
      }

      if (a1)
      {
        v22 = v8;
      }

      else
      {
        v22 = 0x636973756DLL;
      }

      if (a1 <= 1u)
      {
        v20 = v22;
        v21 = 0xE500000000000000;
      }

      v23 = a1 <= 3u ? v20 : v16;
      v24 = a1 <= 3u ? v21 : v17;
      if (v14 == v23 && v15 == v24)
      {
        break;
      }

      v25 = v9;
      v26 = v8;
      v27 = sub_1E10AE8FC();

      if ((v27 & 1) == 0)
      {
        v7 = (v7 + 1) & v29;
        v8 = v26;
        v9 = v25;
        if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
        {
          continue;
        }
      }

      return v27 & 1;
    }

    v27 = 1;
  }

  else
  {
    v27 = 0;
  }

  return v27 & 1;
}

uint64_t sub_1E1054E58(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A800, &qword_1E10B6A18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v15 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E105BC14();
  sub_1E10AEA5C();
  v15[0] = *v3;
  v16 = 0;
  sub_1E0FF4F38();
  sub_1E10AE8AC();
  if (!v2)
  {
    v13 = v3[2];
    v15[0] = v3[1];
    v15[1] = v13;
    v16 = 1;
    sub_1E10584F0();
    sub_1E10AE8AC();
  }

  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_1E1054FEC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[0] = a4;
  v16[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AAC8, &qword_1E10B72E8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v16 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E105C7EC();
  sub_1E10AEA5C();
  v18 = 0;
  sub_1E10AE86C();
  if (!v5)
  {
    v17 = 1;
    sub_1E10AE83C();
  }

  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_1E1055180(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A7E0, &qword_1E10B6A08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v17[-v10];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E105BB18();
  sub_1E10AEA5C();
  v13 = *v3;
  v14 = v3[1];
  LOBYTE(v18) = 0;
  sub_1E10AE83C();
  if (!v2)
  {
    v15 = *(v3 + 2);
    v18 = *(v3 + 1);
    v19 = v15;
    v17[15] = 1;
    sub_1E105BBC0();
    sub_1E10AE8AC();
  }

  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_1E10552FC(uint64_t a1)
{
  v2 = sub_1E105BC14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1055338(uint64_t a1)
{
  v2 = sub_1E105BC14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1E1055374@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1E105ADBC(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_1E10553D0()
{
  if (*v0)
  {
    result = 0x657A696C61636F6CLL;
  }

  else
  {
    result = 0x656C61636F6CLL;
  }

  *v0;
  return result;
}

uint64_t sub_1E1055414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
  if (v6 || (sub_1E10AE8FC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x657A696C61636F6CLL && a2 == 0xED0000656D614E64)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E10AE8FC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E10554F4(uint64_t a1)
{
  v2 = sub_1E105C7EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1055530(uint64_t a1)
{
  v2 = sub_1E105C7EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E105556C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1E105AFC0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1E10555BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_1E10AE8FC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E10AE8FC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E105569C(uint64_t a1)
{
  v2 = sub_1E105BB18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E10556D8(uint64_t a1)
{
  v2 = sub_1E105BB18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1E1055714@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1E105B1A4(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_1E1055770(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A7C0, &qword_1E10B69F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v16 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E105BAC4();
  sub_1E10AEA5C();
  v18 = *v3;
  v17 = 0;
  sub_1E0FF4F38();
  sub_1E10AE8AC();
  if (!v2)
  {
    v13 = *(v3 + 2);
    v14 = *(v3 + 3);
    LOBYTE(v18) = 1;
    sub_1E10AE83C();
    v18 = v3[2];
    v17 = 2;
    sub_1E10AE8AC();
    v18 = v3[3];
    v17 = 3;
    sub_1E10348C0();
    sub_1E10AE8AC();
  }

  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_1E10559A0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A7A8, &qword_1E10B69E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v17[-v10];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E105BA70();
  sub_1E10AEA5C();
  v13 = *v3;
  v14 = v3[1];
  LOBYTE(v18) = 0;
  sub_1E10AE86C();
  if (!v2)
  {
    v15 = *(v3 + 2);
    v18 = *(v3 + 1);
    v19 = v15;
    v17[15] = 1;
    sub_1E10584F0();
    sub_1E10AE8AC();
  }

  return (*(v6 + 8))(v11, v5);
}

unint64_t sub_1E1055B1C()
{
  v1 = 25705;
  v2 = 1701667182;
  if (*v0 != 2)
  {
    v2 = 7300455;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E1055B80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E105B394(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E1055BA8(uint64_t a1)
{
  v2 = sub_1E105BAC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1055BE4(uint64_t a1)
{
  v2 = sub_1E105BAC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1E1055C20@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1E105B4F8(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_1E1055C7C(uint64_t a1)
{
  v2 = sub_1E105BA70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1055CB8(uint64_t a1)
{
  v2 = sub_1E105BA70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1E1055CF4@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1E105B868(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_1E1055D50@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v93 = a1;
  v3 = *(*(type metadata accessor for Time() - 8) + 64);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[1];
  v92 = *v1;
  v9 = v1[11];
  v91 = v1[10];
  v10 = v1[15];
  v11 = v1[16];
  v12 = v1[17];
  if (v10 && v2[13])
  {
    v13 = v2[12];
    v14 = sub_1E10AE06C();
    v94 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v94 = 0xE000000000000000;
    if (!v10)
    {
      goto LABEL_6;
    }
  }

  v16 = v11;
  v17 = v12;
  v18 = v14;
LABEL_6:
  v89 = v18;
  v90 = v16;
  v20 = v2[4];
  v19 = v2[5];
  v21 = type metadata accessor for PartialEventResource(0);
  v22 = *(v21 + 36);

  v23 = v104;
  sub_1E103E918(v7);
  if (v23)
  {
  }

  v84 = v9;
  v86 = v7;
  v85 = v21;
  v82 = v20;
  v87 = v17;
  v88 = v8;
  v25 = v2[19];
  v26 = v2[20];
  v27 = v2[23];
  *&v95 = v2[18];
  *(&v95 + 1) = v25;
  *&v96[8] = *(v2 + 21);
  if (*&v96[8])
  {
    v28 = v26;
  }

  else
  {
    v28 = 0;
  }

  *v96 = v28;
  *&v96[24] = v27;
  v97 = xmmword_1E10B3A30;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = *(v2 + 12);
  v29 = v2[6];
  v30 = v2[7];
  sub_1E10AE06C();

  result = sub_1E10A215C();
  v83 = v19;
  if (result > 3u)
  {
    v31 = v85;
    v32 = v86;
    if (result > 5u)
    {
      if (result == 6)
      {
        v33 = &qword_1ECE8A948;
        v34 = &qword_1E10BCC10;
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A948, &qword_1E10BCC10);
        v36 = v93;
        v93[3] = v35;
        v37 = &unk_1ECE8A9F8;
      }

      else
      {
        if (result != 7)
        {

          sub_1E0FEDAB8(&v95);
          sub_1E1031F0C();
          swift_allocError();
          *v62 = 2;
          swift_willThrow();
          return sub_1E1058490(v32, type metadata accessor for Time);
        }

        v33 = &qword_1ECE8A938;
        v34 = &qword_1E10BCC00;
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A938, &qword_1E10BCC00);
        v36 = v93;
        v93[3] = v35;
        v37 = &unk_1ECE8A9F0;
      }

      v48 = sub_1E105BD38(v37, v33, v34);
      v41 = 0;
      v49 = 0;
      goto LABEL_49;
    }

    if (result == 4)
    {
      v59 = &qword_1ECE8A988;
      v60 = &qword_1E10BCC30;
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A988, &qword_1E10BCC30);
      v36 = v93;
      v93[3] = v35;
      v61 = &unk_1ECE8AA18;
    }

    else
    {
      v59 = &qword_1ECE8A958;
      v60 = &qword_1E10BCC20;
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A958, &qword_1E10BCC20);
      v36 = v93;
      v93[3] = v35;
      v61 = &unk_1ECE8AA00;
    }

    goto LABEL_47;
  }

  v31 = v85;
  v32 = v86;
  if (result > 1u)
  {
    v36 = v93;
    if (result == 2)
    {
      v59 = &qword_1ECE8A968;
      v60 = &qword_1E10BCC50;
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A968, &qword_1E10BCC50);
      v36[3] = v35;
      v61 = &unk_1ECE8AA08;
    }

    else
    {
      v59 = &qword_1ECE8A978;
      v60 = &qword_1E10BCC40;
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A978, &qword_1E10BCC40);
      v36[3] = v35;
      v61 = &unk_1ECE8AA10;
    }

LABEL_47:
    v48 = sub_1E105BD38(v61, v59, v60);
    v41 = 0;
LABEL_48:
    v49 = 0;
LABEL_49:
    v36[4] = v48;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v36);
    result = sub_1E105BC68(v32, boxed_opaque_existential_1 + v35[12], type metadata accessor for Time);
    v64 = *(v2 + *(v31 + 48));
    v65 = v88;
    *boxed_opaque_existential_1 = v92;
    boxed_opaque_existential_1[1] = v65;
    v66 = v84;
    boxed_opaque_existential_1[2] = v91;
    boxed_opaque_existential_1[3] = v66;
    v67 = v94;
    boxed_opaque_existential_1[4] = v89;
    boxed_opaque_existential_1[5] = v67;
    v68 = v87;
    boxed_opaque_existential_1[6] = v90;
    boxed_opaque_existential_1[7] = v68;
    v69 = v83;
    boxed_opaque_existential_1[8] = v82;
    boxed_opaque_existential_1[9] = v69;
    v70 = (boxed_opaque_existential_1 + v35[13]);
    v71 = *v96;
    *v70 = v95;
    v70[1] = v71;
    v72 = v98;
    v73 = v99;
    v74 = v97;
    v70[2] = *&v96[16];
    v70[3] = v74;
    v70[4] = v72;
    v70[5] = v73;
    v75 = v103;
    v76 = v101;
    v77 = v100;
    v70[8] = v102;
    v70[9] = v75;
    v70[6] = v77;
    v70[7] = v76;
    *(boxed_opaque_existential_1 + v35[14]) = v64;
    *(boxed_opaque_existential_1 + v35[15]) = v41;
    *(boxed_opaque_existential_1 + v35[16]) = v49;
    return result;
  }

  v36 = v93;
  if (result)
  {
    v50 = *(v2 + *(v85 + 44));
    if (v50)
    {
      v79 = 0;
      v81 = *(v50 + 16);
      if (v81)
      {
        v51 = 0;
        v52 = (v50 + 72);
        v49 = MEMORY[0x1E69E7CC0];
        v80 = v50;
        while (v51 < *(v50 + 16))
        {
          v53 = *(v52 - 4);
          v104 = *(v52 - 5);
          v54 = *(v52 - 1);
          v55 = *v52;

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1E1059A48(0, *(v49 + 16) + 1, 1, v49);
            v49 = result;
          }

          v57 = *(v49 + 16);
          v56 = *(v49 + 24);
          if (v57 >= v56 >> 1)
          {
            result = sub_1E1059A48((v56 > 1), v57 + 1, 1, v49);
            v49 = result;
          }

          ++v51;
          *(v49 + 16) = v57 + 1;
          v58 = v49 + (v57 << 6);
          *(v58 + 32) = v104;
          *(v58 + 40) = v53;
          *(v58 + 48) = v54;
          *(v58 + 56) = v55;
          v52 += 6;
          *(v58 + 64) = 0u;
          *(v58 + 80) = 0u;
          v50 = v80;
          if (v81 == v51)
          {
            goto LABEL_56;
          }
        }

        goto LABEL_59;
      }

      v49 = MEMORY[0x1E69E7CC0];
LABEL_56:
      v32 = v86;
      v36 = v93;
      v31 = v85;
    }

    else
    {
      v49 = 0;
    }

    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A998, &qword_1E10BCC60);
    v36[3] = v35;
    v48 = sub_1E105BD38(&qword_1ECE8AA20, &qword_1ECE8A998, &qword_1E10BCC60);
    v41 = 0;
    goto LABEL_49;
  }

  v38 = *(v2 + *(v85 + 40));
  if (!v38)
  {
    v41 = 0;
LABEL_54:
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A9A8, &qword_1E10BCC70);
    v36[3] = v35;
    v48 = sub_1E105BD38(&qword_1ECE8AA28, &qword_1ECE8A9A8, &qword_1E10BCC70);
    goto LABEL_48;
  }

  v79 = 0;
  v81 = *(v38 + 16);
  if (!v81)
  {
    v41 = MEMORY[0x1E69E7CC0];
LABEL_53:
    v32 = v86;
    v36 = v93;
    v31 = v85;
    goto LABEL_54;
  }

  v39 = 0;
  v40 = (v38 + 72);
  v41 = MEMORY[0x1E69E7CC0];
  v80 = v38;
  while (v39 < *(v38 + 16))
  {
    v42 = *(v40 - 4);
    v104 = *(v40 - 5);
    v43 = *(v40 - 1);
    v44 = *v40;

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E1059B54(0, *(v41 + 16) + 1, 1, v41);
      v41 = result;
    }

    v46 = *(v41 + 16);
    v45 = *(v41 + 24);
    if (v46 >= v45 >> 1)
    {
      result = sub_1E1059B54((v45 > 1), v46 + 1, 1, v41);
      v41 = result;
    }

    ++v39;
    *(v41 + 16) = v46 + 1;
    v47 = v41 + 104 * v46;
    *(v47 + 32) = v104;
    *(v47 + 40) = v42;
    *(v47 + 48) = v43;
    *(v47 + 56) = v44;
    *(v47 + 64) = 0u;
    *(v47 + 80) = 0u;
    *(v47 + 96) = 0u;
    *(v47 + 112) = 0u;
    *(v47 + 128) = 0;
    v40 += 6;
    v38 = v80;
    if (v81 == v39)
    {
      goto LABEL_53;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

uint64_t sub_1E10565FC(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 25705;
    v6 = 1684957547;
    if (a1 != 2)
    {
      v6 = 0x646E694B627573;
    }

    if (a1)
    {
      v5 = 1701667182;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x73747369747261;
    v2 = 0x74697465706D6F63;
    if (a1 != 7)
    {
      v2 = 0xD000000000000017;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x65756E6576;
    if (a1 != 4)
    {
      v3 = 1701669236;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1E1056700(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A760, &qword_1E10B69D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v30 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E10581D0();
  sub_1E10AEA5C();
  v13 = *(v3 + 8);
  *&v38 = *v3;
  *(&v38 + 1) = v13;
  LOBYTE(v34) = 0;
  sub_1E0FF4F38();
  sub_1E10AE8AC();
  if (v2)
  {
    return (*(v6 + 8))(v11, v5);
  }

  v15 = v6;
  v16 = *(v3 + 32);
  v17 = *(v3 + 40);
  v38 = *(v3 + 16);
  *&v39 = v16;
  *(&v39 + 1) = v17;
  LOBYTE(v34) = 1;
  sub_1E10584F0();
  sub_1E10AE8AC();
  v18 = *(v3 + 64);
  v19 = *(v3 + 80);
  v20 = *(v3 + 88);
  v38 = *(v3 + 48);
  v39 = v18;
  *&v40 = v19;
  *(&v40 + 1) = v20;
  LOBYTE(v34) = 2;
  sub_1E1058544();
  sub_1E10AE8AC();
  v21 = *(v3 + 112);
  v43 = *(v3 + 96);
  v44 = v21;
  v45 = *(v3 + 128);
  v42 = 3;
  sub_1E1058598();
  sub_1E10AE85C();
  v22 = *(v3 + 144);
  v23 = *(v3 + 176);
  v39 = *(v3 + 160);
  v40 = v23;
  v24 = *(v3 + 176);
  v41 = *(v3 + 192);
  v34 = v22;
  v35 = v39;
  v25 = *(v3 + 144);
  v36 = v24;
  v37 = *(v3 + 192);
  v38 = v25;
  v33 = 4;
  sub_1E10585EC(&v38, v32);
  sub_1E1058624();
  sub_1E10AE8AC();
  v32[0] = v34;
  v32[1] = v35;
  v32[2] = v36;
  v32[3] = v37;
  sub_1E1058224(v32);
  v26 = type metadata accessor for PartialEventResource(0);
  v27 = v26[9];
  LOBYTE(v31) = 5;
  type metadata accessor for EventAttributes.Time(0);
  sub_1E10583F4(&qword_1ECE8A2C0, type metadata accessor for EventAttributes.Time);
  sub_1E10AE8AC();
  v31 = *(v3 + v26[10]);
  HIBYTE(v30) = 6;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A710, &qword_1E10B66E8);
  sub_1E1058678(&qword_1ECE8A788, sub_1E10586F0);
  v46 = v28;
  sub_1E10AE85C();
  v31 = *(v3 + v26[11]);
  HIBYTE(v30) = 7;
  sub_1E10AE85C();
  v29 = *(v3 + v26[12]);
  LOBYTE(v31) = 8;
  sub_1E10AE87C();
  return (*(v15 + 8))(v11, v5);
}

uint64_t sub_1E1056B7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = type metadata accessor for EventAttributes.Time(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A720, &qword_1E10B69D0);
  v39 = *(v9 - 8);
  v40 = v9;
  v10 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v36 - v13;
  v15 = type metadata accessor for PartialEventResource(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E10581D0();
  v41 = v14;
  v22 = v42;
  sub_1E10AEA3C();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v37 = v3;
  v23 = v8;
  v24 = v39;
  v42 = v15;
  LOBYTE(v43) = 0;
  sub_1E0FF4EE4();
  v25 = v40;
  sub_1E10AE7FC();
  v26 = *(&v44 + 1);
  *v20 = v44;
  *(v20 + 1) = v26;
  LOBYTE(v43) = 1;
  sub_1E10582A4();
  sub_1E10AE7FC();
  v27 = v45;
  *(v20 + 1) = v44;
  *(v20 + 2) = v27;
  LOBYTE(v43) = 2;
  sub_1E10582F8();
  v36 = 0;
  sub_1E10AE7FC();
  v28 = v45;
  v29 = v46;
  *(v20 + 3) = v44;
  *(v20 + 4) = v28;
  *(v20 + 5) = v29;
  LOBYTE(v43) = 3;
  sub_1E105834C();
  sub_1E10AE7AC();
  v30 = v45;
  *(v20 + 6) = v44;
  *(v20 + 7) = v30;
  *(v20 + 8) = v46;
  v49 = 4;
  sub_1E10583A0();
  sub_1E10AE7FC();
  v31 = v45;
  *(v20 + 9) = v44;
  *(v20 + 10) = v31;
  v32 = v47;
  *(v20 + 11) = v46;
  *(v20 + 12) = v32;
  LOBYTE(v43) = 5;
  sub_1E10583F4(&qword_1ECE8A298, type metadata accessor for EventAttributes.Time);
  sub_1E10AE7FC();
  LODWORD(v37) = 1;
  sub_1E105BC68(v23, &v20[v42[9]], type metadata accessor for EventAttributes.Time);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A710, &qword_1E10B66E8);
  v48 = 6;
  sub_1E1058678(&qword_1ECE8A750, sub_1E105843C);
  sub_1E10AE7AC();
  *&v20[v42[10]] = v43;
  v48 = 7;
  sub_1E10AE7AC();
  v33 = v42;
  *&v20[v42[11]] = v43;
  LOBYTE(v43) = 8;
  v34 = sub_1E10AE7CC();
  (*(v24 + 8))(v41, v25);
  v20[v33[12]] = v34 & 1;
  sub_1E105BCD0(v20, v38, type metadata accessor for PartialEventResource);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E1058490(v20, type metadata accessor for PartialEventResource);
}

uint64_t sub_1E1057318(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AAD8, &qword_1E10B72F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v17[-v10];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E105C840();
  sub_1E10AEA5C();
  LOBYTE(v18) = 0;
  sub_1E10ADCBC();
  sub_1E10583F4(&qword_1EE17FF68, MEMORY[0x1E6969530]);
  sub_1E10AE8AC();
  if (!v2)
  {
    v13 = (v3 + *(type metadata accessor for PartialEventResource.Version(0) + 20));
    v15 = *v13;
    v14 = v13[1];
    v18 = v15;
    v19 = v14;
    v17[15] = 1;
    sub_1E0FF4F38();
    sub_1E10AE8AC();
  }

  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_1E10574EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v39 = sub_1E10ADCBC();
  v36 = *(v39 - 8);
  v4 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AAD0, &qword_1E10B72F0);
  v10 = *(v9 - 8);
  v37 = v9;
  v38 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v32 - v14;
  v16 = type metadata accessor for PartialEventResource.Version(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E105C840();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v34 = v16;
  v23 = v21;
  v24 = v36;
  LOBYTE(v40) = 0;
  sub_1E10583F4(&qword_1EE180178, MEMORY[0x1E6969530]);
  v25 = v39;
  v26 = v37;
  sub_1E10AE7FC();
  v27 = *(v24 + 32);
  v33 = v23;
  v27(v23, v8, v25);
  v42 = 1;
  sub_1E0FF4EE4();
  sub_1E10AE7FC();
  (*(v38 + 8))(v15, v26);
  v28 = v41;
  v29 = v33;
  v30 = (v33 + *(v34 + 20));
  *v30 = v40;
  v30[1] = v28;
  sub_1E105BCD0(v29, v35, type metadata accessor for PartialEventResource.Version);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E1058490(v29, type metadata accessor for PartialEventResource.Version);
}

uint64_t sub_1E1057880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E105C510(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E10578B4(uint64_t a1)
{
  v2 = sub_1E10581D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E10578F0(uint64_t a1)
{
  v2 = sub_1E10581D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E105795C()
{
  if (*v0)
  {
    result = 0x6E6F6973726576;
  }

  else
  {
    result = 1702125924;
  }

  *v0;
  return result;
}

uint64_t sub_1E1057990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v5 || (sub_1E10AE8FC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E10AE8FC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E1057A6C(uint64_t a1)
{
  v2 = sub_1E105C840();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1057AA8(uint64_t a1)
{
  v2 = sub_1E105C840();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E1057B14(double *a1, uint64_t a2, _BYTE *a3)
{
  v82 = a3;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A808, &qword_1E10B6A30) - 8) + 64);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v72[-v9];
  v84 = type metadata accessor for GeoXPCRequestContainer.Payload(0);
  v11 = *(*(v84 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v72[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v89 = sub_1E10ADCBC();
  v85 = *(v89 - 8);
  v16 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v17, v18);
  v83 = &v72[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v72[-v22];
  MEMORY[0x1EEE9AC00](v24, v25);
  v88 = &v72[-v26];
  v27 = sub_1E10ADACC();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v30, v31);
  v86 = &v72[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v72[-v35];
  v37 = *(a1 + 6);
  v38 = *(a1 + 7);
  sub_1E10AE06C();
  v39 = sub_1E10A215C();
  if (v39 == 8)
  {
    return 0;
  }

  v81 = v3;
  v73 = sub_1E1054B80(v39, a2);
  v41 = a1[24];
  v42 = a1[25];
  v43 = objc_allocWithZone(MEMORY[0x1E6985C40]);
  v77 = a1;
  v44 = [v43 initWithLatitude:v41 longitude:v42];
  v87 = v27;
  v45 = &v82[OBJC_IVAR____TtC12ShazamEvents22GeoXPCRequestContainer_payload];
  v78 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:*&v82[OBJC_IVAR____TtC12ShazamEvents22GeoXPCRequestContainer_payload] longitude:*&v82[OBJC_IVAR____TtC12ShazamEvents22GeoXPCRequestContainer_payload + 8]];
  v79 = v44;
  [v44 distanceFromLocation_];
  v47 = v46;
  v48 = *(v45 + 16);
  v80 = v36;
  v75 = type metadata accessor for GeoXPCRequestContainer.Payload;
  sub_1E105BCD0(v45, v15, type metadata accessor for GeoXPCRequestContainer.Payload);
  v82 = v10;
  v49 = v84;
  v50 = *(v84 + 28);
  sub_1E10ADAAC();
  v76 = v28;
  v52 = (v28 + 8);
  v51 = *(v28 + 8);
  v51(&v15[v50], v87);
  sub_1E10ADC2C();
  v53 = v85;
  v74 = *(v85 + 8);
  v74(v23, v89);
  sub_1E105BCD0(v45, v15, v75);
  v54 = *(v49 + 28);
  v55 = v83;
  sub_1E10ADA8C();
  v56 = &v15[v54];
  v57 = v87;
  v84 = v51;
  v75 = v52;
  v51(v56, v87);
  sub_1E10ADC2C();
  v58 = v55;
  v59 = v89;
  v74(v58, v89);
  v60 = v82;
  v61 = v80;
  v62 = v88;
  sub_1E10ADA9C();
  v63 = v77 + *(type metadata accessor for PartialEventResource(0) + 36);
  v64 = *(v53 + 16);
  v64(v62, v63, v59);
  v65 = type metadata accessor for EventAttributes.Time(0);
  v64(v23, &v63[*(v65 + 20)], v59);
  v66 = v86;
  sub_1E10ADA9C();
  sub_1E10ADA6C();
  if ((*(v76 + 48))(v60, 1, v57) == 1)
  {

    v67 = v84;
    (v84)(v66, v57);
    v67(v61, v57);
    sub_1E0FF0440(v60, &qword_1ECE8A808, &qword_1E10B6A30);
    return 0;
  }

  else
  {
    v68 = v47 <= v48;
    sub_1E10ADABC();
    v70 = v69;

    v71 = v84;
    (v84)(v66, v57);
    v71(v61, v57);
    v71(v60, v57);
    if (v70 > 0.0)
    {
      return v73 & v68;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1E10580CC()
{
  sub_1E10AE9CC();
  v1 = *v0;
  v2 = v0[1];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  return sub_1E10AEA0C();
}

uint64_t sub_1E1058110()
{
  v1 = *v0;
  v2 = v0[1];
  return _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1E1058118()
{
  sub_1E10AE9CC();
  v1 = *v0;
  v2 = v0[1];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  return sub_1E10AEA0C();
}

uint64_t sub_1E1058158(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1E10AE8FC();
  }
}

unint64_t sub_1E10581D0()
{
  result = qword_1ECE8A728;
  if (!qword_1ECE8A728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A728);
  }

  return result;
}

uint64_t sub_1E1058254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

unint64_t sub_1E10582A4()
{
  result = qword_1ECE8A730;
  if (!qword_1ECE8A730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A730);
  }

  return result;
}

unint64_t sub_1E10582F8()
{
  result = qword_1ECE8A738;
  if (!qword_1ECE8A738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A738);
  }

  return result;
}

unint64_t sub_1E105834C()
{
  result = qword_1ECE8A740;
  if (!qword_1ECE8A740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A740);
  }

  return result;
}

unint64_t sub_1E10583A0()
{
  result = qword_1ECE8A748;
  if (!qword_1ECE8A748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A748);
  }

  return result;
}

uint64_t sub_1E10583F4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E105843C()
{
  result = qword_1ECE8A758;
  if (!qword_1ECE8A758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A758);
  }

  return result;
}

uint64_t sub_1E1058490(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E10584F0()
{
  result = qword_1ECE8A768;
  if (!qword_1ECE8A768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A768);
  }

  return result;
}

unint64_t sub_1E1058544()
{
  result = qword_1ECE8A770;
  if (!qword_1ECE8A770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A770);
  }

  return result;
}

unint64_t sub_1E1058598()
{
  result = qword_1ECE8A778;
  if (!qword_1ECE8A778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A778);
  }

  return result;
}

unint64_t sub_1E1058624()
{
  result = qword_1ECE8A780;
  if (!qword_1ECE8A780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A780);
  }

  return result;
}

uint64_t sub_1E1058678(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8A710, &qword_1E10B66E8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E10586F0()
{
  result = qword_1ECE8A790;
  if (!qword_1ECE8A790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A790);
  }

  return result;
}

char *sub_1E1058744(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89768, &qword_1E10B3278);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E1058850(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A918, &qword_1E10B6BC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1E1058AB8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1E1058CF8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89C98, &qword_1E10B6BD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E1058E04(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A810, &qword_1E10B6A38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_1E1058EF8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_1E1059020(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 1;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 5);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[32 * v10])
    {
      memmove(v15, v16, 32 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_1E1059150(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A870, &qword_1E10B6AA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E1059280(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A890, &qword_1E10B6AD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E10593D4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A8A8, &qword_1E10B6B00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E1059518(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A8B8, &qword_1E10B6B18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1E1059680(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A8D8, &qword_1E10B6B48);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 144);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[18 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 144 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88CE0, &qword_1E10B6B50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1E1059860(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_1E1059A48(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AA30, &qword_1E10B6CA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E1059B54(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A888, &qword_1E10B6AD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E1059C7C(char *a1, int64_t a2, char a3)
{
  result = sub_1E1059EF8(a1, a2, a3, *v3, &qword_1ECE8A818, &qword_1E10B6A40);
  *v3 = result;
  return result;
}

char *sub_1E1059CB4(char *a1, int64_t a2, char a3)
{
  result = sub_1E1059EF8(a1, a2, a3, *v3, &qword_1ECE8A928, &qword_1E10B6BD8);
  *v3 = result;
  return result;
}

char *sub_1E1059CEC(char *a1, int64_t a2, char a3)
{
  result = sub_1E105A004(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1E1059D0C(size_t a1, int64_t a2, char a3)
{
  result = sub_1E105A124(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E1059D2C(char *a1, int64_t a2, char a3)
{
  result = sub_1E105A314(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E1059D4C(char *a1, int64_t a2, char a3)
{
  result = sub_1E105A420(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1E1059D6C(size_t a1, int64_t a2, char a3)
{
  result = sub_1E105A52C(a1, a2, a3, *v3, &qword_1ECE89760, &qword_1E10B3270, type metadata accessor for PartialEventResource);
  *v3 = result;
  return result;
}

size_t sub_1E1059DB0(size_t a1, int64_t a2, char a3)
{
  result = sub_1E105A52C(a1, a2, a3, *v3, &qword_1ECE8A860, &qword_1E10B6A88, type metadata accessor for Ticket);
  *v3 = result;
  return result;
}

char *sub_1E1059DF4(char *a1, int64_t a2, char a3)
{
  result = sub_1E105A730(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E1059E14(char *a1, int64_t a2, char a3)
{
  result = sub_1E105A858(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E1059E34(char *a1, int64_t a2, char a3)
{
  result = sub_1E105A964(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E1059E54(char *a1, int64_t a2, char a3)
{
  result = sub_1E105AA70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E1059E74(char *a1, int64_t a2, char a3)
{
  result = sub_1E105AB90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E1059E94(char *a1, int64_t a2, char a3)
{
  result = sub_1E105ACB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1E1059EB4(size_t a1, int64_t a2, char a3)
{
  result = sub_1E105A52C(a1, a2, a3, *v3, &qword_1ECE8A858, &qword_1E10B6A80, type metadata accessor for Music);
  *v3 = result;
  return result;
}

char *sub_1E1059EF8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 1;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 5);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[32 * v10])
    {
      memmove(v15, v16, 32 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_1E105A004(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A920, &qword_1E10B6BC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1E105A124(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A910, &unk_1E10B6BB0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89708, &qword_1E10B31B8) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89708, &qword_1E10B31B8) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1E105A314(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A908, &qword_1E10B6BA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E105A420(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89768, &qword_1E10B3278);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1E105A52C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1E105A730(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A888, &qword_1E10B6AD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}