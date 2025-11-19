uint64_t sub_26C43C4BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for PBUUID(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v32 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v30 - v18;
  if (*v3)
  {
    v20 = *(v3 + 8);
    v34 = *v3;
    v35 = v20;
    sub_26C4554DC();
    v21 = v36;
    result = sub_26C46BEC4();
    if (v21)
    {
      return result;
    }

    v33 = a3;
    v36 = 0;
  }

  else
  {
    v33 = a3;
  }

  v31 = type metadata accessor for OwnershipChangeReplyMessage(0);
  sub_26C3DDD48(v3 + v31[8], v12, &qword_280497458, &unk_26C46D3F0);
  v23 = *(v14 + 48);
  if (v23(v12, 1, v13) == 1)
  {
    sub_26C3DE270(v12, &qword_280497458, &unk_26C46D3F0);
  }

  else
  {
    v30 = v3;
    sub_26C453E5C(v12, v19, type metadata accessor for PBUUID);
    sub_26C4468DC(&qword_280498050, type metadata accessor for PBUUID);
    v24 = v36;
    sub_26C46BF34();
    result = sub_26C453DFC(v19, type metadata accessor for PBUUID);
    if (v24)
    {
      return result;
    }

    v36 = 0;
    v4 = v30;
  }

  sub_26C3DDD48(v4 + v31[9], v10, &qword_280497458, &unk_26C46D3F0);
  if (v23(v10, 1, v13) == 1)
  {
    sub_26C3DE270(v10, &qword_280497458, &unk_26C46D3F0);
    v25 = v36;
  }

  else
  {
    v26 = v10;
    v27 = v32;
    sub_26C453E5C(v26, v32, type metadata accessor for PBUUID);
    sub_26C4468DC(&qword_280498050, type metadata accessor for PBUUID);
    v25 = v36;
    sub_26C46BF34();
    result = sub_26C453DFC(v27, type metadata accessor for PBUUID);
    if (v25)
    {
      return result;
    }
  }

  if (!v4[2] || (v28 = *(v4 + 24), v34 = v4[2], v35 = v28, sub_26C455584(), result = sub_26C46BEC4(), !v25))
  {
    if (!*(v4 + 7) || (result = sub_26C46BF04(), !v25))
    {
      v29 = v4 + v31[7];
      return sub_26C46BD04();
    }
  }

  return result;
}

uint64_t sub_26C43C914@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 28) = 0;
  v4 = a2 + a1[7];
  sub_26C46BD14();
  v5 = a1[8];
  v6 = type metadata accessor for PBUUID(0);
  v9 = *(*(v6 - 8) + 56);
  (v9)((v6 - 8), a2 + v5, 1, 1, v6);
  v7 = a2 + a1[9];

  return v9(v7, 1, 1, v6);
}

uint64_t sub_26C43CA40(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C4468DC(&qword_280498158, type metadata accessor for OwnershipChangeReplyMessage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26C43CAE0(uint64_t a1)
{
  v2 = sub_26C4468DC(&qword_280497F88, type metadata accessor for OwnershipChangeReplyMessage);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26C43CB4C()
{
  sub_26C4468DC(&qword_280497F88, type metadata accessor for OwnershipChangeReplyMessage);

  return sub_26C46BE84();
}

uint64_t sub_26C43CBCC()
{
  v0 = sub_26C46BF74();
  __swift_allocate_value_buffer(v0, qword_280498760);
  __swift_project_value_buffer(v0, qword_280498760);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498098, &qword_26C470BC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980A0, &qword_26C470BC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C46E680;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 2;
  *v6 = "modelType";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26C46BF44();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "modelUUIDPB";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "senderOwnerUUIDPB";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "newOwnerUUIDPB";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "ownershipCounter";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "autoAcceptsOwnershipRequests";
  *(v18 + 1) = 28;
  v18[16] = 2;
  v9();
  return sub_26C46BF54();
}

uint64_t sub_26C43CE98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_26C46BD84();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 4)
      {
        switch(result)
        {
          case 5:
            sub_26C43D024(a1, v5, a2, a3, type metadata accessor for OwnershipChangeBroadcastMessage);
            break;
          case 6:
            sub_26C46BE04();
            break;
          case 7:
            sub_26C46BDA4();
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 2:
            sub_26C4554DC();
            sub_26C46BDB4();
            break;
          case 3:
            sub_26C444304(a1, v5, a2, a3, type metadata accessor for OwnershipChangeBroadcastMessage);
            break;
          case 4:
            sub_26C4443BC(a1, v5, a2, a3, type metadata accessor for OwnershipChangeBroadcastMessage);
            break;
        }
      }

      result = sub_26C46BD84();
    }
  }

  return result;
}

uint64_t sub_26C43D024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *(a5(0) + 40);
  type metadata accessor for PBUUID(0);
  sub_26C4468DC(&qword_280498050, type metadata accessor for PBUUID);
  return sub_26C46BE34();
}

uint64_t sub_26C43D0DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v45 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v43 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v38 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v38 - v13;
  v15 = type metadata accessor for PBUUID(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v41 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v42 = &v38 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v38 - v22;
  if (*v3)
  {
    v24 = *(v3 + 8);
    v46 = *v3;
    v47 = v24;
    sub_26C4554DC();
    v25 = v48;
    result = sub_26C46BEC4();
    if (v25)
    {
      return result;
    }

    v44 = a3;
    v48 = 0;
  }

  else
  {
    v44 = a3;
  }

  v27 = type metadata accessor for OwnershipChangeBroadcastMessage(0);
  sub_26C3DDD48(v4 + v27[8], v14, &qword_280497458, &unk_26C46D3F0);
  v28 = *(v16 + 48);
  if (v28(v14, 1, v15) == 1)
  {
    sub_26C3DE270(v14, &qword_280497458, &unk_26C46D3F0);
  }

  else
  {
    v39 = v4;
    v40 = v27;
    sub_26C453E5C(v14, v23, type metadata accessor for PBUUID);
    sub_26C4468DC(&qword_280498050, type metadata accessor for PBUUID);
    v29 = v48;
    sub_26C46BF34();
    result = sub_26C453DFC(v23, type metadata accessor for PBUUID);
    if (v29)
    {
      return result;
    }

    v48 = 0;
    v4 = v39;
    v27 = v40;
  }

  sub_26C3DDD48(v4 + v27[9], v12, &qword_280497458, &unk_26C46D3F0);
  if (v28(v12, 1, v15) == 1)
  {
    sub_26C3DE270(v12, &qword_280497458, &unk_26C46D3F0);
  }

  else
  {
    v40 = v27;
    v30 = v12;
    v31 = v42;
    sub_26C453E5C(v30, v42, type metadata accessor for PBUUID);
    sub_26C4468DC(&qword_280498050, type metadata accessor for PBUUID);
    v32 = v48;
    sub_26C46BF34();
    result = sub_26C453DFC(v31, type metadata accessor for PBUUID);
    if (v32)
    {
      return result;
    }

    v48 = 0;
    v27 = v40;
  }

  v33 = v43;
  sub_26C3DDD48(v4 + v27[10], v43, &qword_280497458, &unk_26C46D3F0);
  if (v28(v33, 1, v15) != 1)
  {
    v35 = v4;
    v36 = v41;
    sub_26C453E5C(v33, v41, type metadata accessor for PBUUID);
    sub_26C4468DC(&qword_280498050, type metadata accessor for PBUUID);
    v34 = v48;
    sub_26C46BF34();
    result = sub_26C453DFC(v36, type metadata accessor for PBUUID);
    if (v34)
    {
      return result;
    }

    v4 = v35;
    if (!*(v35 + 3))
    {
      goto LABEL_19;
    }

LABEL_18:
    result = sub_26C46BF04();
    if (v34)
    {
      return result;
    }

    goto LABEL_19;
  }

  sub_26C3DE270(v33, &qword_280497458, &unk_26C46D3F0);
  v34 = v48;
  if (*(v4 + 3))
  {
    goto LABEL_18;
  }

LABEL_19:
  if (*(v4 + 16) != 1 || (result = sub_26C46BEB4(), !v34))
  {
    v37 = v4 + v27[7];
    return sub_26C46BD04();
  }

  return result;
}

uint64_t sub_26C43D694@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  v4 = a2 + a1[7];
  sub_26C46BD14();
  v5 = a1[8];
  v6 = type metadata accessor for PBUUID(0);
  v9 = *(*(v6 - 8) + 56);
  (v9)((v6 - 8), a2 + v5, 1, 1, v6);
  v9(a2 + a1[9], 1, 1, v6);
  v7 = a2 + a1[10];

  return (v9)(v7, 1, 1, v6);
}

uint64_t sub_26C43D7D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C4468DC(&qword_280498168, type metadata accessor for OwnershipChangeBroadcastMessage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26C43D878(uint64_t a1)
{
  v2 = sub_26C4468DC(&qword_280497F68, type metadata accessor for OwnershipChangeBroadcastMessage);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26C43D8E4()
{
  sub_26C4468DC(&qword_280497F68, type metadata accessor for OwnershipChangeBroadcastMessage);

  return sub_26C46BE84();
}

uint64_t sub_26C43D964()
{
  v0 = sub_26C46BF74();
  __swift_allocate_value_buffer(v0, qword_280498778);
  __swift_project_value_buffer(v0, qword_280498778);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498098, &qword_26C470BC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980A0, &qword_26C470BC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C46E660;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 2;
  *v6 = "modelType";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26C46BF44();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "modelUUIDPB";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "prospectiveOwnerUUIDPB";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "ownershipCounter";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 6;
  *v15 = "requestUUIDPB";
  *(v15 + 8) = 13;
  *(v15 + 16) = 2;
  v9();
  return sub_26C46BF54();
}

uint64_t sub_26C43DBF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_26C46BD84();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result <= 3)
      {
        if (result == 2)
        {
          sub_26C4554DC();
          sub_26C46BDB4();
        }

        else if (result == 3)
        {
          sub_26C445EA4(a1, v5, a2, a3, type metadata accessor for OwnershipHandoffRequestMessage);
        }
      }

      else
      {
        switch(result)
        {
          case 4:
            sub_26C444304(a1, v5, a2, a3, type metadata accessor for OwnershipHandoffRequestMessage);
            break;
          case 5:
            sub_26C46BE04();
            break;
          case 6:
            sub_26C4443BC(a1, v5, a2, a3, type metadata accessor for OwnershipHandoffRequestMessage);
            break;
        }
      }

      result = sub_26C46BD84();
    }
  }

  return result;
}

uint64_t sub_26C43DD64(uint64_t a1)
{
  v2 = v1;
  v41 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v40 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v35 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = v35 - v10;
  v12 = type metadata accessor for PBUUID(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v37 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v39 = v35 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = v35 - v19;
  if (*v2)
  {
    v21 = *(v2 + 8);
    v42 = *v2;
    v43 = v21;
    sub_26C4554DC();
    v22 = v44;
    result = sub_26C46BEC4();
    if (v22)
    {
      return result;
    }

    v44 = 0;
  }

  v24 = type metadata accessor for OwnershipHandoffRequestMessage(0);
  sub_26C3DDD48(v2 + v24[7], v11, &qword_280497458, &unk_26C46D3F0);
  v26 = *(v13 + 48);
  v25 = v13 + 48;
  v38 = v26;
  if (v26(v11, 1, v12) == 1)
  {
    sub_26C3DE270(v11, &qword_280497458, &unk_26C46D3F0);
  }

  else
  {
    v35[1] = v25;
    v36 = v2;
    sub_26C453E5C(v11, v20, type metadata accessor for PBUUID);
    sub_26C4468DC(&qword_280498050, type metadata accessor for PBUUID);
    v27 = v44;
    sub_26C46BF34();
    result = sub_26C453DFC(v20, type metadata accessor for PBUUID);
    if (v27)
    {
      return result;
    }

    v44 = 0;
    v2 = v36;
  }

  sub_26C3DDD48(v2 + v24[8], v9, &qword_280497458, &unk_26C46D3F0);
  if (v38(v9, 1, v12) != 1)
  {
    v30 = v2;
    v31 = v39;
    sub_26C453E5C(v9, v39, type metadata accessor for PBUUID);
    sub_26C4468DC(&qword_280498050, type metadata accessor for PBUUID);
    v28 = v44;
    sub_26C46BF34();
    result = sub_26C453DFC(v31, type metadata accessor for PBUUID);
    if (v28)
    {
      return result;
    }

    v2 = v30;
    v29 = v40;
    if (*(v2 + 3))
    {
      goto LABEL_10;
    }

LABEL_14:
    v44 = v28;
    goto LABEL_15;
  }

  sub_26C3DE270(v9, &qword_280497458, &unk_26C46D3F0);
  v28 = v44;
  v29 = v40;
  if (!*(v2 + 3))
  {
    goto LABEL_14;
  }

LABEL_10:
  result = sub_26C46BF04();
  if (v28)
  {
    return result;
  }

  v44 = 0;
LABEL_15:
  sub_26C3DDD48(v2 + v24[9], v29, &qword_280497458, &unk_26C46D3F0);
  if (v38(v29, 1, v12) == 1)
  {
    sub_26C3DE270(v29, &qword_280497458, &unk_26C46D3F0);
  }

  else
  {
    v32 = v37;
    sub_26C453E5C(v29, v37, type metadata accessor for PBUUID);
    sub_26C4468DC(&qword_280498050, type metadata accessor for PBUUID);
    v33 = v44;
    sub_26C46BF34();
    result = sub_26C453DFC(v32, type metadata accessor for PBUUID);
    if (v33)
    {
      return result;
    }
  }

  v34 = v2 + v24[6];
  return sub_26C46BD04();
}

uint64_t sub_26C43E324@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 12) = 0;
  v4 = a2 + a1[6];
  sub_26C46BD14();
  v5 = a1[7];
  v6 = type metadata accessor for PBUUID(0);
  v9 = *(*(v6 - 8) + 56);
  (v9)((v6 - 8), a2 + v5, 1, 1, v6);
  v9(a2 + a1[8], 1, 1, v6);
  v7 = a2 + a1[9];

  return (v9)(v7, 1, 1, v6);
}

uint64_t sub_26C43E46C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C4468DC(&qword_280498170, type metadata accessor for OwnershipHandoffRequestMessage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26C43E50C(uint64_t a1)
{
  v2 = sub_26C4468DC(&qword_280497F48, type metadata accessor for OwnershipHandoffRequestMessage);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26C43E578()
{
  sub_26C4468DC(&qword_280497F48, type metadata accessor for OwnershipHandoffRequestMessage);

  return sub_26C46BE84();
}

uint64_t sub_26C43E5F8()
{
  v0 = sub_26C46BF74();
  __swift_allocate_value_buffer(v0, qword_280498790);
  __swift_project_value_buffer(v0, qword_280498790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498098, &qword_26C470BC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980A0, &qword_26C470BC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C46E660;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 2;
  *v6 = "modelType";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26C46BF44();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "modelUUIDPB";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "prospectiveOwnerUUIDPB";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "handoffAllowed";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 6;
  *v15 = "requestUUIDPB";
  *(v15 + 8) = 13;
  *(v15 + 16) = 2;
  v9();
  return sub_26C46BF54();
}

uint64_t sub_26C43E88C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_26C46BD84();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result <= 3)
      {
        if (result == 2)
        {
          sub_26C4554DC();
          sub_26C46BDB4();
        }

        else if (result == 3)
        {
          sub_26C445EA4(a1, v5, a2, a3, type metadata accessor for OwnershipHandoffReplyMessage);
        }
      }

      else
      {
        switch(result)
        {
          case 4:
            sub_26C444304(a1, v5, a2, a3, type metadata accessor for OwnershipHandoffReplyMessage);
            break;
          case 5:
            sub_26C46BDA4();
            break;
          case 6:
            sub_26C4443BC(a1, v5, a2, a3, type metadata accessor for OwnershipHandoffReplyMessage);
            break;
        }
      }

      result = sub_26C46BD84();
    }
  }

  return result;
}

uint64_t sub_26C43E9F8(uint64_t a1)
{
  v2 = v1;
  v41 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v40 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v35 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = v35 - v10;
  v12 = type metadata accessor for PBUUID(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v37 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v38 = v35 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = v35 - v19;
  if (*v2)
  {
    v21 = *(v2 + 8);
    v42 = *v2;
    v43 = v21;
    sub_26C4554DC();
    v22 = v44;
    result = sub_26C46BEC4();
    if (v22)
    {
      return result;
    }

    v44 = 0;
  }

  v24 = type metadata accessor for OwnershipHandoffReplyMessage(0);
  sub_26C3DDD48(v2 + v24[7], v11, &qword_280497458, &unk_26C46D3F0);
  v26 = *(v13 + 48);
  v25 = v13 + 48;
  v39 = v26;
  if (v26(v11, 1, v12) == 1)
  {
    sub_26C3DE270(v11, &qword_280497458, &unk_26C46D3F0);
  }

  else
  {
    v35[1] = v25;
    v36 = v2;
    sub_26C453E5C(v11, v20, type metadata accessor for PBUUID);
    sub_26C4468DC(&qword_280498050, type metadata accessor for PBUUID);
    v27 = v44;
    sub_26C46BF34();
    result = sub_26C453DFC(v20, type metadata accessor for PBUUID);
    if (v27)
    {
      return result;
    }

    v44 = 0;
    v2 = v36;
  }

  sub_26C3DDD48(v2 + v24[8], v9, &qword_280497458, &unk_26C46D3F0);
  if (v39(v9, 1, v12) == 1)
  {
    sub_26C3DE270(v9, &qword_280497458, &unk_26C46D3F0);
    v28 = v44;
    v29 = v40;
  }

  else
  {
    v30 = v2;
    v31 = v38;
    sub_26C453E5C(v9, v38, type metadata accessor for PBUUID);
    sub_26C4468DC(&qword_280498050, type metadata accessor for PBUUID);
    v28 = v44;
    sub_26C46BF34();
    result = sub_26C453DFC(v31, type metadata accessor for PBUUID);
    if (v28)
    {
      return result;
    }

    v2 = v30;
    v29 = v40;
  }

  if (*(v2 + 9) == 1)
  {
    result = sub_26C46BEB4();
    if (v28)
    {
      return result;
    }

    v44 = 0;
  }

  else
  {
    v44 = v28;
  }

  sub_26C3DDD48(v2 + v24[9], v29, &qword_280497458, &unk_26C46D3F0);
  if (v39(v29, 1, v12) == 1)
  {
    sub_26C3DE270(v29, &qword_280497458, &unk_26C46D3F0);
  }

  else
  {
    v32 = v37;
    sub_26C453E5C(v29, v37, type metadata accessor for PBUUID);
    sub_26C4468DC(&qword_280498050, type metadata accessor for PBUUID);
    v33 = v44;
    sub_26C46BF34();
    result = sub_26C453DFC(v32, type metadata accessor for PBUUID);
    if (v33)
    {
      return result;
    }
  }

  v34 = v2 + v24[6];
  return sub_26C46BD04();
}

uint64_t sub_26C43EFBC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  v4 = a2 + a1[6];
  sub_26C46BD14();
  v5 = a1[7];
  v6 = type metadata accessor for PBUUID(0);
  v9 = *(*(v6 - 8) + 56);
  (v9)((v6 - 8), a2 + v5, 1, 1, v6);
  v9(a2 + a1[8], 1, 1, v6);
  v7 = a2 + a1[9];

  return (v9)(v7, 1, 1, v6);
}

uint64_t sub_26C43F0F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C4468DC(&qword_280498178, type metadata accessor for OwnershipHandoffReplyMessage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26C43F198(uint64_t a1)
{
  v2 = sub_26C4468DC(&qword_280497F28, type metadata accessor for OwnershipHandoffReplyMessage);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26C43F204()
{
  sub_26C4468DC(&qword_280497F28, type metadata accessor for OwnershipHandoffReplyMessage);

  return sub_26C46BE84();
}

uint64_t sub_26C43F284()
{
  v0 = sub_26C46BF74();
  __swift_allocate_value_buffer(v0, qword_2804987A8);
  __swift_project_value_buffer(v0, qword_2804987A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498098, &qword_26C470BC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980A0, &qword_26C470BC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C46E620;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26C46BF44();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "propertyID";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "newValueData";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v9();
  return sub_26C46BF54();
}

uint64_t sub_26C43F498()
{
  while (1)
  {
    result = sub_26C46BD84();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_26C43F600();
        break;
      case 2:
        sub_26C46BE04();
        break;
      case 1:
        sub_26C43F54C();
        break;
    }
  }

  return result;
}

uint64_t sub_26C43F54C()
{
  v0 = *(type metadata accessor for PropertyChangedMessage(0) + 24);
  type metadata accessor for LamportTimestamp(0);
  sub_26C4468DC(&qword_280497A90, type metadata accessor for LamportTimestamp);
  return sub_26C46BE34();
}

uint64_t sub_26C43F600()
{
  v0 = *(type metadata accessor for PropertyChangedMessage(0) + 28);
  type metadata accessor for ValueData(0);
  sub_26C4468DC(&qword_280497DE0, type metadata accessor for ValueData);
  return sub_26C46BE34();
}

uint64_t sub_26C43F6B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v33 = a2;
  v34 = a3;
  v32 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497470, &unk_26C46E870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v31 = &v27 - v7;
  v8 = type metadata accessor for ValueData(0);
  v29 = *(v8 - 8);
  v30 = v8;
  v9 = *(v29 + 64);
  MEMORY[0x28223BE20](v8);
  v28 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v27 - v13;
  v15 = type metadata accessor for LamportTimestamp(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PropertyChangedMessage(0);
  sub_26C3DDD48(v4 + v20[6], v14, &qword_280497468, &unk_26C46D400);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_26C3DE270(v14, &qword_280497468, &unk_26C46D400);
    v21 = v35;
  }

  else
  {
    sub_26C453E5C(v14, v19, type metadata accessor for LamportTimestamp);
    sub_26C4468DC(&qword_280497A90, type metadata accessor for LamportTimestamp);
    v21 = v35;
    sub_26C46BF34();
    result = sub_26C453DFC(v19, type metadata accessor for LamportTimestamp);
    if (v21)
    {
      return result;
    }
  }

  v23 = v31;
  if (!*v4 || (result = sub_26C46BF04(), !v21))
  {
    sub_26C3DDD48(v4 + v20[7], v23, &qword_280497470, &unk_26C46E870);
    if ((*(v29 + 48))(v23, 1, v30) == 1)
    {
      sub_26C3DE270(v23, &qword_280497470, &unk_26C46E870);
    }

    else
    {
      v24 = v23;
      v25 = v28;
      sub_26C453E5C(v24, v28, type metadata accessor for ValueData);
      sub_26C4468DC(&qword_280497DE0, type metadata accessor for ValueData);
      sub_26C46BF34();
      result = sub_26C453DFC(v25, type metadata accessor for ValueData);
      if (v21)
      {
        return result;
      }
    }

    v26 = v4 + v20[5];
    return sub_26C46BD04();
  }

  return result;
}

uint64_t sub_26C43FB04@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  v4 = &a2[a1[5]];
  sub_26C46BD14();
  v5 = a1[6];
  v6 = type metadata accessor for LamportTimestamp(0);
  (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  v7 = a1[7];
  v8 = type metadata accessor for ValueData(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(&a2[v7], 1, 1, v8);
}

uint64_t sub_26C43FC20(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C4468DC(&qword_280498180, type metadata accessor for PropertyChangedMessage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26C43FCC0(uint64_t a1)
{
  v2 = sub_26C4468DC(&qword_280497F08, type metadata accessor for PropertyChangedMessage);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26C43FD2C()
{
  sub_26C4468DC(&qword_280497F08, type metadata accessor for PropertyChangedMessage);

  return sub_26C46BE84();
}

uint64_t sub_26C43FDAC()
{
  v0 = sub_26C46BF74();
  __swift_allocate_value_buffer(v0, qword_2804987C0);
  __swift_project_value_buffer(v0, qword_2804987C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498098, &qword_26C470BC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980A0, &qword_26C470BC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C46E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26C46BF44();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "propertyID";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "addedData";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "removedData";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return sub_26C46BF54();
}

uint64_t sub_26C43FFF4()
{
  result = sub_26C46BD84();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3 || result == 4)
        {
          type metadata accessor for ValueData(0);
          sub_26C4468DC(&qword_280497DE0, type metadata accessor for ValueData);
          sub_26C46BE14();
        }
      }

      else if (result == 1)
      {
        sub_26C440170();
      }

      else if (result == 2)
      {
        sub_26C46BE04();
      }

      result = sub_26C46BD84();
    }
  }

  return result;
}

uint64_t sub_26C440170()
{
  v0 = *(type metadata accessor for SetChangedMessage(0) + 32);
  type metadata accessor for LamportTimestamp(0);
  sub_26C4468DC(&qword_280497A90, type metadata accessor for LamportTimestamp);
  return sub_26C46BE34();
}

uint64_t sub_26C440224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for LamportTimestamp(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SetChangedMessage(0);
  v19 = v3;
  sub_26C3DDD48(v3 + *(v18 + 32), v7, &qword_280497468, &unk_26C46D400);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_26C3DE270(v7, &qword_280497468, &unk_26C46D400);
    v13 = v21;
  }

  else
  {
    sub_26C453E5C(v7, v12, type metadata accessor for LamportTimestamp);
    sub_26C4468DC(&qword_280497A90, type metadata accessor for LamportTimestamp);
    v13 = v21;
    sub_26C46BF34();
    result = sub_26C453DFC(v12, type metadata accessor for LamportTimestamp);
    if (v13)
    {
      return result;
    }
  }

  v15 = v19;
  if (!*v19 || (result = sub_26C46BF04(), !v13))
  {
    if (!*(*(v15 + 1) + 16) || (type metadata accessor for ValueData(0), sub_26C4468DC(&qword_280497DE0, type metadata accessor for ValueData), result = sub_26C46BF14(), !v13))
    {
      if (!*(*(v15 + 2) + 16) || (type metadata accessor for ValueData(0), sub_26C4468DC(&qword_280497DE0, type metadata accessor for ValueData), result = sub_26C46BF14(), !v13))
      {
        v16 = v15 + *(v18 + 28);
        return sub_26C46BD04();
      }
    }
  }

  return result;
}

uint64_t sub_26C440590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  v4 = MEMORY[0x277D84F90];
  *(a2 + 8) = MEMORY[0x277D84F90];
  *(a2 + 16) = v4;
  v5 = a2 + *(a1 + 28);
  sub_26C46BD14();
  v6 = *(a1 + 32);
  v7 = type metadata accessor for LamportTimestamp(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_26C44066C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C4468DC(&qword_280498188, type metadata accessor for SetChangedMessage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26C44070C(uint64_t a1)
{
  v2 = sub_26C4468DC(&qword_280497EE8, type metadata accessor for SetChangedMessage);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26C440778()
{
  sub_26C4468DC(&qword_280497EE8, type metadata accessor for SetChangedMessage);

  return sub_26C46BE84();
}

uint64_t sub_26C4407F8()
{
  v0 = sub_26C46BF74();
  __swift_allocate_value_buffer(v0, qword_2804987D8);
  __swift_project_value_buffer(v0, qword_2804987D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498098, &qword_26C470BC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980A0, &qword_26C470BC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_26C46E690;
  v4 = v26 + v3;
  v5 = v26 + v3 + v1[14];
  *(v26 + v3) = 1;
  *v5 = "ownershipUUIDPB";
  *(v5 + 8) = 15;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_26C46BF44();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "propertyID";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "removedKeys";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "removedTimestamps";
  *(v13 + 1) = 17;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "changedKeys";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "changedValues";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "changedTimestamps";
  *(v19 + 1) = 17;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "addedKeys";
  *(v21 + 1) = 9;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "addedValues";
  *(v22 + 8) = 11;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "addedTimestamps";
  *(v24 + 1) = 15;
  v24[16] = 2;
  v8();
  return sub_26C46BF54();
}

uint64_t sub_26C440BB4()
{
  result = sub_26C46BD84();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 5)
      {
        if (result <= 7)
        {
          if (result != 6)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (result == 8)
          {
LABEL_4:
            sub_26C46BDC4();
            goto LABEL_5;
          }

          if (result != 9)
          {
            if (result != 10)
            {
              goto LABEL_5;
            }

            goto LABEL_24;
          }
        }

        type metadata accessor for ValueData(0);
        sub_26C4468DC(&qword_280497DE0, type metadata accessor for ValueData);
        sub_26C46BE14();
      }

      else
      {
        if (result > 2)
        {
          if (result != 4)
          {
            goto LABEL_4;
          }

LABEL_24:
          sub_26C46BDE4();
          goto LABEL_5;
        }

        if (result == 1)
        {
          sub_26C440DC0();
        }

        else if (result == 2)
        {
          sub_26C46BE04();
        }
      }

LABEL_5:
      result = sub_26C46BD84();
    }
  }

  return result;
}

uint64_t sub_26C440DC0()
{
  v0 = *(type metadata accessor for DictionaryChangedMessage(0) + 56);
  type metadata accessor for PBUUID(0);
  sub_26C4468DC(&qword_280498050, type metadata accessor for PBUUID);
  return sub_26C46BE34();
}

uint64_t sub_26C440E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for PBUUID(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DictionaryChangedMessage(0);
  v19 = v3;
  sub_26C3DDD48(v3 + *(v18 + 56), v7, &qword_280497458, &unk_26C46D3F0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_26C3DE270(v7, &qword_280497458, &unk_26C46D3F0);
    v13 = v21;
  }

  else
  {
    sub_26C453E5C(v7, v12, type metadata accessor for PBUUID);
    sub_26C4468DC(&qword_280498050, type metadata accessor for PBUUID);
    v13 = v21;
    sub_26C46BF34();
    result = sub_26C453DFC(v12, type metadata accessor for PBUUID);
    if (v13)
    {
      return result;
    }
  }

  v15 = v19;
  if (!*v19 || (result = sub_26C46BF04(), !v13))
  {
    if (!*(v15[1] + 16) || (result = sub_26C46BED4(), !v13))
    {
      if (!*(v15[2] + 16) || (result = sub_26C46BEA4(), !v13))
      {
        if (!*(v15[3] + 16) || (result = sub_26C46BED4(), !v13))
        {
          if (!*(v15[4] + 16) || (type metadata accessor for ValueData(0), sub_26C4468DC(&qword_280497DE0, type metadata accessor for ValueData), result = sub_26C46BF14(), !v13))
          {
            if (!*(v15[5] + 16) || (result = sub_26C46BEA4(), !v13))
            {
              if (!*(v15[6] + 16) || (result = sub_26C46BED4(), !v13))
              {
                if (!*(v15[7] + 16) || (type metadata accessor for ValueData(0), sub_26C4468DC(&qword_280497DE0, type metadata accessor for ValueData), result = sub_26C46BF14(), !v13))
                {
                  if (!*(v15[8] + 16) || (result = sub_26C46BEA4(), !v13))
                  {
                    v16 = v15 + *(v18 + 52);
                    return sub_26C46BD04();
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_26C4412C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  v4 = MEMORY[0x277D84F90];
  *(a2 + 8) = MEMORY[0x277D84F90];
  *(a2 + 16) = v4;
  *(a2 + 24) = v4;
  *(a2 + 32) = v4;
  *(a2 + 40) = v4;
  *(a2 + 48) = v4;
  *(a2 + 56) = v4;
  *(a2 + 64) = v4;
  v5 = a2 + *(a1 + 52);
  sub_26C46BD14();
  v6 = *(a1 + 56);
  v7 = type metadata accessor for PBUUID(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_26C44137C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = sub_26C46BD24();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_26C4413F0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  v5 = sub_26C46BD24();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_26C441464(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 52);
  return result;
}

uint64_t sub_26C4414B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C4468DC(&qword_280498190, type metadata accessor for DictionaryChangedMessage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26C441558(uint64_t a1)
{
  v2 = sub_26C4468DC(&qword_280497EC8, type metadata accessor for DictionaryChangedMessage);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26C4415C4()
{
  sub_26C4468DC(&qword_280497EC8, type metadata accessor for DictionaryChangedMessage);

  return sub_26C46BE84();
}

uint64_t sub_26C441640()
{
  v0 = sub_26C46BF74();
  __swift_allocate_value_buffer(v0, qword_2804987F0);
  __swift_project_value_buffer(v0, qword_2804987F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498098, &qword_26C470BC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980A0, &qword_26C470BC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C46E630;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "valueData";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26C46BF44();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "timestamp";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_26C46BF54();
}

uint64_t sub_26C441808()
{
  while (1)
  {
    result = sub_26C46BD84();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_26C44189C();
    }

    else if (result == 2)
    {
      sub_26C441950();
    }
  }

  return result;
}

uint64_t sub_26C44189C()
{
  v0 = *(type metadata accessor for PropertyCatchupData(0) + 20);
  type metadata accessor for ValueData(0);
  sub_26C4468DC(&qword_280497DE0, type metadata accessor for ValueData);
  return sub_26C46BE34();
}

uint64_t sub_26C441950()
{
  v0 = *(type metadata accessor for PropertyCatchupData(0) + 24);
  type metadata accessor for LamportTimestamp(0);
  sub_26C4468DC(&qword_280497A90, type metadata accessor for LamportTimestamp);
  return sub_26C46BE34();
}

uint64_t sub_26C441A04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v33 = a2;
  v34 = a3;
  v32 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v27 - v7;
  v9 = type metadata accessor for LamportTimestamp(0);
  v29 = *(v9 - 8);
  v30 = v9;
  v10 = *(v29 + 64);
  MEMORY[0x28223BE20](v9);
  v28 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497470, &unk_26C46E870);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v27 - v14;
  v16 = type metadata accessor for ValueData(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for PropertyCatchupData(0);
  v22 = *(v21 + 20);
  v31 = v4;
  sub_26C3DDD48(v4 + v22, v15, &qword_280497470, &unk_26C46E870);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_26C3DE270(v15, &qword_280497470, &unk_26C46E870);
  }

  else
  {
    sub_26C453E5C(v15, v20, type metadata accessor for ValueData);
    sub_26C4468DC(&qword_280497DE0, type metadata accessor for ValueData);
    v23 = v35;
    sub_26C46BF34();
    result = sub_26C453DFC(v20, type metadata accessor for ValueData);
    if (v23)
    {
      return result;
    }

    v35 = 0;
  }

  sub_26C3DDD48(v31 + *(v21 + 24), v8, &qword_280497468, &unk_26C46D400);
  if ((*(v29 + 48))(v8, 1, v30) == 1)
  {
    sub_26C3DE270(v8, &qword_280497468, &unk_26C46D400);
  }

  else
  {
    v25 = v28;
    sub_26C453E5C(v8, v28, type metadata accessor for LamportTimestamp);
    sub_26C4468DC(&qword_280497A90, type metadata accessor for LamportTimestamp);
    v26 = v35;
    sub_26C46BF34();
    result = sub_26C453DFC(v25, type metadata accessor for LamportTimestamp);
    if (v26)
    {
      return result;
    }
  }

  return sub_26C46BD04();
}

uint64_t sub_26C441E24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_26C46BD14();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for ValueData(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for LamportTimestamp(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_26C441F08@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26C46BD24();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_26C441F74(uint64_t a1)
{
  v3 = sub_26C46BD24();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_26C44200C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C4468DC(&qword_280498198, type metadata accessor for PropertyCatchupData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26C4420AC(uint64_t a1)
{
  v2 = sub_26C4468DC(&qword_2804975A0, type metadata accessor for PropertyCatchupData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26C442118()
{
  sub_26C4468DC(&qword_2804975A0, type metadata accessor for PropertyCatchupData);

  return sub_26C46BE84();
}

uint64_t sub_26C442198()
{
  v0 = sub_26C46BF74();
  __swift_allocate_value_buffer(v0, qword_280498808);
  __swift_project_value_buffer(v0, qword_280498808);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498098, &qword_26C470BC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980A0, &qword_26C470BC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C46E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "dictionaryKeysData";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26C46BF44();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "dictionaryValueData";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "dictionaryTimestamps";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "tombstoneTimestamps";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  return sub_26C46BF54();
}

uint64_t sub_26C4423E0()
{
  result = sub_26C46BD84();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          v3 = v0;
          type metadata accessor for LamportTimestamp(0);
          sub_26C4468DC(&qword_280497A90, type metadata accessor for LamportTimestamp);
LABEL_5:
          v0 = v3;
          sub_26C46BE14();
          goto LABEL_6;
        }

        if (result == 4)
        {
          v3 = v0;
          type metadata accessor for DictionaryCatchupData.TombstoneTimestamp(0);
          sub_26C4468DC(&qword_280497E70, type metadata accessor for DictionaryCatchupData.TombstoneTimestamp);
          goto LABEL_5;
        }
      }

      else if (result == 1)
      {
        sub_26C46BDC4();
      }

      else if (result == 2)
      {
        v3 = v0;
        type metadata accessor for ValueData(0);
        sub_26C4468DC(&qword_280497DE0, type metadata accessor for ValueData);
        goto LABEL_5;
      }

LABEL_6:
      result = sub_26C46BD84();
    }
  }

  return result;
}

uint64_t sub_26C4425A4()
{
  if (!*(*v0 + 16) || (result = sub_26C46BED4(), !v1))
  {
    v3 = v1;
    if (*(v0[1] + 16))
    {
      type metadata accessor for ValueData(0);
      sub_26C4468DC(&qword_280497DE0, type metadata accessor for ValueData);
      result = sub_26C46BF14();
      if (v1)
      {
        return result;
      }

      v3 = 0;
    }

    if (*(v0[2] + 16))
    {
      type metadata accessor for LamportTimestamp(0);
      sub_26C4468DC(&qword_280497A90, type metadata accessor for LamportTimestamp);
      v4 = v3;
      result = sub_26C46BF14();
      if (v3)
      {
        return result;
      }
    }

    else
    {
      v4 = v3;
    }

    if (!*(v0[3] + 16) || (type metadata accessor for DictionaryCatchupData.TombstoneTimestamp(0), sub_26C4468DC(&qword_280497E70, type metadata accessor for DictionaryCatchupData.TombstoneTimestamp), result = sub_26C46BF14(), !v4))
    {
      v5 = v0 + *(type metadata accessor for DictionaryCatchupData(0) + 32);
      return sub_26C46BD04();
    }
  }

  return result;
}

uint64_t sub_26C4427A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  a2[1] = v2;
  a2[2] = v2;
  a2[3] = v2;
  v3 = a2 + *(a1 + 32);
  return sub_26C46BD14();
}

uint64_t sub_26C442820(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C4468DC(&qword_2804981A0, type metadata accessor for DictionaryCatchupData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26C4428C0(uint64_t a1)
{
  v2 = sub_26C4468DC(&qword_280497E90, type metadata accessor for DictionaryCatchupData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26C44292C()
{
  sub_26C4468DC(&qword_280497E90, type metadata accessor for DictionaryCatchupData);

  return sub_26C46BE84();
}

uint64_t sub_26C4429AC()
{
  v0 = sub_26C46BF74();
  __swift_allocate_value_buffer(v0, qword_280498820);
  __swift_project_value_buffer(v0, qword_280498820);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498098, &qword_26C470BC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980A0, &qword_26C470BC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C46E630;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26C46BF44();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_26C46BF54();
}

uint64_t sub_26C442B74()
{
  while (1)
  {
    result = sub_26C46BD84();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_26C46BDD4();
    }

    else if (result == 2)
    {
      sub_26C442C04();
    }
  }

  return result;
}

uint64_t sub_26C442C04()
{
  v0 = *(type metadata accessor for DictionaryCatchupData.TombstoneTimestamp(0) + 24);
  type metadata accessor for LamportTimestamp(0);
  sub_26C4468DC(&qword_280497A90, type metadata accessor for LamportTimestamp);
  return sub_26C46BE34();
}

uint64_t sub_26C442CB8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v20 - v3;
  v5 = type metadata accessor for LamportTimestamp(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v0;
  v11 = v0[1];
  v12 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v12 != 2)
    {
      goto LABEL_12;
    }

    v14 = *(v10 + 16);
    v15 = *(v10 + 24);
LABEL_8:
    v13 = v21;
    if (v14 == v15)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (v12)
  {
    v14 = v10;
    v15 = v10 >> 32;
    goto LABEL_8;
  }

  v13 = v21;
  if ((v11 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

LABEL_10:
  result = sub_26C46BEE4();
  if (v13)
  {
    return result;
  }

  v21 = 0;
LABEL_12:
  v17 = type metadata accessor for DictionaryCatchupData.TombstoneTimestamp(0);
  sub_26C3DDD48(v0 + *(v17 + 24), v4, &qword_280497468, &unk_26C46D400);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_26C3DE270(v4, &qword_280497468, &unk_26C46D400);
  }

  else
  {
    sub_26C453E5C(v4, v9, type metadata accessor for LamportTimestamp);
    sub_26C4468DC(&qword_280497A90, type metadata accessor for LamportTimestamp);
    v18 = v21;
    sub_26C46BF34();
    result = sub_26C453DFC(v9, type metadata accessor for LamportTimestamp);
    if (v18)
    {
      return result;
    }
  }

  v19 = v0 + *(v17 + 20);
  return sub_26C46BD04();
}

uint64_t sub_26C442F68@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = xmmword_26C46D3C0;
  v4 = &a2[*(a1 + 20)];
  sub_26C46BD14();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for LamportTimestamp(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_26C443040(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C4468DC(&qword_2804981A8, type metadata accessor for DictionaryCatchupData.TombstoneTimestamp);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26C4430E0(uint64_t a1)
{
  v2 = sub_26C4468DC(&qword_280497E70, type metadata accessor for DictionaryCatchupData.TombstoneTimestamp);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26C44314C()
{
  sub_26C4468DC(&qword_280497E70, type metadata accessor for DictionaryCatchupData.TombstoneTimestamp);

  return sub_26C46BE84();
}

uint64_t sub_26C4431CC()
{
  v0 = sub_26C46BF74();
  __swift_allocate_value_buffer(v0, qword_280498838);
  __swift_project_value_buffer(v0, qword_280498838);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498098, &qword_26C470BC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980A0, &qword_26C470BC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C46E660;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26C46BF44();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "setElementValueData";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "setTimestamps";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "tombstoneElementValueData";
  *(v14 + 1) = 25;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "tombstoneTimestamps";
  *(v15 + 8) = 19;
  *(v15 + 16) = 2;
  v9();
  return sub_26C46BF54();
}

uint64_t sub_26C443460()
{
  result = sub_26C46BD84();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1)
        {
          sub_26C44366C();
        }

        else if (result == 2)
        {
          goto LABEL_15;
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            goto LABEL_4;
          case 4:
LABEL_15:
            v3 = v0;
            type metadata accessor for ValueData(0);
            sub_26C4468DC(&qword_280497DE0, type metadata accessor for ValueData);
            goto LABEL_5;
          case 5:
LABEL_4:
            v3 = v0;
            type metadata accessor for LamportTimestamp(0);
            sub_26C4468DC(&qword_280497A90, type metadata accessor for LamportTimestamp);
LABEL_5:
            v0 = v3;
            sub_26C46BE14();
            break;
        }
      }

      result = sub_26C46BD84();
    }
  }

  return result;
}

uint64_t sub_26C44366C()
{
  v0 = *(type metadata accessor for SetCatchupData(0) + 36);
  type metadata accessor for LamportTimestamp(0);
  sub_26C4468DC(&qword_280497A90, type metadata accessor for LamportTimestamp);
  return sub_26C46BE34();
}

uint64_t sub_26C443720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v22 = a3;
  v21 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18 - v8;
  v10 = type metadata accessor for LamportTimestamp(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SetCatchupData(0);
  v20 = v5;
  sub_26C3DDD48(v5 + *(v19 + 36), v9, &qword_280497468, &unk_26C46D400);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_26C3DE270(v9, &qword_280497468, &unk_26C46D400);
  }

  else
  {
    sub_26C453E5C(v9, v14, type metadata accessor for LamportTimestamp);
    sub_26C4468DC(&qword_280497A90, type metadata accessor for LamportTimestamp);
    sub_26C46BF34();
    result = sub_26C453DFC(v14, type metadata accessor for LamportTimestamp);
    if (v4)
    {
      return result;
    }
  }

  v16 = v20;
  if (!*(*v20 + 16) || (type metadata accessor for ValueData(0), sub_26C4468DC(&qword_280497DE0, type metadata accessor for ValueData), result = sub_26C46BF14(), !v4))
  {
    if (!*(v16[1] + 16) || (sub_26C4468DC(&qword_280497A90, type metadata accessor for LamportTimestamp), result = sub_26C46BF14(), !v4))
    {
      if (!*(v16[2] + 16) || (type metadata accessor for ValueData(0), sub_26C4468DC(&qword_280497DE0, type metadata accessor for ValueData), result = sub_26C46BF14(), !v4))
      {
        if (!*(v16[3] + 16) || (sub_26C4468DC(&qword_280497A90, type metadata accessor for LamportTimestamp), result = sub_26C46BF14(), !v4))
        {
          v17 = v16 + *(v19 + 32);
          return sub_26C46BD04();
        }
      }
    }
  }

  return result;
}

uint64_t sub_26C443B48@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 1) = v4;
  *(a2 + 2) = v4;
  *(a2 + 3) = v4;
  v5 = &a2[*(a1 + 32)];
  sub_26C46BD14();
  v6 = *(a1 + 36);
  v7 = type metadata accessor for LamportTimestamp(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(&a2[v6], 1, 1, v7);
}

uint64_t sub_26C443BFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_26C46BD24();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_26C443C70(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_26C46BD24();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_26C443D14(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C4468DC(&qword_2804981B0, type metadata accessor for SetCatchupData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26C443DB4(uint64_t a1)
{
  v2 = sub_26C4468DC(&qword_280497950, type metadata accessor for SetCatchupData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26C443E20()
{
  sub_26C4468DC(&qword_280497950, type metadata accessor for SetCatchupData);

  return sub_26C46BE84();
}

uint64_t sub_26C443EA0()
{
  v0 = sub_26C46BF74();
  __swift_allocate_value_buffer(v0, qword_280498850);
  __swift_project_value_buffer(v0, qword_280498850);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498098, &qword_26C470BC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980A0, &qword_26C470BC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C46E660;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "modelUUIDPB";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26C46BF44();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ownerUUIDPB";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "ownershipCounter";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "propertyDataPB";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "ownershipUUIDsToAccountIdentifiersPB";
  *(v15 + 8) = 36;
  *(v15 + 16) = 2;
  v9();
  return sub_26C46BF54();
}

uint64_t sub_26C444134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_26C46BD84();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1)
        {
          sub_26C444304(a1, v5, a2, a3, type metadata accessor for ModelData);
        }

        else if (result == 2)
        {
          sub_26C4443BC(a1, v5, a2, a3, type metadata accessor for ModelData);
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            sub_26C46BE04();
            goto LABEL_5;
          case 4:
            v11 = v4;
            type metadata accessor for ModelData.PropertyDataMap(0);
            sub_26C4468DC(&qword_280497E20, type metadata accessor for ModelData.PropertyDataMap);
            break;
          case 5:
            v11 = v4;
            type metadata accessor for ModelData.OwnershipUUIDToAccountIdentifier(0);
            sub_26C4468DC(&qword_280497E00, type metadata accessor for ModelData.OwnershipUUIDToAccountIdentifier);
            break;
          default:
            goto LABEL_5;
        }

        v4 = v11;
        sub_26C46BE14();
      }

LABEL_5:
      result = sub_26C46BD84();
    }
  }

  return result;
}

uint64_t sub_26C444304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *(a5(0) + 32);
  type metadata accessor for PBUUID(0);
  sub_26C4468DC(&qword_280498050, type metadata accessor for PBUUID);
  return sub_26C46BE34();
}

uint64_t sub_26C4443BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *(a5(0) + 36);
  type metadata accessor for PBUUID(0);
  sub_26C4468DC(&qword_280498050, type metadata accessor for PBUUID);
  return sub_26C46BE34();
}

uint64_t sub_26C444474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v30 = a2;
  v31 = a3;
  v29 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - v11;
  v13 = type metadata accessor for PBUUID(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v27 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v26 - v18;
  v28 = type metadata accessor for ModelData(0);
  v20 = v28[8];
  v32 = v5;
  sub_26C3DDD48(v5 + v20, v12, &qword_280497458, &unk_26C46D3F0);
  v21 = *(v14 + 48);
  if (v21(v12, 1, v13) == 1)
  {
    sub_26C3DE270(v12, &qword_280497458, &unk_26C46D3F0);
  }

  else
  {
    sub_26C453E5C(v12, v19, type metadata accessor for PBUUID);
    sub_26C4468DC(&qword_280498050, type metadata accessor for PBUUID);
    sub_26C46BF34();
    result = sub_26C453DFC(v19, type metadata accessor for PBUUID);
    if (v4)
    {
      return result;
    }
  }

  sub_26C3DDD48(v32 + v28[9], v10, &qword_280497458, &unk_26C46D3F0);
  if (v21(v10, 1, v13) == 1)
  {
    sub_26C3DE270(v10, &qword_280497458, &unk_26C46D3F0);
  }

  else
  {
    v23 = v10;
    v24 = v27;
    sub_26C453E5C(v23, v27, type metadata accessor for PBUUID);
    sub_26C4468DC(&qword_280498050, type metadata accessor for PBUUID);
    sub_26C46BF34();
    result = sub_26C453DFC(v24, type metadata accessor for PBUUID);
    if (v4)
    {
      return result;
    }
  }

  if (!*v32 || (result = sub_26C46BF04(), !v4))
  {
    if (!*(*(v32 + 8) + 16) || (type metadata accessor for ModelData.PropertyDataMap(0), sub_26C4468DC(&qword_280497E20, type metadata accessor for ModelData.PropertyDataMap), result = sub_26C46BF14(), !v4))
    {
      if (!*(*(v32 + 16) + 16) || (type metadata accessor for ModelData.OwnershipUUIDToAccountIdentifier(0), sub_26C4468DC(&qword_280497E00, type metadata accessor for ModelData.OwnershipUUIDToAccountIdentifier), result = sub_26C46BF14(), !v4))
      {
        v25 = v32 + v28[7];
        return sub_26C46BD04();
      }
    }
  }

  return result;
}

uint64_t sub_26C44494C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  v4 = MEMORY[0x277D84F90];
  *(a2 + 8) = MEMORY[0x277D84F90];
  *(a2 + 16) = v4;
  v5 = a2 + a1[7];
  sub_26C46BD14();
  v6 = a1[8];
  v7 = type metadata accessor for PBUUID(0);
  v10 = *(*(v7 - 8) + 56);
  (v10)((v7 - 8), a2 + v6, 1, 1, v7);
  v8 = a2 + a1[9];

  return v10(v8, 1, 1, v7);
}

uint64_t sub_26C444A38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_26C46BD24();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_26C444AAC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_26C46BD24();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_26C444B50(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C4468DC(&qword_2804981B8, type metadata accessor for ModelData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26C444BF0(uint64_t a1)
{
  v2 = sub_26C4468DC(&qword_280497648, type metadata accessor for ModelData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26C444C5C()
{
  sub_26C4468DC(&qword_280497648, type metadata accessor for ModelData);

  return sub_26C46BE84();
}

uint64_t sub_26C444CDC()
{
  v0 = sub_26C46BF74();
  __swift_allocate_value_buffer(v0, qword_280498868);
  __swift_project_value_buffer(v0, qword_280498868);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498098, &qword_26C470BC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980A0, &qword_26C470BC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C46E630;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26C46BF44();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_26C46BF54();
}

uint64_t sub_26C444EA4()
{
  while (1)
  {
    result = sub_26C46BD84();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_26C46BE04();
    }

    else if (result == 2)
    {
      sub_26C46BDD4();
    }
  }

  return result;
}

uint64_t sub_26C444F30()
{
  if (!*v0 || (result = sub_26C46BF04(), !v1))
  {
    v3 = *(v0 + 8);
    v4 = *(v0 + 16);
    v5 = v4 >> 62;
    if ((v4 >> 62) > 1)
    {
      if (v5 != 2)
      {
        goto LABEL_12;
      }

      v6 = *(v3 + 16);
      v7 = *(v3 + 24);
    }

    else
    {
      if (!v5)
      {
        if ((v4 & 0xFF000000000000) == 0)
        {
          goto LABEL_12;
        }

LABEL_11:
        result = sub_26C46BEE4();
        if (v1)
        {
          return result;
        }

        goto LABEL_12;
      }

      v6 = v3;
      v7 = v3 >> 32;
    }

    if (v6 != v7)
    {
      goto LABEL_11;
    }

LABEL_12:
    v8 = v0 + *(type metadata accessor for ModelData.PropertyDataMap(0) + 24);
    return sub_26C46BD04();
  }

  return result;
}

uint64_t sub_26C44500C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = xmmword_26C46D3C0;
  v2 = a2 + *(a1 + 24);
  return sub_26C46BD14();
}

uint64_t sub_26C445058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_26C46BD24();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_26C4450CC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_26C46BD24();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_26C445170(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C4468DC(&qword_2804981C0, type metadata accessor for ModelData.PropertyDataMap);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26C445210(uint64_t a1)
{
  v2 = sub_26C4468DC(&qword_280497E20, type metadata accessor for ModelData.PropertyDataMap);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26C44527C()
{
  sub_26C4468DC(&qword_280497E20, type metadata accessor for ModelData.PropertyDataMap);

  return sub_26C46BE84();
}

uint64_t sub_26C4452F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != *a2 || (sub_26C44DD9C(*(a1 + 8), *(a1 + 16), *(a2 + 8), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 24);
  sub_26C46BD24();
  sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
  return sub_26C46C1C4() & 1;
}

uint64_t sub_26C4453B4()
{
  v0 = sub_26C46BF74();
  __swift_allocate_value_buffer(v0, qword_280498880);
  __swift_project_value_buffer(v0, qword_280498880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498098, &qword_26C470BC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980A0, &qword_26C470BC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C46E630;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26C46BF44();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_26C46BF54();
}

uint64_t sub_26C44557C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_26C46BD84();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_26C445DEC(a1, v5, a2, a3, type metadata accessor for ModelData.OwnershipUUIDToAccountIdentifier);
    }

    else if (result == 2)
    {
      sub_26C46BDF4();
    }
  }

  return result;
}

uint64_t sub_26C445620(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v20[0] = a1;
  v20[1] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v20 - v6;
  v8 = type metadata accessor for PBUUID(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ModelData.OwnershipUUIDToAccountIdentifier(0);
  sub_26C3DDD48(v3 + *(v13 + 24), v7, &qword_280497458, &unk_26C46D3F0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_26C3DE270(v7, &qword_280497458, &unk_26C46D3F0);
    v14 = v21;
  }

  else
  {
    sub_26C453E5C(v7, v12, type metadata accessor for PBUUID);
    sub_26C4468DC(&qword_280498050, type metadata accessor for PBUUID);
    v14 = v21;
    sub_26C46BF34();
    result = sub_26C453DFC(v12, type metadata accessor for PBUUID);
    if (v14)
    {
      return result;
    }
  }

  v16 = *v3;
  v17 = v3[1];
  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18 || (result = sub_26C46BEF4(), !v14))
  {
    v19 = v3 + *(v13 + 20);
    return sub_26C46BD04();
  }

  return result;
}

uint64_t sub_26C44589C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v4 = &a2[*(a1 + 20)];
  sub_26C46BD14();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for PBUUID(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_26C445970(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C4468DC(&qword_2804981C8, type metadata accessor for ModelData.OwnershipUUIDToAccountIdentifier);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26C445A10(uint64_t a1)
{
  v2 = sub_26C4468DC(&qword_280497E00, type metadata accessor for ModelData.OwnershipUUIDToAccountIdentifier);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26C445A7C()
{
  sub_26C4468DC(&qword_280497E00, type metadata accessor for ModelData.OwnershipUUIDToAccountIdentifier);

  return sub_26C46BE84();
}

uint64_t sub_26C445AFC()
{
  v0 = sub_26C46BF74();
  __swift_allocate_value_buffer(v0, qword_280498898);
  __swift_project_value_buffer(v0, qword_280498898);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498098, &qword_26C470BC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980A0, &qword_26C470BC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C46E620;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "modelUUIDPB";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26C46BF44();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "data";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "ownerUUIDPB";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return sub_26C46BF54();
}

uint64_t sub_26C445D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_26C46BD84();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_26C445EA4(a1, v5, a2, a3, type metadata accessor for ValueData);
        break;
      case 2:
        sub_26C46BDD4();
        break;
      case 1:
        sub_26C445DEC(a1, v5, a2, a3, type metadata accessor for ValueData);
        break;
    }
  }

  return result;
}

uint64_t sub_26C445DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *(a5(0) + 24);
  type metadata accessor for PBUUID(0);
  sub_26C4468DC(&qword_280498050, type metadata accessor for PBUUID);
  return sub_26C46BE34();
}

uint64_t sub_26C445EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *(a5(0) + 28);
  type metadata accessor for PBUUID(0);
  sub_26C4468DC(&qword_280498050, type metadata accessor for PBUUID);
  return sub_26C46BE34();
}

uint64_t sub_26C445F5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v37 = a3;
  v36 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v34 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - v10;
  v12 = type metadata accessor for PBUUID(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v32 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v31 - v17;
  v35 = type metadata accessor for ValueData(0);
  v19 = v35[6];
  v33 = v5;
  sub_26C3DDD48(v5 + v19, v11, &qword_280497458, &unk_26C46D3F0);
  v20 = *(v13 + 48);
  if (v20(v11, 1, v12) == 1)
  {
    sub_26C3DE270(v11, &qword_280497458, &unk_26C46D3F0);
  }

  else
  {
    sub_26C453E5C(v11, v18, type metadata accessor for PBUUID);
    sub_26C4468DC(&qword_280498050, type metadata accessor for PBUUID);
    sub_26C46BF34();
    result = sub_26C453DFC(v18, type metadata accessor for PBUUID);
    if (v4)
    {
      return result;
    }
  }

  v23 = v33;
  v22 = v34;
  v24 = *v33;
  v25 = v33[1];
  v26 = v25 >> 62;
  if ((v25 >> 62) > 1)
  {
    if (v26 != 2)
    {
      goto LABEL_14;
    }

    v27 = *(v24 + 16);
    v28 = *(v24 + 24);
  }

  else
  {
    if (!v26)
    {
      if ((v25 & 0xFF000000000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }

    v27 = v24;
    v28 = v24 >> 32;
  }

  if (v27 == v28)
  {
    goto LABEL_14;
  }

LABEL_12:
  result = sub_26C46BEE4();
  if (v4)
  {
    return result;
  }

  v22 = v34;
LABEL_14:
  sub_26C3DDD48(v23 + v35[7], v22, &qword_280497458, &unk_26C46D3F0);
  if (v20(v22, 1, v12) == 1)
  {
    sub_26C3DE270(v22, &qword_280497458, &unk_26C46D3F0);
  }

  else
  {
    v29 = v32;
    sub_26C453E5C(v22, v32, type metadata accessor for PBUUID);
    sub_26C4468DC(&qword_280498050, type metadata accessor for PBUUID);
    sub_26C46BF34();
    result = sub_26C453DFC(v29, type metadata accessor for PBUUID);
    if (v4)
    {
      return result;
    }
  }

  v30 = v23 + v35[5];
  return sub_26C46BD04();
}

uint64_t sub_26C446378@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = xmmword_26C46D3C0;
  v4 = &a2[a1[5]];
  sub_26C46BD14();
  v5 = a1[6];
  v6 = type metadata accessor for PBUUID(0);
  v9 = *(*(v6 - 8) + 56);
  (v9)((v6 - 8), &a2[v5], 1, 1, v6);
  v7 = &a2[a1[7]];

  return v9(v7, 1, 1, v6);
}

uint64_t sub_26C446460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_26C46BD24();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_26C4464D4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_26C46BD24();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_26C446578(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C4468DC(&qword_2804981D0, type metadata accessor for ValueData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26C446618@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_26C46BF74();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_26C4466B4(uint64_t a1)
{
  v2 = sub_26C4468DC(&qword_280497DE0, type metadata accessor for ValueData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26C446720()
{
  sub_26C46C814();
  sub_26C46C1B4();
  return sub_26C46C844();
}

uint64_t sub_26C446778()
{
  sub_26C4468DC(&qword_280497DE0, type metadata accessor for ValueData);

  return sub_26C46BE84();
}

uint64_t sub_26C4467F4()
{
  sub_26C46C814();
  sub_26C46C1B4();
  return sub_26C46C844();
}

uint64_t sub_26C4468DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26C4482C4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26C448318(uint64_t a1, uint64_t a2)
{
  v47[3] = *MEMORY[0x277D85DE8];
  v45 = type metadata accessor for ModelData.PropertyDataMap(0);
  v4 = *(*(v45 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v45);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v41 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (v11 && a1 != a2)
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      v43 = 0;
      v44 = v15;
      while (1)
      {
        sub_26C455474(v13, v10, type metadata accessor for ModelData.PropertyDataMap);
        sub_26C455474(v14, v7, type metadata accessor for ModelData.PropertyDataMap);
        if (*v10 != *v7)
        {
LABEL_59:
          sub_26C453DFC(v7, type metadata accessor for ModelData.PropertyDataMap);
          sub_26C453DFC(v10, type metadata accessor for ModelData.PropertyDataMap);
          goto LABEL_60;
        }

        v16 = *(v10 + 1);
        v17 = *(v10 + 2);
        v18 = *(v7 + 1);
        v19 = *(v7 + 2);
        v20 = v17 >> 62;
        v21 = v19 >> 62;
        if (v17 >> 62 == 3)
        {
          break;
        }

        if (v20 > 1)
        {
          if (v20 == 2)
          {
            v28 = *(v16 + 16);
            v27 = *(v16 + 24);
            v25 = __OFSUB__(v27, v28);
            v22 = v27 - v28;
            if (v25)
            {
              goto LABEL_63;
            }

            goto LABEL_22;
          }

          v22 = 0;
          if (v21 > 1)
          {
            goto LABEL_16;
          }
        }

        else if (v20)
        {
          LODWORD(v22) = HIDWORD(v16) - v16;
          if (__OFSUB__(HIDWORD(v16), v16))
          {
            goto LABEL_64;
          }

          v22 = v22;
          if (v21 > 1)
          {
LABEL_16:
            if (v21 != 2)
            {
              if (v22)
              {
                goto LABEL_59;
              }

              goto LABEL_55;
            }

            v24 = *(v18 + 16);
            v23 = *(v18 + 24);
            v25 = __OFSUB__(v23, v24);
            v26 = v23 - v24;
            if (v25)
            {
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
LABEL_65:
              __break(1u);
LABEL_66:
              __break(1u);
LABEL_67:
              __break(1u);
LABEL_68:
              __break(1u);
            }

            goto LABEL_29;
          }
        }

        else
        {
          v22 = BYTE6(v17);
          if (v21 > 1)
          {
            goto LABEL_16;
          }
        }

LABEL_23:
        if (v21)
        {
          LODWORD(v26) = HIDWORD(v18) - v18;
          if (__OFSUB__(HIDWORD(v18), v18))
          {
            goto LABEL_62;
          }

          v26 = v26;
        }

        else
        {
          v26 = BYTE6(v19);
        }

LABEL_29:
        if (v22 != v26)
        {
          goto LABEL_59;
        }

        if (v22 >= 1)
        {
          if (v20 > 1)
          {
            if (v20 == 2)
            {
              v29 = *(v16 + 16);
              v41 = *(v16 + 24);
              v42 = v18;
              v30 = sub_26C46BA04();
              if (v30)
              {
                v31 = sub_26C46BA24();
                if (__OFSUB__(v29, v31))
                {
                  goto LABEL_67;
                }

                v30 += v29 - v31;
              }

              if (__OFSUB__(v41, v29))
              {
                goto LABEL_66;
              }

              goto LABEL_54;
            }

            memset(v47, 0, 14);
          }

          else
          {
            if (v20)
            {
              v42 = *(v7 + 1);
              v32 = v16;
              if (v16 >> 32 < v16)
              {
                goto LABEL_65;
              }

              v33 = sub_26C46BA04();
              if (v33)
              {
                v41 = v33;
                v34 = sub_26C46BA24();
                if (__OFSUB__(v32, v34))
                {
                  goto LABEL_68;
                }

                v30 = v32 - v34 + v41;
              }

              else
              {
                v30 = 0;
              }

LABEL_54:
              sub_26C46BA14();
              v36 = v43;
              sub_26C44D924(v30, v42, v19, v47);
              v43 = v36;
              if ((v47[0] & 1) == 0)
              {
                goto LABEL_59;
              }

              goto LABEL_55;
            }

            v47[0] = *(v10 + 1);
            LOWORD(v47[1]) = v17;
            BYTE2(v47[1]) = BYTE2(v17);
            BYTE3(v47[1]) = BYTE3(v17);
            BYTE4(v47[1]) = BYTE4(v17);
            BYTE5(v47[1]) = BYTE5(v17);
          }

          v35 = v43;
          sub_26C44D924(v47, v18, v19, &v46);
          v43 = v35;
          if (!v46)
          {
            goto LABEL_59;
          }
        }

LABEL_55:
        v37 = *(v45 + 24);
        sub_26C46BD24();
        sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
        v38 = sub_26C46C1C4();
        sub_26C453DFC(v7, type metadata accessor for ModelData.PropertyDataMap);
        sub_26C453DFC(v10, type metadata accessor for ModelData.PropertyDataMap);
        if (v38)
        {
          v14 += v44;
          v13 += v44;
          if (--v11)
          {
            continue;
          }
        }

        goto LABEL_61;
      }

      v22 = 0;
      if (!v16 && v17 == 0xC000000000000000 && v19 >> 62 == 3)
      {
        v22 = 0;
        if (!v18 && v19 == 0xC000000000000000)
        {
          goto LABEL_55;
        }
      }

LABEL_22:
      if (v21 > 1)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
    }

    v38 = 1;
  }

  else
  {
LABEL_60:
    v38 = 0;
  }

LABEL_61:
  v39 = *MEMORY[0x277D85DE8];
  return v38 & 1;
}

uint64_t sub_26C448838(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBUUID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v42 - v11);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980C0, &unk_26C470BD0);
  v13 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v49 = &v42 - v14;
  v50 = type metadata accessor for ModelData.OwnershipUUIDToAccountIdentifier(0);
  v15 = *(*(v50 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v50);
  v51 = (&v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v20 = (&v42 - v19);
  v21 = *(a1 + 16);
  if (v21 != *(a2 + 16))
  {
    goto LABEL_26;
  }

  if (!v21 || a1 == a2)
  {
    v38 = 1;
    return v38 & 1;
  }

  v46 = v4;
  v22 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v23 = a1 + v22;
  v24 = a2 + v22;
  v44 = &v42 - v19;
  v45 = (v5 + 48);
  v25 = *(v18 + 72);
  v42 = v8;
  v43 = v25;
  while (1)
  {
    sub_26C455474(v23, v20, type metadata accessor for ModelData.OwnershipUUIDToAccountIdentifier);
    v48 = v23;
    v26 = v51;
    sub_26C455474(v24, v51, type metadata accessor for ModelData.OwnershipUUIDToAccountIdentifier);
    v27 = *(v50 + 24);
    v28 = *(v47 + 48);
    v29 = v49;
    sub_26C3DDD48(v20 + v27, v49, &qword_280497458, &unk_26C46D3F0);
    sub_26C3DDD48(v26 + v27, v29 + v28, &qword_280497458, &unk_26C46D3F0);
    v30 = v46;
    v31 = *v45;
    if ((*v45)(v29, 1, v46) == 1)
    {
      v32 = v31(v29 + v28, 1, v30);
      v20 = v44;
      if (v32 != 1)
      {
        goto LABEL_23;
      }

      goto LABEL_13;
    }

    sub_26C3DDD48(v29, v12, &qword_280497458, &unk_26C46D3F0);
    if (v31(v29 + v28, 1, v30) == 1)
    {
      break;
    }

    v33 = v42;
    sub_26C453E5C(v29 + v28, v42, type metadata accessor for PBUUID);
    v20 = v44;
    if (*v12 != *v33 || v12[1] != v33[1])
    {
      sub_26C453DFC(v33, type metadata accessor for PBUUID);
LABEL_21:
      sub_26C453DFC(v12, type metadata accessor for PBUUID);
      v39 = &qword_280497458;
      v40 = &unk_26C46D3F0;
      goto LABEL_24;
    }

    v34 = *(v46 + 24);
    sub_26C46BD24();
    sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
    v29 = v49;
    v35 = sub_26C46C1C4();
    sub_26C453DFC(v33, type metadata accessor for PBUUID);
    if ((v35 & 1) == 0)
    {
      goto LABEL_21;
    }

    sub_26C453DFC(v12, type metadata accessor for PBUUID);
LABEL_13:
    sub_26C3DE270(v29, &qword_280497458, &unk_26C46D3F0);
    if ((*v20 != *v51 || v20[1] != v51[1]) && (sub_26C46C764() & 1) == 0)
    {
      goto LABEL_25;
    }

    v36 = *(v50 + 20);
    sub_26C46BD24();
    sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
    v37 = v51;
    v38 = sub_26C46C1C4();
    sub_26C453DFC(v37, type metadata accessor for ModelData.OwnershipUUIDToAccountIdentifier);
    sub_26C453DFC(v20, type metadata accessor for ModelData.OwnershipUUIDToAccountIdentifier);
    if (v38)
    {
      v24 += v43;
      v23 = v48 + v43;
      if (--v21)
      {
        continue;
      }
    }

    return v38 & 1;
  }

  sub_26C453DFC(v12, type metadata accessor for PBUUID);
  v20 = v44;
LABEL_23:
  v39 = &qword_2804980C0;
  v40 = &unk_26C470BD0;
LABEL_24:
  sub_26C3DE270(v29, v39, v40);
LABEL_25:
  sub_26C453DFC(v51, type metadata accessor for ModelData.OwnershipUUIDToAccountIdentifier);
  sub_26C453DFC(v20, type metadata accessor for ModelData.OwnershipUUIDToAccountIdentifier);
LABEL_26:
  v38 = 0;
  return v38 & 1;
}

uint64_t sub_26C448E48(uint64_t a1, uint64_t a2)
{
  v34[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (v2 && a1 != a2)
    {
      v3 = 0;
      v4 = (a1 + 40);
      v5 = (a2 + 40);
      while (1)
      {
        v7 = *(v4 - 1);
        v6 = *v4;
        v9 = *(v5 - 1);
        v8 = *v5;
        v10 = *v4 >> 62;
        v11 = *v5 >> 62;
        if (v10 == 3)
        {
          break;
        }

        if (v10 > 1)
        {
          if (v10 == 2)
          {
            v20 = *(v7 + 16);
            v19 = *(v7 + 24);
            v17 = __OFSUB__(v19, v20);
            v13 = v19 - v20;
            if (v17)
            {
              goto LABEL_63;
            }

            goto LABEL_28;
          }

          v13 = 0;
          if (v11 <= 1)
          {
            goto LABEL_29;
          }
        }

        else if (v10)
        {
          LODWORD(v13) = HIDWORD(v7) - v7;
          if (__OFSUB__(HIDWORD(v7), v7))
          {
            goto LABEL_64;
          }

          v13 = v13;
          if (v11 <= 1)
          {
LABEL_29:
            if (v11)
            {
              LODWORD(v18) = HIDWORD(v9) - v9;
              if (__OFSUB__(HIDWORD(v9), v9))
              {
                __break(1u);
LABEL_62:
                __break(1u);
LABEL_63:
                __break(1u);
LABEL_64:
                __break(1u);
LABEL_65:
                __break(1u);
LABEL_66:
                __break(1u);
LABEL_67:
                __break(1u);
LABEL_68:
                __break(1u);
              }

              v18 = v18;
            }

            else
            {
              v18 = BYTE6(v8);
            }

            goto LABEL_33;
          }
        }

        else
        {
          v13 = BYTE6(v6);
          if (v11 <= 1)
          {
            goto LABEL_29;
          }
        }

LABEL_22:
        if (v11 != 2)
        {
          if (v13)
          {
            goto LABEL_58;
          }

          goto LABEL_6;
        }

        v16 = *(v9 + 16);
        v15 = *(v9 + 24);
        v17 = __OFSUB__(v15, v16);
        v18 = v15 - v16;
        if (v17)
        {
          goto LABEL_62;
        }

LABEL_33:
        if (v13 != v18)
        {
          goto LABEL_58;
        }

        if (v13 < 1)
        {
          goto LABEL_6;
        }

        if (v10 > 1)
        {
          if (v10 == 2)
          {
            v32 = v3;
            v21 = *(v7 + 16);
            v31 = *(v7 + 24);
            sub_26C3DDDB0(v7, v6);
            sub_26C3DDDB0(v9, v8);
            v22 = sub_26C46BA04();
            if (v22)
            {
              v23 = sub_26C46BA24();
              if (__OFSUB__(v21, v23))
              {
                goto LABEL_67;
              }

              v22 += v21 - v23;
            }

            if (__OFSUB__(v31, v21))
            {
              goto LABEL_66;
            }

            sub_26C46BA14();
            v24 = v22;
            v25 = v9;
            v26 = v8;
            v3 = v32;
            goto LABEL_54;
          }

          memset(v34, 0, 14);
          sub_26C3DDDB0(v7, v6);
          sub_26C3DDDB0(v9, v8);
        }

        else
        {
          if (v10)
          {
            if (v7 >> 32 < v7)
            {
              goto LABEL_65;
            }

            sub_26C3DDDB0(v7, v6);
            sub_26C3DDDB0(v9, v8);
            v27 = sub_26C46BA04();
            if (v27)
            {
              v28 = sub_26C46BA24();
              if (__OFSUB__(v7, v28))
              {
                goto LABEL_68;
              }

              v27 += v7 - v28;
            }

            sub_26C46BA14();
            v24 = v27;
            v25 = v9;
            v26 = v8;
LABEL_54:
            sub_26C44D924(v24, v25, v26, v34);
            sub_26C3DDEA8(v9, v8);
            sub_26C3DDEA8(v7, v6);
            if ((v34[0] & 1) == 0)
            {
              goto LABEL_58;
            }

            goto LABEL_6;
          }

          v34[0] = *(v4 - 1);
          LOWORD(v34[1]) = v6;
          BYTE2(v34[1]) = BYTE2(v6);
          BYTE3(v34[1]) = BYTE3(v6);
          BYTE4(v34[1]) = BYTE4(v6);
          BYTE5(v34[1]) = BYTE5(v6);
          sub_26C3DDDB0(v7, v6);
          sub_26C3DDDB0(v9, v8);
        }

        sub_26C44D924(v34, v9, v8, &v33);
        sub_26C3DDEA8(v9, v8);
        sub_26C3DDEA8(v7, v6);
        if (!v33)
        {
          goto LABEL_58;
        }

LABEL_6:
        v4 += 2;
        v5 += 2;
        if (!--v2)
        {
          goto LABEL_59;
        }
      }

      if (v7)
      {
        v12 = 0;
      }

      else
      {
        v12 = v6 == 0xC000000000000000;
      }

      v13 = 0;
      v14 = v12 && *v5 >> 62 == 3;
      if (v14 && !v9 && v8 == 0xC000000000000000)
      {
        goto LABEL_6;
      }

LABEL_28:
      if (v11 <= 1)
      {
        goto LABEL_29;
      }

      goto LABEL_22;
    }

LABEL_59:
    result = 1;
  }

  else
  {
LABEL_58:
    result = 0;
  }

  v30 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26C449254(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26C4492B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ValueData(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_26C455474(v14, v11, type metadata accessor for ValueData);
        sub_26C455474(v15, v8, type metadata accessor for ValueData);
        v17 = sub_26C452F50(v11, v8);
        sub_26C453DFC(v8, type metadata accessor for ValueData);
        sub_26C453DFC(v11, type metadata accessor for ValueData);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_26C449468(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBUUID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v42 - v11);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980C0, &unk_26C470BD0);
  v13 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v50 = &v42 - v14;
  v51 = type metadata accessor for LamportTimestamp(0);
  v15 = *(*(v51 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v51);
  v18 = (&v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v21 = (&v42 - v20);
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
    goto LABEL_24;
  }

  if (!v22 || a1 == a2)
  {
    v38 = 1;
    return v38 & 1;
  }

  v46 = v18;
  v47 = v4;
  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v43 = *(v19 + 72);
  v44 = (v5 + 48);
  v45 = &v42 - v20;
  v42 = v8;
  while (1)
  {
    sub_26C455474(v24, v21, type metadata accessor for LamportTimestamp);
    v49 = v24;
    sub_26C455474(v25, v18, type metadata accessor for LamportTimestamp);
    v26 = *(v51 + 24);
    v27 = *(v48 + 48);
    v28 = v21 + v26;
    v29 = v50;
    sub_26C3DDD48(v28, v50, &qword_280497458, &unk_26C46D3F0);
    sub_26C3DDD48(v18 + v26, v29 + v27, &qword_280497458, &unk_26C46D3F0);
    v30 = *v44;
    v31 = v47;
    if ((*v44)(v29, 1, v47) == 1)
    {
      v32 = v30(v29 + v27, 1, v31) == 1;
      v33 = v29;
      v21 = v45;
      v18 = v46;
      if (!v32)
      {
        goto LABEL_21;
      }

      goto LABEL_13;
    }

    sub_26C3DDD48(v29, v12, &qword_280497458, &unk_26C46D3F0);
    if (v30(v29 + v27, 1, v31) == 1)
    {
      break;
    }

    v34 = v42;
    sub_26C453E5C(v29 + v27, v42, type metadata accessor for PBUUID);
    if (*v12 != *v34 || v12[1] != v34[1])
    {
      sub_26C453DFC(v34, type metadata accessor for PBUUID);
      v21 = v45;
      v18 = v46;
LABEL_19:
      sub_26C453DFC(v12, type metadata accessor for PBUUID);
      v39 = &qword_280497458;
      v40 = &unk_26C46D3F0;
      v33 = v50;
      goto LABEL_22;
    }

    v35 = *(v47 + 24);
    sub_26C46BD24();
    sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
    v36 = sub_26C46C1C4();
    sub_26C453DFC(v34, type metadata accessor for PBUUID);
    v21 = v45;
    v18 = v46;
    if ((v36 & 1) == 0)
    {
      goto LABEL_19;
    }

    sub_26C453DFC(v12, type metadata accessor for PBUUID);
    v33 = v50;
LABEL_13:
    sub_26C3DE270(v33, &qword_280497458, &unk_26C46D3F0);
    if (*v21 != *v18)
    {
      goto LABEL_23;
    }

    v37 = *(v51 + 20);
    sub_26C46BD24();
    sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
    v38 = sub_26C46C1C4();
    sub_26C453DFC(v18, type metadata accessor for LamportTimestamp);
    sub_26C453DFC(v21, type metadata accessor for LamportTimestamp);
    if (v38)
    {
      v25 += v43;
      v24 = v49 + v43;
      if (--v22)
      {
        continue;
      }
    }

    return v38 & 1;
  }

  sub_26C453DFC(v12, type metadata accessor for PBUUID);
  v33 = v29;
  v21 = v45;
  v18 = v46;
LABEL_21:
  v39 = &qword_2804980C0;
  v40 = &unk_26C470BD0;
LABEL_22:
  sub_26C3DE270(v33, v39, v40);
LABEL_23:
  sub_26C453DFC(v18, type metadata accessor for LamportTimestamp);
  sub_26C453DFC(v21, type metadata accessor for LamportTimestamp);
LABEL_24:
  v38 = 0;
  return v38 & 1;
}

uint64_t sub_26C449A60(uint64_t a1, uint64_t a2)
{
  v112[3] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for PBUUID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v98 = (&v89 - v11);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980C0, &unk_26C470BD0);
  v12 = *(*(v100 - 8) + 64);
  MEMORY[0x28223BE20](v100);
  v102 = &v89 - v13;
  v101 = type metadata accessor for LamportTimestamp(0);
  v14 = *(v101 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v101);
  v103 = (&v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v109 = (&v89 - v19);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498118, &qword_26C470C28);
  v20 = *(*(v105 - 8) + 64);
  MEMORY[0x28223BE20](v105);
  v22 = &v89 - v21;
  v104 = type metadata accessor for DictionaryCatchupData.TombstoneTimestamp(0);
  v23 = *(*(v104 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v104);
  v110 = (&v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24);
  v28 = (&v89 - v27);
  v29 = *(a1 + 16);
  if (v29 != *(a2 + 16))
  {
    goto LABEL_86;
  }

  if (!v29 || a1 == a2)
  {
    v84 = 1;
    goto LABEL_87;
  }

  v92 = v8;
  v96 = 0;
  v30 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v31 = a1 + v30;
  v99 = (v14 + 48);
  v32 = a2 + v30;
  v93 = (v5 + 48);
  v97 = *(v26 + 72);
  v33 = v101;
  v34 = v104;
  v95 = v4;
  v94 = v22;
  while (1)
  {
    v108 = v31;
    sub_26C455474(v31, v28, type metadata accessor for DictionaryCatchupData.TombstoneTimestamp);
    if (!v29)
    {
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
    }

    v107 = v32;
    v35 = v110;
    sub_26C455474(v32, v110, type metadata accessor for DictionaryCatchupData.TombstoneTimestamp);
    v36 = *v28;
    v37 = v28[1];
    v38 = *v35;
    v39 = v35[1];
    v40 = v37 >> 62;
    v41 = v39 >> 62;
    if (v37 >> 62 == 3)
    {
      v42 = 0;
      if (!v36 && v37 == 0xC000000000000000 && v39 >> 62 == 3)
      {
        v42 = 0;
        if (!v38 && v39 == 0xC000000000000000)
        {
          goto LABEL_56;
        }
      }

LABEL_22:
      if (v41 <= 1)
      {
        goto LABEL_23;
      }

      goto LABEL_16;
    }

    if (v40 > 1)
    {
      if (v40 == 2)
      {
        v48 = *(v36 + 16);
        v47 = *(v36 + 24);
        v45 = __OFSUB__(v47, v48);
        v42 = v47 - v48;
        if (v45)
        {
          goto LABEL_91;
        }

        goto LABEL_22;
      }

      v42 = 0;
      if (v41 <= 1)
      {
        goto LABEL_23;
      }
    }

    else if (v40)
    {
      LODWORD(v42) = HIDWORD(v36) - v36;
      if (__OFSUB__(HIDWORD(v36), v36))
      {
        goto LABEL_92;
      }

      v42 = v42;
      if (v41 <= 1)
      {
LABEL_23:
        if (v41)
        {
          LODWORD(v46) = HIDWORD(v38) - v38;
          if (__OFSUB__(HIDWORD(v38), v38))
          {
            goto LABEL_90;
          }

          v46 = v46;
        }

        else
        {
          v46 = BYTE6(v39);
        }

        goto LABEL_29;
      }
    }

    else
    {
      v42 = BYTE6(v37);
      if (v41 <= 1)
      {
        goto LABEL_23;
      }
    }

LABEL_16:
    if (v41 != 2)
    {
      if (v42)
      {
        goto LABEL_85;
      }

      goto LABEL_56;
    }

    v44 = *(v38 + 16);
    v43 = *(v38 + 24);
    v45 = __OFSUB__(v43, v44);
    v46 = v43 - v44;
    if (v45)
    {
      goto LABEL_89;
    }

LABEL_29:
    if (v42 != v46)
    {
      goto LABEL_85;
    }

    if (v42 < 1)
    {
      goto LABEL_56;
    }

    if (v40 > 1)
    {
      if (v40 != 2)
      {
        memset(v112, 0, 14);
LABEL_48:
        v60 = v96;
        sub_26C44D924(v112, v38, v39, &v111);
        v96 = v60;
        if (!v111)
        {
          goto LABEL_85;
        }

        goto LABEL_56;
      }

      v106 = *v35;
      v49 = *(v36 + 16);
      v91 = *(v36 + 24);
      v50 = sub_26C46BA04();
      if (v50)
      {
        v51 = v50;
        v52 = sub_26C46BA24();
        if (__OFSUB__(v49, v52))
        {
          goto LABEL_95;
        }

        v90 = v49 - v52 + v51;
      }

      else
      {
        v90 = 0;
      }

      if (__OFSUB__(v91, v49))
      {
        goto LABEL_94;
      }

      sub_26C46BA14();
      v61 = v90;
    }

    else
    {
      if (!v40)
      {
        v112[0] = *v28;
        LOWORD(v112[1]) = v37;
        BYTE2(v112[1]) = BYTE2(v37);
        BYTE3(v112[1]) = BYTE3(v37);
        BYTE4(v112[1]) = BYTE4(v37);
        BYTE5(v112[1]) = BYTE5(v37);
        goto LABEL_48;
      }

      v106 = *v35;
      v53 = v36;
      v54 = v36 >> 32;
      v91 = v54 - v53;
      if (v54 < v53)
      {
        goto LABEL_93;
      }

      v55 = sub_26C46BA04();
      if (v55)
      {
        v56 = v33;
        v57 = v55;
        v58 = sub_26C46BA24();
        if (__OFSUB__(v53, v58))
        {
          goto LABEL_96;
        }

        v59 = v53 - v58 + v57;
        v33 = v56;
      }

      else
      {
        v59 = 0;
      }

      sub_26C46BA14();
      v61 = v59;
    }

    v62 = v96;
    sub_26C44D924(v61, v106, v39, v112);
    v96 = v62;
    v34 = v104;
    if ((v112[0] & 1) == 0)
    {
      goto LABEL_85;
    }

LABEL_56:
    v106 = v29;
    v63 = *(v34 + 24);
    v64 = *(v105 + 48);
    sub_26C3DDD48(v28 + v63, v22, &qword_280497468, &unk_26C46D400);
    sub_26C3DDD48(v110 + v63, &v22[v64], &qword_280497468, &unk_26C46D400);
    v65 = *v99;
    if ((*v99)(v22, 1, v33) == 1)
    {
      if (v65(&v22[v64], 1, v33) != 1)
      {
        goto LABEL_76;
      }

      goto LABEL_71;
    }

    v66 = v109;
    sub_26C3DDD48(v22, v109, &qword_280497468, &unk_26C46D400);
    v67 = v65(&v22[v64], 1, v33);
    v68 = v95;
    v69 = v103;
    if (v67 == 1)
    {
      break;
    }

    sub_26C453E5C(&v22[v64], v103, type metadata accessor for LamportTimestamp);
    v70 = *(v33 + 24);
    v71 = *(v100 + 48);
    v72 = v102;
    sub_26C3DDD48(v66 + v70, v102, &qword_280497458, &unk_26C46D3F0);
    sub_26C3DDD48(v69 + v70, v72 + v71, &qword_280497458, &unk_26C46D3F0);
    v73 = *v93;
    if ((*v93)(v72, 1, v68) == 1)
    {
      v74 = v73(v72 + v71, 1, v68);
      v75 = v109;
      v34 = v104;
      if (v74 != 1)
      {
        goto LABEL_80;
      }
    }

    else
    {
      v76 = v98;
      sub_26C3DDD48(v72, v98, &qword_280497458, &unk_26C46D3F0);
      v77 = v73(v72 + v71, 1, v68);
      v34 = v104;
      if (v77 == 1)
      {
        sub_26C453DFC(v76, type metadata accessor for PBUUID);
        v69 = v103;
        v75 = v109;
LABEL_80:
        sub_26C3DE270(v72, &qword_2804980C0, &unk_26C470BD0);
        goto LABEL_81;
      }

      v78 = v92;
      sub_26C453E5C(v72 + v71, v92, type metadata accessor for PBUUID);
      if (*v76 != *v78 || v76[1] != v78[1])
      {
        sub_26C453DFC(v78, type metadata accessor for PBUUID);
LABEL_78:
        sub_26C453DFC(v76, type metadata accessor for PBUUID);
        sub_26C3DE270(v102, &qword_280497458, &unk_26C46D3F0);
        v69 = v103;
        v75 = v109;
LABEL_81:
        v22 = v94;
LABEL_82:
        sub_26C453DFC(v69, type metadata accessor for LamportTimestamp);
LABEL_83:
        sub_26C453DFC(v75, type metadata accessor for LamportTimestamp);
        v85 = &qword_280497468;
        v86 = &unk_26C46D400;
        goto LABEL_84;
      }

      v79 = *(v68 + 24);
      sub_26C46BD24();
      sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
      LOBYTE(v79) = sub_26C46C1C4();
      sub_26C453DFC(v78, type metadata accessor for PBUUID);
      if ((v79 & 1) == 0)
      {
        goto LABEL_78;
      }

      sub_26C453DFC(v76, type metadata accessor for PBUUID);
      v72 = v102;
      v69 = v103;
      v75 = v109;
    }

    sub_26C3DE270(v72, &qword_280497458, &unk_26C46D3F0);
    v22 = v94;
    if (*v75 != *v69)
    {
      goto LABEL_82;
    }

    v33 = v101;
    v80 = *(v101 + 20);
    sub_26C46BD24();
    sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
    v81 = sub_26C46C1C4();
    v75 = v109;
    LOBYTE(v80) = v81;
    sub_26C453DFC(v69, type metadata accessor for LamportTimestamp);
    if ((v80 & 1) == 0)
    {
      goto LABEL_83;
    }

    sub_26C453DFC(v75, type metadata accessor for LamportTimestamp);
LABEL_71:
    sub_26C3DE270(v22, &qword_280497468, &unk_26C46D400);
    v82 = *(v34 + 20);
    sub_26C46BD24();
    sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
    v83 = v110;
    v84 = sub_26C46C1C4();
    sub_26C453DFC(v83, type metadata accessor for DictionaryCatchupData.TombstoneTimestamp);
    sub_26C453DFC(v28, type metadata accessor for DictionaryCatchupData.TombstoneTimestamp);
    if (v84)
    {
      v29 = v106 - 1;
      v32 = v107 + v97;
      v31 = v108 + v97;
      if (v106 != 1)
      {
        continue;
      }
    }

    goto LABEL_87;
  }

  sub_26C453DFC(v66, type metadata accessor for LamportTimestamp);
LABEL_76:
  v85 = &qword_280498118;
  v86 = &qword_26C470C28;
LABEL_84:
  sub_26C3DE270(v22, v85, v86);
LABEL_85:
  sub_26C453DFC(v110, type metadata accessor for DictionaryCatchupData.TombstoneTimestamp);
  sub_26C453DFC(v28, type metadata accessor for DictionaryCatchupData.TombstoneTimestamp);
LABEL_86:
  v84 = 0;
LABEL_87:
  v87 = *MEMORY[0x277D85DE8];
  return v84 & 1;
}

uint64_t sub_26C44A748(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ValueData(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v99 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497470, &unk_26C46E870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v105 = &v88 - v10;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498120, &unk_26C470C30);
  v11 = *(*(v104 - 8) + 64);
  MEMORY[0x28223BE20](v104);
  v13 = &v88 - v12;
  v100 = type metadata accessor for PBUUID(0);
  v103 = *(v100 - 8);
  v14 = *(v103 + 64);
  MEMORY[0x28223BE20](v100);
  v96 = (&v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v97 = (&v88 - v18);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980C0, &unk_26C470BD0);
  v19 = *(*(v101 - 8) + 64);
  MEMORY[0x28223BE20](v101);
  v21 = &v88 - v20;
  v109 = type metadata accessor for LamportTimestamp(0);
  v22 = *(v109 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v109);
  v106 = (&v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v107 = (&v88 - v27);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498118, &qword_26C470C28);
  v28 = *(*(v108 - 8) + 64);
  MEMORY[0x28223BE20](v108);
  v30 = &v88 - v29;
  v110 = type metadata accessor for PropertyChangedMessage(0);
  v31 = *(*(v110 - 1) + 64);
  v32 = MEMORY[0x28223BE20](v110);
  v112 = (&v88 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v32);
  v36 = &v88 - v35;
  v37 = *(a1 + 16);
  if (v37 != *(a2 + 16))
  {
LABEL_42:
    v81 = 0;
    return v81 & 1;
  }

  if (!v37 || a1 == a2)
  {
    v81 = 1;
    return v81 & 1;
  }

  v38 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v39 = a1 + v38;
  v40 = a2 + v38;
  v41 = (v22 + 48);
  v42 = v40;
  v94 = v4;
  v95 = v41;
  v90 = (v103 + 48);
  v93 = (v5 + 48);
  v91 = *(v34 + 72);
  v98 = v21;
  v111 = (&v88 - v35);
  v89 = v13;
  v92 = v30;
  while (1)
  {
    result = sub_26C455474(v39, v36, type metadata accessor for PropertyChangedMessage);
    if (!v37)
    {
      break;
    }

    v102 = v42;
    v103 = v39;
    v44 = v112;
    sub_26C455474(v42, v112, type metadata accessor for PropertyChangedMessage);
    v45 = v110[6];
    v46 = *(v108 + 48);
    sub_26C3DDD48(&v36[v45], v30, &qword_280497468, &unk_26C46D400);
    sub_26C3DDD48(v44 + v45, &v30[v46], &qword_280497468, &unk_26C46D400);
    v47 = *v95;
    v48 = v109;
    if ((*v95)(v30, 1, v109) == 1)
    {
      if (v47(&v30[v46], 1, v48) != 1)
      {
        goto LABEL_31;
      }

      sub_26C3DE270(v30, &qword_280497468, &unk_26C46D400);
    }

    else
    {
      v49 = v107;
      sub_26C3DDD48(v30, v107, &qword_280497468, &unk_26C46D400);
      if (v47(&v30[v46], 1, v48) == 1)
      {
        sub_26C453DFC(v49, type metadata accessor for LamportTimestamp);
LABEL_31:
        v83 = &qword_280498118;
        v84 = &qword_26C470C28;
        goto LABEL_39;
      }

      v50 = &v30[v46];
      v51 = v48;
      v52 = v106;
      sub_26C453E5C(v50, v106, type metadata accessor for LamportTimestamp);
      v53 = *(v51 + 24);
      v54 = *(v101 + 48);
      sub_26C3DDD48(v49 + v53, v21, &qword_280497458, &unk_26C46D3F0);
      sub_26C3DDD48(v52 + v53, &v21[v54], &qword_280497458, &unk_26C46D3F0);
      v55 = *v90;
      v56 = v100;
      if ((*v90)(v21, 1, v100) == 1)
      {
        v57 = v55(&v21[v54], 1, v56);
        v58 = v107;
        if (v57 != 1)
        {
          goto LABEL_36;
        }

        sub_26C3DE270(v21, &qword_280497458, &unk_26C46D3F0);
        v59 = v106;
      }

      else
      {
        v60 = v97;
        sub_26C3DDD48(v21, v97, &qword_280497458, &unk_26C46D3F0);
        if (v55(&v21[v54], 1, v56) == 1)
        {
          sub_26C453DFC(v60, type metadata accessor for PBUUID);
          v58 = v107;
LABEL_36:
          v85 = &qword_2804980C0;
          v86 = &unk_26C470BD0;
          goto LABEL_37;
        }

        v61 = &v21[v54];
        v62 = v96;
        sub_26C453E5C(v61, v96, type metadata accessor for PBUUID);
        v58 = v107;
        if (*v60 != *v62 || v60[1] != v62[1])
        {
          sub_26C453DFC(v62, type metadata accessor for PBUUID);
          sub_26C453DFC(v60, type metadata accessor for PBUUID);
          v85 = &qword_280497458;
          v86 = &unk_26C46D3F0;
LABEL_37:
          sub_26C3DE270(v21, v85, v86);
          v59 = v106;
LABEL_38:
          sub_26C453DFC(v59, type metadata accessor for LamportTimestamp);
          sub_26C453DFC(v58, type metadata accessor for LamportTimestamp);
          v83 = &qword_280497468;
          v84 = &unk_26C46D400;
LABEL_39:
          v87 = v30;
LABEL_40:
          sub_26C3DE270(v87, v83, v84);
LABEL_41:
          sub_26C453DFC(v112, type metadata accessor for PropertyChangedMessage);
          sub_26C453DFC(v111, type metadata accessor for PropertyChangedMessage);
          goto LABEL_42;
        }

        v63 = v60;
        v64 = *(v56 + 24);
        sub_26C46BD24();
        v65 = v62;
        sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
        v66 = sub_26C46C1C4();
        sub_26C453DFC(v65, type metadata accessor for PBUUID);
        sub_26C453DFC(v63, type metadata accessor for PBUUID);
        sub_26C3DE270(v98, &qword_280497458, &unk_26C46D3F0);
        v59 = v106;
        v13 = v89;
        if ((v66 & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      if (*v58 != *v59)
      {
        goto LABEL_38;
      }

      v67 = *(v109 + 20);
      sub_26C46BD24();
      sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
      v68 = sub_26C46C1C4();
      sub_26C453DFC(v59, type metadata accessor for LamportTimestamp);
      sub_26C453DFC(v58, type metadata accessor for LamportTimestamp);
      sub_26C3DE270(v30, &qword_280497468, &unk_26C46D400);
      if ((v68 & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    if (*v111 != *v112)
    {
      goto LABEL_41;
    }

    v69 = v110[7];
    v70 = v105;
    v71 = *(v104 + 48);
    sub_26C3DDD48(v111 + v69, v13, &qword_280497470, &unk_26C46E870);
    sub_26C3DDD48(v112 + v69, &v13[v71], &qword_280497470, &unk_26C46E870);
    v72 = *v93;
    v73 = v13;
    v74 = v13;
    v75 = v94;
    if ((*v93)(v73, 1, v94) == 1)
    {
      if (v72((v74 + v71), 1, v75) != 1)
      {
        goto LABEL_34;
      }

      sub_26C3DE270(v74, &qword_280497470, &unk_26C46E870);
      v13 = v74;
      v21 = v98;
      v30 = v92;
    }

    else
    {
      sub_26C3DDD48(v74, v70, &qword_280497470, &unk_26C46E870);
      if (v72((v74 + v71), 1, v75) == 1)
      {
        sub_26C453DFC(v70, type metadata accessor for ValueData);
LABEL_34:
        v83 = &qword_280498120;
        v84 = &unk_26C470C30;
        v87 = v74;
        goto LABEL_40;
      }

      v76 = v99;
      sub_26C453E5C(v74 + v71, v99, type metadata accessor for ValueData);
      v77 = sub_26C452F50(v70, v76);
      sub_26C453DFC(v76, type metadata accessor for ValueData);
      sub_26C453DFC(v70, type metadata accessor for ValueData);
      sub_26C3DE270(v74, &qword_280497470, &unk_26C46E870);
      v13 = v74;
      v21 = v98;
      v30 = v92;
      if ((v77 & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    v78 = v110[5];
    sub_26C46BD24();
    sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
    v79 = v111;
    v80 = v112;
    v81 = sub_26C46C1C4();
    sub_26C453DFC(v80, type metadata accessor for PropertyChangedMessage);
    sub_26C453DFC(v79, type metadata accessor for PropertyChangedMessage);
    if (v81)
    {
      v42 = v102 + v91;
      v39 = v103 + v91;
      v82 = v37-- == 1;
      v36 = v111;
      if (!v82)
      {
        continue;
      }
    }

    return v81 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_26C44B3E0(uint64_t a1, uint64_t a2)
{
  __s1[3] = *MEMORY[0x277D85DE8];
  v284 = type metadata accessor for ValueData(0);
  v4 = *(v284 - 1);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v284);
  v281 = (&v240 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v240 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v283 = (&v240 - v12);
  MEMORY[0x28223BE20](v11);
  v14 = (&v240 - v13);
  v15 = type metadata accessor for PBUUID(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v258 = (&v240 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x28223BE20](v18);
  v260 = (&v240 - v21);
  v22 = MEMORY[0x28223BE20](v20);
  v264 = (&v240 - v23);
  v24 = MEMORY[0x28223BE20](v22);
  v266 = (&v240 - v25);
  MEMORY[0x28223BE20](v24);
  v256 = (&v240 - v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v259 = (&v240 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = MEMORY[0x28223BE20](v29);
  v261 = (&v240 - v32);
  v33 = MEMORY[0x28223BE20](v31);
  v265 = (&v240 - v34);
  v35 = MEMORY[0x28223BE20](v33);
  v267 = (&v240 - v36);
  MEMORY[0x28223BE20](v35);
  v257 = (&v240 - v37);
  v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980C0, &unk_26C470BD0);
  v38 = *(*(v282 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v282);
  v269 = &v240 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v273 = &v240 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v272 = &v240 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v276 = &v240 - v46;
  MEMORY[0x28223BE20](v45);
  v262 = &v240 - v47;
  v275 = type metadata accessor for LamportTimestamp(0);
  v48 = *(v275 - 8);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v275);
  v270 = (&v240 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  v52 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51 - 8);
  v271 = (&v240 - v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498118, &qword_26C470C28);
  v55 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v280 = &v240 - v56;
  v274 = type metadata accessor for SetChangedMessage(0);
  v57 = *(*(v274 - 8) + 64);
  v58 = MEMORY[0x28223BE20](v274);
  v60 = &v240 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58);
  v279 = &v240 - v62;
  v63 = *(a1 + 16);
  if (v63 != *(a2 + 16))
  {
    goto LABEL_246;
  }

  if (!v63 || a1 == a2)
  {
    v226 = 1;
    goto LABEL_247;
  }

  v255 = v4;
  v64 = 0;
  v247 = 0;
  v65 = (*(v61 + 80) + 32) & ~*(v61 + 80);
  v66 = a1 + v65;
  v250 = a2 + v65;
  v249 = (v48 + 48);
  v278 = (v16 + 48);
  v67 = *(v61 + 72);
  v268 = v10;
  v277 = v14;
  v68 = v279;
  v69 = v280;
  v263 = v60;
  v254 = v54;
  v253 = v63;
  v242 = v66;
  v248 = v15;
  v241 = v67;
  while (1)
  {
    v70 = v64;
    v71 = v67 * v64;
    sub_26C455474(v66 + v67 * v64, v68, type metadata accessor for SetChangedMessage);
    v243 = v70;
    if (v70 == v253)
    {
      goto LABEL_255;
    }

    sub_26C455474(v250 + v71, v60, type metadata accessor for SetChangedMessage);
    v72 = *(v274 + 32);
    v73 = *(v54 + 48);
    sub_26C3DDD48(v68 + v72, v69, &qword_280497468, &unk_26C46D400);
    sub_26C3DDD48(&v60[v72], v69 + v73, &qword_280497468, &unk_26C46D400);
    v74 = *v249;
    v75 = v275;
    if ((*v249)(v69, 1, v275) == 1)
    {
      if (v74(v69 + v73, 1, v75) != 1)
      {
        goto LABEL_235;
      }

      sub_26C3DE270(v69, &qword_280497468, &unk_26C46D400);
      v76 = v255;
      v54 = v254;
      v77 = v248;
      goto LABEL_20;
    }

    v78 = v271;
    sub_26C3DDD48(v69, v271, &qword_280497468, &unk_26C46D400);
    if (v74(v69 + v73, 1, v75) == 1)
    {
      sub_26C453DFC(v78, type metadata accessor for LamportTimestamp);
LABEL_235:
      v234 = &qword_280498118;
      v235 = &qword_26C470C28;
      goto LABEL_252;
    }

    v79 = v270;
    sub_26C453E5C(v69 + v73, v270, type metadata accessor for LamportTimestamp);
    v80 = *(v75 + 24);
    v81 = *(v282 + 48);
    v82 = v262;
    sub_26C3DDD48(v78 + v80, v262, &qword_280497458, &unk_26C46D3F0);
    sub_26C3DDD48(v79 + v80, v82 + v81, &qword_280497458, &unk_26C46D3F0);
    v83 = *v278;
    v77 = v248;
    if ((*v278)(v82, 1, v248) != 1)
    {
      v88 = v257;
      sub_26C3DDD48(v82, v257, &qword_280497458, &unk_26C46D3F0);
      if (v83(v82 + v81, 1, v77) == 1)
      {
        sub_26C453DFC(v88, type metadata accessor for PBUUID);
        v85 = v82;
LABEL_249:
        v236 = &qword_2804980C0;
        v237 = &unk_26C470BD0;
      }

      else
      {
        v89 = v256;
        sub_26C453E5C(v82 + v81, v256, type metadata accessor for PBUUID);
        if (*v88 == *v89 && v88[1] == v89[1])
        {
          v90 = *(v77 + 24);
          sub_26C46BD24();
          sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
          v91 = sub_26C46C1C4();
          sub_26C453DFC(v89, type metadata accessor for PBUUID);
          sub_26C453DFC(v88, type metadata accessor for PBUUID);
          v86 = v270;
          sub_26C3DE270(v82, &qword_280497458, &unk_26C46D3F0);
          v87 = v271;
          v69 = v280;
          v54 = v254;
          if ((v91 & 1) == 0)
          {
            goto LABEL_251;
          }

          goto LABEL_18;
        }

        sub_26C453DFC(v89, type metadata accessor for PBUUID);
        sub_26C453DFC(v88, type metadata accessor for PBUUID);
        v236 = &qword_280497458;
        v237 = &unk_26C46D3F0;
        v85 = v82;
      }

      sub_26C3DE270(v85, v236, v237);
      v86 = v270;
      v87 = v271;
      v69 = v280;
LABEL_251:
      sub_26C453DFC(v86, type metadata accessor for LamportTimestamp);
      sub_26C453DFC(v87, type metadata accessor for LamportTimestamp);
      v234 = &qword_280497468;
      v235 = &unk_26C46D400;
LABEL_252:
      sub_26C3DE270(v69, v234, v235);
      goto LABEL_245;
    }

    v84 = v83(v82 + v81, 1, v77) == 1;
    v85 = v82;
    v54 = v254;
    if (!v84)
    {
      goto LABEL_249;
    }

    sub_26C3DE270(v82, &qword_280497458, &unk_26C46D3F0);
    v86 = v270;
    v87 = v271;
    v69 = v280;
LABEL_18:
    if (*v87 != *v86)
    {
      goto LABEL_251;
    }

    v92 = *(v275 + 20);
    sub_26C46BD24();
    sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
    v93 = sub_26C46C1C4();
    sub_26C453DFC(v86, type metadata accessor for LamportTimestamp);
    sub_26C453DFC(v87, type metadata accessor for LamportTimestamp);
    sub_26C3DE270(v69, &qword_280497468, &unk_26C46D400);
    v76 = v255;
    if ((v93 & 1) == 0)
    {
      goto LABEL_245;
    }

LABEL_20:
    if (*v68 != *v263)
    {
      goto LABEL_245;
    }

    v94 = *(v68 + 8);
    v95 = *(v263 + 1);
    v96 = *(v94 + 16);
    if (v96 != *(v95 + 16))
    {
      goto LABEL_245;
    }

    if (v96 && v94 != v95)
    {
      v97 = 0;
      v98 = (*(v76 + 80) + 32) & ~*(v76 + 80);
      v252 = v94 + v98;
      v251 = v95 + v98;
      v246 = v94;
      v245 = v95;
      v244 = v96;
      while (1)
      {
        v99 = v276;
        if (v97 >= *(v94 + 16))
        {
          __break(1u);
LABEL_254:
          __break(1u);
LABEL_255:
          __break(1u);
LABEL_256:
          __break(1u);
LABEL_257:
          __break(1u);
LABEL_258:
          __break(1u);
LABEL_259:
          __break(1u);
LABEL_260:
          __break(1u);
LABEL_261:
          __break(1u);
LABEL_262:
          __break(1u);
LABEL_263:
          __break(1u);
LABEL_264:
          __break(1u);
LABEL_265:
          __break(1u);
LABEL_266:
          __break(1u);
LABEL_267:
          __break(1u);
LABEL_268:
          __break(1u);
LABEL_269:
          __break(1u);
LABEL_270:
          __break(1u);
LABEL_271:
          __break(1u);
LABEL_272:
          __break(1u);
LABEL_273:
          __break(1u);
LABEL_274:
          __break(1u);
LABEL_275:
          __break(1u);
LABEL_276:
          __break(1u);
LABEL_277:
          __break(1u);
LABEL_278:
          __break(1u);
LABEL_279:
          __break(1u);
LABEL_280:
          __break(1u);
LABEL_281:
          __break(1u);
LABEL_282:
          __break(1u);
LABEL_283:
          __break(1u);
LABEL_284:
          __break(1u);
LABEL_285:
          __break(1u);
LABEL_286:
          __break(1u);
LABEL_287:
          __break(1u);
LABEL_288:
          __break(1u);
LABEL_289:
          __break(1u);
        }

        v100 = *(v76 + 72) * v97;
        sub_26C455474(v252 + v100, v14, type metadata accessor for ValueData);
        if (v97 >= *(v95 + 16))
        {
          goto LABEL_254;
        }

        v101 = v283;
        sub_26C455474(v251 + v100, v283, type metadata accessor for ValueData);
        v102 = v284[6];
        v103 = *(v282 + 48);
        sub_26C3DDD48(v14 + v102, v99, &qword_280497458, &unk_26C46D3F0);
        sub_26C3DDD48(v101 + v102, v99 + v103, &qword_280497458, &unk_26C46D3F0);
        v104 = *v278;
        if ((*v278)(v99, 1, v77) == 1)
        {
          if (v104(v99 + v103, 1, v77) != 1)
          {
            goto LABEL_227;
          }

          sub_26C3DE270(v99, &qword_280497458, &unk_26C46D3F0);
        }

        else
        {
          v105 = v267;
          sub_26C3DDD48(v99, v267, &qword_280497458, &unk_26C46D3F0);
          if (v104(v99 + v103, 1, v77) == 1)
          {
            sub_26C453DFC(v105, type metadata accessor for PBUUID);
LABEL_227:
            v227 = &qword_2804980C0;
            v228 = &unk_26C470BD0;
LABEL_228:
            v232 = v99;
            goto LABEL_232;
          }

          v106 = v266;
          sub_26C453E5C(v99 + v103, v266, type metadata accessor for PBUUID);
          if (*v105 != *v106 || v105[1] != v106[1])
          {
            sub_26C453DFC(v106, type metadata accessor for PBUUID);
            sub_26C453DFC(v105, type metadata accessor for PBUUID);
            v227 = &qword_280497458;
            v228 = &unk_26C46D3F0;
            goto LABEL_228;
          }

          v107 = *(v77 + 24);
          sub_26C46BD24();
          sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
          v108 = sub_26C46C1C4();
          sub_26C453DFC(v106, type metadata accessor for PBUUID);
          sub_26C453DFC(v105, type metadata accessor for PBUUID);
          sub_26C3DE270(v99, &qword_280497458, &unk_26C46D3F0);
          if ((v108 & 1) == 0)
          {
            goto LABEL_233;
          }
        }

        v109 = *v277;
        v110 = v277[1];
        v112 = *v283;
        v111 = v283[1];
        v113 = v110 >> 62;
        v114 = v111 >> 62;
        if (v110 >> 62 == 3)
        {
          break;
        }

        if (v113 > 1)
        {
          if (v113 == 2)
          {
            v121 = *(v109 + 16);
            v120 = *(v109 + 24);
            v118 = __OFSUB__(v120, v121);
            v115 = v120 - v121;
            if (v118)
            {
              goto LABEL_262;
            }

            goto LABEL_50;
          }

          v115 = 0;
          if (v114 <= 1)
          {
            goto LABEL_51;
          }
        }

        else if (v113)
        {
          LODWORD(v115) = HIDWORD(v109) - v109;
          if (__OFSUB__(HIDWORD(v109), v109))
          {
            goto LABEL_263;
          }

          v115 = v115;
          if (v114 <= 1)
          {
LABEL_51:
            if (v114)
            {
              LODWORD(v119) = HIDWORD(v112) - v112;
              if (__OFSUB__(HIDWORD(v112), v112))
              {
                goto LABEL_259;
              }

              v119 = v119;
            }

            else
            {
              v119 = BYTE6(v111);
            }

            goto LABEL_57;
          }
        }

        else
        {
          v115 = BYTE6(v110);
          if (v114 <= 1)
          {
            goto LABEL_51;
          }
        }

LABEL_44:
        if (v114 != 2)
        {
          if (v115)
          {
            goto LABEL_233;
          }

          goto LABEL_110;
        }

        v117 = *(v112 + 16);
        v116 = *(v112 + 24);
        v118 = __OFSUB__(v116, v117);
        v119 = v116 - v117;
        if (v118)
        {
          goto LABEL_258;
        }

LABEL_57:
        if (v115 != v119)
        {
          goto LABEL_233;
        }

        if (v115 < 1)
        {
          goto LABEL_110;
        }

        if (v113 > 1)
        {
          if (v113 == 2)
          {
            v128 = *(v109 + 16);
            v129 = *(v109 + 24);
            v130 = sub_26C46BA04();
            if (v130)
            {
              v131 = sub_26C46BA24();
              if (__OFSUB__(v128, v131))
              {
                goto LABEL_270;
              }

              v130 += v128 - v131;
            }

            if (__OFSUB__(v129, v128))
            {
              goto LABEL_265;
            }

            sub_26C46BA14();
            v132 = v130;
            v133 = v112;
            v134 = v111;
            v135 = v247;
            goto LABEL_84;
          }

          memset(__s1, 0, 14);
          if (!v114)
          {
LABEL_94:
            __s2 = v112;
            v286 = v111;
            v287 = BYTE2(v111);
            v288 = BYTE3(v111);
            v289 = BYTE4(v111);
            v290 = BYTE5(v111);
            if (memcmp(__s1, &__s2, BYTE6(v111)))
            {
              goto LABEL_233;
            }

            goto LABEL_110;
          }

          if (v114 == 2)
          {
            v139 = *(v112 + 16);
            v140 = *(v112 + 24);
            v126 = sub_26C46BA04();
            if (v126)
            {
              v141 = sub_26C46BA24();
              if (__OFSUB__(v139, v141))
              {
                goto LABEL_287;
              }

              v126 += v139 - v141;
            }

            v118 = __OFSUB__(v140, v139);
            v122 = v140 - v139;
            if (v118)
            {
              goto LABEL_277;
            }

            v127 = sub_26C46BA14();
            if (!v126)
            {
              goto LABEL_292;
            }
          }

          else
          {
            v122 = (v112 >> 32) - v112;
            if (v112 >> 32 < v112)
            {
              goto LABEL_275;
            }

            v145 = sub_26C46BA04();
            if (!v145)
            {
              sub_26C46BA14();
LABEL_291:
              __break(1u);
LABEL_292:
              __break(1u);
LABEL_293:
              __break(1u);
LABEL_294:
              __break(1u);
LABEL_295:
              sub_26C46BA14();
              __break(1u);
LABEL_296:
              sub_26C46BA14();
LABEL_297:
              __break(1u);
LABEL_298:
              __break(1u);
LABEL_299:
              __break(1u);
LABEL_300:
              __break(1u);
LABEL_301:
              result = sub_26C46BA14();
              __break(1u);
              return result;
            }

            v146 = v145;
            v147 = sub_26C46BA24();
            if (__OFSUB__(v112, v147))
            {
              goto LABEL_278;
            }

            v126 = (v112 - v147 + v146);
            v127 = sub_26C46BA14();
            v54 = v254;
            if (!v126)
            {
              goto LABEL_291;
            }
          }
        }

        else
        {
          if (v113)
          {
            v136 = v109;
            if (v109 >> 32 < v109)
            {
              goto LABEL_264;
            }

            v137 = sub_26C46BA04();
            if (v137)
            {
              v138 = sub_26C46BA24();
              if (__OFSUB__(v136, v138))
              {
                goto LABEL_271;
              }

              v137 += v136 - v138;
            }

            v135 = v247;
            sub_26C46BA14();
            v132 = v137;
            v133 = v112;
            v134 = v111;
LABEL_84:
            sub_26C44D924(v132, v133, v134, __s1);
            v247 = v135;
            v54 = v254;
            if ((__s1[0] & 1) == 0)
            {
              goto LABEL_233;
            }

            goto LABEL_110;
          }

          __s1[0] = *v277;
          LOWORD(__s1[1]) = v110;
          BYTE2(__s1[1]) = BYTE2(v110);
          BYTE3(__s1[1]) = BYTE3(v110);
          BYTE4(__s1[1]) = BYTE4(v110);
          BYTE5(__s1[1]) = BYTE5(v110);
          if (!v114)
          {
            goto LABEL_94;
          }

          if (v114 == 1)
          {
            v122 = (v112 >> 32) - v112;
            if (v112 >> 32 < v112)
            {
              goto LABEL_274;
            }

            v123 = sub_26C46BA04();
            if (!v123)
            {
              goto LABEL_295;
            }

            v124 = v123;
            v125 = sub_26C46BA24();
            if (__OFSUB__(v112, v125))
            {
              goto LABEL_279;
            }

            v126 = (v112 - v125 + v124);
            v127 = sub_26C46BA14();
            v54 = v254;
            if (!v126)
            {
              goto LABEL_294;
            }
          }

          else
          {
            v142 = *(v112 + 16);
            v143 = *(v112 + 24);
            v126 = sub_26C46BA04();
            if (v126)
            {
              v144 = sub_26C46BA24();
              if (__OFSUB__(v142, v144))
              {
                goto LABEL_286;
              }

              v126 += v142 - v144;
            }

            v118 = __OFSUB__(v143, v142);
            v122 = v143 - v142;
            if (v118)
            {
              goto LABEL_276;
            }

            v127 = sub_26C46BA14();
            v54 = v254;
            if (!v126)
            {
              goto LABEL_293;
            }
          }
        }

        if (v127 >= v122)
        {
          v148 = v122;
        }

        else
        {
          v148 = v127;
        }

        if (memcmp(__s1, v126, v148))
        {
          goto LABEL_233;
        }

LABEL_110:
        v149 = v284[7];
        v150 = *(v282 + 48);
        v151 = v272;
        sub_26C3DDD48(v277 + v149, v272, &qword_280497458, &unk_26C46D3F0);
        sub_26C3DDD48(v283 + v149, v151 + v150, &qword_280497458, &unk_26C46D3F0);
        if (v104(v151, 1, v77) == 1)
        {
          if (v104(v151 + v150, 1, v77) != 1)
          {
            goto LABEL_230;
          }

          sub_26C3DE270(v151, &qword_280497458, &unk_26C46D3F0);
        }

        else
        {
          v152 = v265;
          sub_26C3DDD48(v151, v265, &qword_280497458, &unk_26C46D3F0);
          if (v104(v151 + v150, 1, v77) == 1)
          {
            sub_26C453DFC(v152, type metadata accessor for PBUUID);
LABEL_230:
            v227 = &qword_2804980C0;
            v228 = &unk_26C470BD0;
LABEL_231:
            v232 = v151;
LABEL_232:
            sub_26C3DE270(v232, v227, v228);
LABEL_233:
            sub_26C453DFC(v283, type metadata accessor for ValueData);
            v233 = v277;
            goto LABEL_244;
          }

          v153 = v264;
          sub_26C453E5C(v151 + v150, v264, type metadata accessor for PBUUID);
          if (*v152 != *v153 || v152[1] != v153[1])
          {
            sub_26C453DFC(v153, type metadata accessor for PBUUID);
            sub_26C453DFC(v152, type metadata accessor for PBUUID);
            v227 = &qword_280497458;
            v228 = &unk_26C46D3F0;
            goto LABEL_231;
          }

          v154 = *(v77 + 24);
          sub_26C46BD24();
          sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
          v155 = sub_26C46C1C4();
          sub_26C453DFC(v153, type metadata accessor for PBUUID);
          sub_26C453DFC(v152, type metadata accessor for PBUUID);
          sub_26C3DE270(v151, &qword_280497458, &unk_26C46D3F0);
          if ((v155 & 1) == 0)
          {
            goto LABEL_233;
          }
        }

        v156 = v284[5];
        sub_26C46BD24();
        sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
        v14 = v277;
        v157 = v283;
        v158 = sub_26C46C1C4();
        sub_26C453DFC(v157, type metadata accessor for ValueData);
        sub_26C453DFC(v14, type metadata accessor for ValueData);
        v68 = v279;
        v69 = v280;
        v76 = v255;
        v94 = v246;
        v95 = v245;
        if ((v158 & 1) == 0)
        {
          goto LABEL_245;
        }

        if (v244 == ++v97)
        {
          goto LABEL_119;
        }
      }

      v115 = 0;
      if (!v109 && v110 == 0xC000000000000000 && v111 >> 62 == 3)
      {
        v115 = 0;
        if (!v112 && v111 == 0xC000000000000000)
        {
          goto LABEL_110;
        }
      }

LABEL_50:
      if (v114 <= 1)
      {
        goto LABEL_51;
      }

      goto LABEL_44;
    }

LABEL_119:
    v159 = *(v68 + 16);
    v160 = *(v263 + 2);
    v161 = *(v159 + 16);
    if (v161 != *(v160 + 16))
    {
      goto LABEL_245;
    }

    if (v161 && v159 != v160)
    {
      break;
    }

LABEL_218:
    v225 = *(v274 + 28);
    sub_26C46BD24();
    sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
    v60 = v263;
    v226 = sub_26C46C1C4();
    sub_26C453DFC(v60, type metadata accessor for SetChangedMessage);
    sub_26C453DFC(v68, type metadata accessor for SetChangedMessage);
    if (v226)
    {
      v64 = v243 + 1;
      v66 = v242;
      v67 = v241;
      if (v243 + 1 != v253)
      {
        continue;
      }
    }

    goto LABEL_247;
  }

  v162 = 0;
  v163 = (*(v76 + 80) + 32) & ~*(v76 + 80);
  v252 = v159 + v163;
  v251 = v160 + v163;
  v246 = v159;
  v245 = v160;
  v244 = v161;
  while (1)
  {
    if (v162 >= *(v159 + 16))
    {
      goto LABEL_256;
    }

    v164 = *(v76 + 72) * v162;
    v165 = v268;
    sub_26C455474(v252 + v164, v268, type metadata accessor for ValueData);
    if (v162 >= *(v160 + 16))
    {
      goto LABEL_257;
    }

    v166 = v281;
    sub_26C455474(v251 + v164, v281, type metadata accessor for ValueData);
    v167 = v284[6];
    v168 = *(v282 + 48);
    v169 = v273;
    sub_26C3DDD48(v165 + v167, v273, &qword_280497458, &unk_26C46D3F0);
    sub_26C3DDD48(v166 + v167, v169 + v168, &qword_280497458, &unk_26C46D3F0);
    v170 = *v278;
    if ((*v278)(v169, 1, v77) == 1)
    {
      if (v170(v169 + v168, 1, v77) != 1)
      {
        goto LABEL_238;
      }

      sub_26C3DE270(v169, &qword_280497458, &unk_26C46D3F0);
      goto LABEL_132;
    }

    v171 = v261;
    sub_26C3DDD48(v169, v261, &qword_280497458, &unk_26C46D3F0);
    if (v170(v169 + v168, 1, v77) == 1)
    {
      break;
    }

    v172 = v260;
    sub_26C453E5C(v169 + v168, v260, type metadata accessor for PBUUID);
    if (*v171 != *v172 || v171[1] != v172[1])
    {
      sub_26C453DFC(v172, type metadata accessor for PBUUID);
      sub_26C453DFC(v171, type metadata accessor for PBUUID);
      v229 = &qword_280497458;
      v230 = &unk_26C46D3F0;
      v231 = v273;
      goto LABEL_242;
    }

    v173 = *(v77 + 24);
    sub_26C46BD24();
    sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
    v174 = sub_26C46C1C4();
    sub_26C453DFC(v172, type metadata accessor for PBUUID);
    sub_26C453DFC(v171, type metadata accessor for PBUUID);
    sub_26C3DE270(v273, &qword_280497458, &unk_26C46D3F0);
    if ((v174 & 1) == 0)
    {
      goto LABEL_243;
    }

LABEL_132:
    v175 = *v268;
    v176 = v268[1];
    v178 = *v281;
    v177 = v281[1];
    v179 = v176 >> 62;
    v180 = v177 >> 62;
    if (v176 >> 62 == 3)
    {
      v181 = 0;
      if (!v175 && v176 == 0xC000000000000000 && v177 >> 62 == 3)
      {
        v181 = 0;
        if (!v178 && v177 == 0xC000000000000000)
        {
          goto LABEL_209;
        }
      }

LABEL_154:
      if (v180 <= 1)
      {
        goto LABEL_155;
      }

      goto LABEL_142;
    }

    if (v179 <= 1)
    {
      if (!v179)
      {
        v181 = BYTE6(v176);
        if (v180 <= 1)
        {
          goto LABEL_155;
        }

        goto LABEL_142;
      }

      LODWORD(v181) = HIDWORD(v175) - v175;
      if (__OFSUB__(HIDWORD(v175), v175))
      {
        goto LABEL_266;
      }

      v181 = v181;
      goto LABEL_154;
    }

    if (v179 == 2)
    {
      v186 = *(v175 + 16);
      v185 = *(v175 + 24);
      v118 = __OFSUB__(v185, v186);
      v181 = v185 - v186;
      if (v118)
      {
        goto LABEL_267;
      }

      goto LABEL_154;
    }

    v181 = 0;
    if (v180 <= 1)
    {
LABEL_155:
      if (v180)
      {
        LODWORD(v184) = HIDWORD(v178) - v178;
        if (__OFSUB__(HIDWORD(v178), v178))
        {
          goto LABEL_260;
        }

        v184 = v184;
      }

      else
      {
        v184 = BYTE6(v177);
      }

      goto LABEL_159;
    }

LABEL_142:
    if (v180 != 2)
    {
      if (v181)
      {
        goto LABEL_243;
      }

      goto LABEL_209;
    }

    v183 = *(v178 + 16);
    v182 = *(v178 + 24);
    v118 = __OFSUB__(v182, v183);
    v184 = v182 - v183;
    if (v118)
    {
      goto LABEL_261;
    }

LABEL_159:
    if (v181 != v184)
    {
      goto LABEL_243;
    }

    if (v181 < 1)
    {
      goto LABEL_209;
    }

    if (v179 > 1)
    {
      if (v179 == 2)
      {
        v193 = *(v175 + 16);
        v194 = *(v175 + 24);
        v195 = sub_26C46BA04();
        if (v195)
        {
          v196 = sub_26C46BA24();
          if (__OFSUB__(v193, v196))
          {
            goto LABEL_272;
          }

          v195 += v193 - v196;
        }

        if (__OFSUB__(v194, v193))
        {
          goto LABEL_269;
        }

        sub_26C46BA14();
        v197 = v195;
        v198 = v178;
        v199 = v177;
        v200 = v247;
        goto LABEL_183;
      }

      memset(__s1, 0, 14);
      if (!v180)
      {
LABEL_193:
        __s2 = v178;
        v286 = v177;
        v287 = BYTE2(v177);
        v288 = BYTE3(v177);
        v289 = BYTE4(v177);
        v290 = BYTE5(v177);
        if (memcmp(__s1, &__s2, BYTE6(v177)))
        {
          goto LABEL_243;
        }

        goto LABEL_209;
      }

      if (v180 == 2)
      {
        v204 = *(v178 + 16);
        v205 = *(v178 + 24);
        v191 = sub_26C46BA04();
        if (v191)
        {
          v206 = sub_26C46BA24();
          if (__OFSUB__(v204, v206))
          {
            goto LABEL_289;
          }

          v191 += v204 - v206;
        }

        v118 = __OFSUB__(v205, v204);
        v187 = v205 - v204;
        if (v118)
        {
          goto LABEL_283;
        }

        v192 = sub_26C46BA14();
        v54 = v254;
        if (!v191)
        {
          goto LABEL_298;
        }
      }

      else
      {
        v187 = (v178 >> 32) - v178;
        if (v178 >> 32 < v178)
        {
          goto LABEL_280;
        }

        v210 = sub_26C46BA04();
        if (!v210)
        {
          goto LABEL_296;
        }

        v211 = v210;
        v212 = sub_26C46BA24();
        if (__OFSUB__(v178, v212))
        {
          goto LABEL_284;
        }

        v191 = (v178 - v212 + v211);
        v192 = sub_26C46BA14();
        v54 = v254;
        if (!v191)
        {
          goto LABEL_297;
        }
      }
    }

    else
    {
      if (v179)
      {
        v201 = v175;
        if (v175 >> 32 < v175)
        {
          goto LABEL_268;
        }

        v202 = sub_26C46BA04();
        if (v202)
        {
          v203 = sub_26C46BA24();
          if (__OFSUB__(v201, v203))
          {
            goto LABEL_273;
          }

          v202 += v201 - v203;
        }

        v200 = v247;
        sub_26C46BA14();
        v197 = v202;
        v198 = v178;
        v199 = v177;
LABEL_183:
        sub_26C44D924(v197, v198, v199, __s1);
        v247 = v200;
        v54 = v254;
        if ((__s1[0] & 1) == 0)
        {
          goto LABEL_243;
        }

        goto LABEL_209;
      }

      __s1[0] = *v268;
      LOWORD(__s1[1]) = v176;
      BYTE2(__s1[1]) = BYTE2(v176);
      BYTE3(__s1[1]) = BYTE3(v176);
      BYTE4(__s1[1]) = BYTE4(v176);
      BYTE5(__s1[1]) = BYTE5(v176);
      if (!v180)
      {
        goto LABEL_193;
      }

      if (v180 == 1)
      {
        v187 = (v178 >> 32) - v178;
        if (v178 >> 32 < v178)
        {
          goto LABEL_281;
        }

        v188 = sub_26C46BA04();
        if (!v188)
        {
          goto LABEL_301;
        }

        v189 = v188;
        v190 = sub_26C46BA24();
        if (__OFSUB__(v178, v190))
        {
          goto LABEL_285;
        }

        v191 = (v178 - v190 + v189);
        v192 = sub_26C46BA14();
        v54 = v254;
        if (!v191)
        {
          goto LABEL_300;
        }
      }

      else
      {
        v207 = *(v178 + 16);
        v208 = *(v178 + 24);
        v191 = sub_26C46BA04();
        if (v191)
        {
          v209 = sub_26C46BA24();
          if (__OFSUB__(v207, v209))
          {
            goto LABEL_288;
          }

          v191 += v207 - v209;
        }

        v118 = __OFSUB__(v208, v207);
        v187 = v208 - v207;
        if (v118)
        {
          goto LABEL_282;
        }

        v192 = sub_26C46BA14();
        v54 = v254;
        if (!v191)
        {
          goto LABEL_299;
        }
      }
    }

    if (v192 >= v187)
    {
      v213 = v187;
    }

    else
    {
      v213 = v192;
    }

    if (memcmp(__s1, v191, v213))
    {
      goto LABEL_243;
    }

LABEL_209:
    v214 = v284[7];
    v215 = *(v282 + 48);
    v216 = v269;
    sub_26C3DDD48(v268 + v214, v269, &qword_280497458, &unk_26C46D3F0);
    sub_26C3DDD48(v281 + v214, v216 + v215, &qword_280497458, &unk_26C46D3F0);
    if (v170(v216, 1, v77) == 1)
    {
      if (v170(v216 + v215, 1, v77) != 1)
      {
        goto LABEL_240;
      }

      sub_26C3DE270(v216, &qword_280497458, &unk_26C46D3F0);
    }

    else
    {
      v217 = v259;
      sub_26C3DDD48(v216, v259, &qword_280497458, &unk_26C46D3F0);
      if (v170(v216 + v215, 1, v77) == 1)
      {
        sub_26C453DFC(v217, type metadata accessor for PBUUID);
LABEL_240:
        v229 = &qword_2804980C0;
        v230 = &unk_26C470BD0;
        goto LABEL_241;
      }

      v218 = v258;
      sub_26C453E5C(v216 + v215, v258, type metadata accessor for PBUUID);
      if (*v217 != *v218 || v217[1] != v218[1])
      {
        sub_26C453DFC(v218, type metadata accessor for PBUUID);
        sub_26C453DFC(v217, type metadata accessor for PBUUID);
        v229 = &qword_280497458;
        v230 = &unk_26C46D3F0;
LABEL_241:
        v231 = v216;
        goto LABEL_242;
      }

      v219 = *(v77 + 24);
      sub_26C46BD24();
      sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
      v220 = sub_26C46C1C4();
      sub_26C453DFC(v218, type metadata accessor for PBUUID);
      sub_26C453DFC(v217, type metadata accessor for PBUUID);
      sub_26C3DE270(v216, &qword_280497458, &unk_26C46D3F0);
      if ((v220 & 1) == 0)
      {
        goto LABEL_243;
      }
    }

    v221 = v284[5];
    sub_26C46BD24();
    sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
    v222 = v268;
    v223 = v281;
    v224 = sub_26C46C1C4();
    sub_26C453DFC(v223, type metadata accessor for ValueData);
    sub_26C453DFC(v222, type metadata accessor for ValueData);
    v14 = v277;
    v68 = v279;
    v69 = v280;
    v76 = v255;
    v159 = v246;
    v160 = v245;
    if ((v224 & 1) == 0)
    {
      goto LABEL_245;
    }

    if (v244 == ++v162)
    {
      goto LABEL_218;
    }
  }

  sub_26C453DFC(v171, type metadata accessor for PBUUID);
LABEL_238:
  v229 = &qword_2804980C0;
  v230 = &unk_26C470BD0;
  v231 = v169;
LABEL_242:
  sub_26C3DE270(v231, v229, v230);
LABEL_243:
  sub_26C453DFC(v281, type metadata accessor for ValueData);
  v233 = v268;
LABEL_244:
  sub_26C453DFC(v233, type metadata accessor for ValueData);
  v68 = v279;
LABEL_245:
  sub_26C453DFC(v263, type metadata accessor for SetChangedMessage);
  sub_26C453DFC(v68, type metadata accessor for SetChangedMessage);
LABEL_246:
  v226 = 0;
LABEL_247:
  v238 = *MEMORY[0x277D85DE8];
  return v226 & 1;
}

uint64_t sub_26C44D76C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DictionaryChangedMessage(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = (&v19 - v10);
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_26C455474(v14, v11, type metadata accessor for DictionaryChangedMessage);
        sub_26C455474(v15, v8, type metadata accessor for DictionaryChangedMessage);
        v17 = sub_26C451934(v11, v8);
        sub_26C453DFC(v8, type metadata accessor for DictionaryChangedMessage);
        sub_26C453DFC(v11, type metadata accessor for DictionaryChangedMessage);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_26C44D924@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_26C46BA04();
    if (v10)
    {
      v11 = sub_26C46BA24();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_26C46BA14();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_26C46BA04();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_26C46BA24();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_26C46BA14();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_26C44DB54(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_26C44DCE4(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_26C3DDEA8(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_26C44D924(v14, a3, a4, &v13);
  v10 = v4;
  sub_26C3DDEA8(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t sub_26C44DCE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_26C46BA04();
  v11 = result;
  if (result)
  {
    result = sub_26C46BA24();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_26C46BA14();
  sub_26C44D924(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_26C44DD9C(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_26C3DDDB0(a3, a4);
          return sub_26C44DB54(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_26C44DF04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBUUID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v43 = (&v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v45 = (&v43 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v44 = (&v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v15 = (&v43 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980C0, &unk_26C470BD0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v47 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v43 - v20;
  v50 = type metadata accessor for ModelData(0);
  v22 = v50[8];
  v46 = v16;
  v23 = *(v16 + 48);
  v48 = a1;
  sub_26C3DDD48(a1 + v22, v21, &qword_280497458, &unk_26C46D3F0);
  v49 = a2;
  sub_26C3DDD48(a2 + v22, &v21[v23], &qword_280497458, &unk_26C46D3F0);
  v24 = *(v5 + 48);
  if (v24(v21, 1, v4) != 1)
  {
    sub_26C3DDD48(v21, v15, &qword_280497458, &unk_26C46D3F0);
    if (v24(&v21[v23], 1, v4) == 1)
    {
      v32 = v15;
LABEL_19:
      sub_26C453DFC(v32, type metadata accessor for PBUUID);
      goto LABEL_20;
    }

    v33 = v45;
    sub_26C453E5C(&v21[v23], v45, type metadata accessor for PBUUID);
    if (*v15 == *v33 && v15[1] == v33[1])
    {
      v34 = *(v4 + 24);
      sub_26C46BD24();
      sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
      v35 = sub_26C46C1C4();
      sub_26C453DFC(v33, type metadata accessor for PBUUID);
      if (v35)
      {
        sub_26C453DFC(v15, type metadata accessor for PBUUID);
        goto LABEL_3;
      }
    }

    else
    {
      sub_26C453DFC(v33, type metadata accessor for PBUUID);
    }

    v36 = v15;
    goto LABEL_27;
  }

  if (v24(&v21[v23], 1, v4) != 1)
  {
LABEL_20:
    v38 = &qword_2804980C0;
    v39 = &unk_26C470BD0;
LABEL_28:
    sub_26C3DE270(v21, v38, v39);
LABEL_29:
    v31 = 0;
    return v31 & 1;
  }

LABEL_3:
  sub_26C3DE270(v21, &qword_280497458, &unk_26C46D3F0);
  v25 = v50[9];
  v21 = v47;
  v26 = *(v46 + 48);
  v27 = v48;
  sub_26C3DDD48(v48 + v25, v47, &qword_280497458, &unk_26C46D3F0);
  v28 = v49;
  v29 = v4;
  sub_26C3DDD48(v49 + v25, &v21[v26], &qword_280497458, &unk_26C46D3F0);
  if (v24(v21, 1, v4) != 1)
  {
    v37 = v44;
    sub_26C3DDD48(v21, v44, &qword_280497458, &unk_26C46D3F0);
    if (v24(&v21[v26], 1, v4) == 1)
    {
      v32 = v37;
      goto LABEL_19;
    }

    v40 = v43;
    sub_26C453E5C(&v21[v26], v43, type metadata accessor for PBUUID);
    if (*v37 == *v40 && v37[1] == v40[1])
    {
      v41 = *(v29 + 24);
      sub_26C46BD24();
      sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
      LOBYTE(v41) = sub_26C46C1C4();
      sub_26C453DFC(v40, type metadata accessor for PBUUID);
      if (v41)
      {
        sub_26C453DFC(v37, type metadata accessor for PBUUID);
        goto LABEL_5;
      }
    }

    else
    {
      sub_26C453DFC(v40, type metadata accessor for PBUUID);
    }

    v36 = v37;
LABEL_27:
    sub_26C453DFC(v36, type metadata accessor for PBUUID);
    v38 = &qword_280497458;
    v39 = &unk_26C46D3F0;
    goto LABEL_28;
  }

  if (v24(&v21[v26], 1, v4) != 1)
  {
    goto LABEL_20;
  }

LABEL_5:
  sub_26C3DE270(v21, &qword_280497458, &unk_26C46D3F0);
  if (*v27 != *v28 || (sub_26C448318(*(v27 + 8), *(v28 + 8)) & 1) == 0 || (sub_26C448838(*(v27 + 16), *(v28 + 16)) & 1) == 0)
  {
    goto LABEL_29;
  }

  v30 = v50[7];
  sub_26C46BD24();
  sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
  v31 = sub_26C46C1C4();
  return v31 & 1;
}

uint64_t sub_26C44E5E0(void *a1, void *a2)
{
  v4 = type metadata accessor for PBUUID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v31 = (&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v29 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980C0, &unk_26C470BD0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - v15;
  v30 = type metadata accessor for ModelData.OwnershipUUIDToAccountIdentifier(0);
  v17 = *(v30 + 24);
  v18 = *(v13 + 56);
  v32 = a1;
  sub_26C3DDD48(a1 + v17, v16, &qword_280497458, &unk_26C46D3F0);
  sub_26C3DDD48(a2 + v17, &v16[v18], &qword_280497458, &unk_26C46D3F0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      goto LABEL_3;
    }

    goto LABEL_9;
  }

  sub_26C3DDD48(v16, v11, &qword_280497458, &unk_26C46D3F0);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_26C453DFC(v11, type metadata accessor for PBUUID);
LABEL_9:
    v23 = &qword_2804980C0;
    v24 = &unk_26C470BD0;
LABEL_16:
    sub_26C3DE270(v16, v23, v24);
    v21 = 0;
    return v21 & 1;
  }

  v25 = v31;
  sub_26C453E5C(&v16[v18], v31, type metadata accessor for PBUUID);
  if (*v11 != *v25 || v11[1] != v25[1])
  {
    sub_26C453DFC(v25, type metadata accessor for PBUUID);
    goto LABEL_15;
  }

  v26 = *(v4 + 24);
  sub_26C46BD24();
  sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
  v27 = sub_26C46C1C4();
  sub_26C453DFC(v25, type metadata accessor for PBUUID);
  if ((v27 & 1) == 0)
  {
LABEL_15:
    sub_26C453DFC(v11, type metadata accessor for PBUUID);
    v23 = &qword_280497458;
    v24 = &unk_26C46D3F0;
    goto LABEL_16;
  }

  sub_26C453DFC(v11, type metadata accessor for PBUUID);
LABEL_3:
  sub_26C3DE270(v16, &qword_280497458, &unk_26C46D3F0);
  if (*v32 == *a2 && v32[1] == a2[1] || (v20 = sub_26C46C764(), v21 = 0, (v20 & 1) != 0))
  {
    v22 = *(v30 + 20);
    sub_26C46BD24();
    sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
    v21 = sub_26C46C1C4();
  }

  return v21 & 1;
}

uint64_t sub_26C44EA1C(void *a1, uint64_t *a2)
{
  v75 = type metadata accessor for PBUUID(0);
  v4 = *(v75 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v75);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v66 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = (&v66 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v73 = (&v66 - v20);
  MEMORY[0x28223BE20](v19);
  v22 = (&v66 - v21);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980C0, &unk_26C470BD0);
  v23 = *(*(v74 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v74);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v66 - v26;
  MEMORY[0x28223BE20](v25);
  v30 = &v66 - v29;
  v31 = *a1;
  v32 = *a2;
  if (*(a2 + 8) != 1)
  {
    if (v31 != v32)
    {
      goto LABEL_31;
    }

    goto LABEL_11;
  }

  if (!v32)
  {
    if (!v31)
    {
      goto LABEL_11;
    }

LABEL_31:
    v50 = 0;
    return v50 & 1;
  }

  if (v32 != 1)
  {
    if (v31 == 2)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

  if (v31 != 1)
  {
    goto LABEL_31;
  }

LABEL_11:
  v68 = v18;
  v69 = v11;
  v70 = v28;
  v67 = v8;
  v33 = type metadata accessor for OwnershipChangeBroadcastMessage(0);
  v34 = *(v33 + 32);
  v35 = *(v74 + 48);
  v71 = a1;
  v72 = v33;
  sub_26C3DDD48(a1 + v34, v30, &qword_280497458, &unk_26C46D3F0);
  v36 = a2 + v34;
  v37 = a2;
  sub_26C3DDD48(v36, &v30[v35], &qword_280497458, &unk_26C46D3F0);
  v38 = *(v4 + 48);
  v39 = v75;
  if (v38(v30, 1, v75) == 1)
  {
    if (v38(&v30[v35], 1, v39) == 1)
    {
      goto LABEL_13;
    }

    goto LABEL_22;
  }

  sub_26C3DDD48(v30, v22, &qword_280497458, &unk_26C46D3F0);
  if (v38(&v30[v35], 1, v39) == 1)
  {
    sub_26C453DFC(v22, type metadata accessor for PBUUID);
LABEL_22:
    v51 = &qword_2804980C0;
    v52 = &unk_26C470BD0;
LABEL_29:
    v55 = v30;
LABEL_30:
    sub_26C3DE270(v55, v51, v52);
    goto LABEL_31;
  }

  sub_26C453E5C(&v30[v35], v13, type metadata accessor for PBUUID);
  if (*v22 != *v13 || v22[1] != v13[1])
  {
    sub_26C453DFC(v13, type metadata accessor for PBUUID);
    goto LABEL_28;
  }

  v53 = *(v39 + 24);
  sub_26C46BD24();
  sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
  v54 = sub_26C46C1C4();
  sub_26C453DFC(v13, type metadata accessor for PBUUID);
  if ((v54 & 1) == 0)
  {
LABEL_28:
    sub_26C453DFC(v22, type metadata accessor for PBUUID);
    v51 = &qword_280497458;
    v52 = &unk_26C46D3F0;
    goto LABEL_29;
  }

  sub_26C453DFC(v22, type metadata accessor for PBUUID);
LABEL_13:
  sub_26C3DE270(v30, &qword_280497458, &unk_26C46D3F0);
  v40 = v71;
  v41 = v72[9];
  v42 = *(v74 + 48);
  sub_26C3DDD48(v71 + v41, v27, &qword_280497458, &unk_26C46D3F0);
  v43 = v75;
  sub_26C3DDD48(v37 + v41, &v27[v42], &qword_280497458, &unk_26C46D3F0);
  if (v38(v27, 1, v43) == 1)
  {
    v44 = v38(&v27[v42], 1, v43);
    v45 = v70;
    if (v44 == 1)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

  v57 = v73;
  sub_26C3DDD48(v27, v73, &qword_280497458, &unk_26C46D3F0);
  v58 = v38(&v27[v42], 1, v43);
  v45 = v70;
  if (v58 == 1)
  {
    sub_26C453DFC(v57, type metadata accessor for PBUUID);
LABEL_35:
    v51 = &qword_2804980C0;
    v52 = &unk_26C470BD0;
    v55 = v27;
    goto LABEL_30;
  }

  v59 = v69;
  sub_26C453E5C(&v27[v42], v69, type metadata accessor for PBUUID);
  if (*v57 != *v59 || v57[1] != v59[1])
  {
    sub_26C453DFC(v59, type metadata accessor for PBUUID);
    goto LABEL_41;
  }

  v60 = *(v43 + 24);
  sub_26C46BD24();
  sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
  v61 = sub_26C46C1C4();
  sub_26C453DFC(v59, type metadata accessor for PBUUID);
  if ((v61 & 1) == 0)
  {
LABEL_41:
    sub_26C453DFC(v57, type metadata accessor for PBUUID);
    v51 = &qword_280497458;
    v52 = &unk_26C46D3F0;
    v55 = v27;
    goto LABEL_30;
  }

  sub_26C453DFC(v57, type metadata accessor for PBUUID);
LABEL_15:
  sub_26C3DE270(v27, &qword_280497458, &unk_26C46D3F0);
  v46 = v72[10];
  v47 = *(v74 + 48);
  sub_26C3DDD48(v40 + v46, v45, &qword_280497458, &unk_26C46D3F0);
  v48 = v75;
  sub_26C3DDD48(v37 + v46, v45 + v47, &qword_280497458, &unk_26C46D3F0);
  if (v38(v45, 1, v48) != 1)
  {
    v62 = v68;
    sub_26C3DDD48(v45, v68, &qword_280497458, &unk_26C46D3F0);
    if (v38((v45 + v47), 1, v48) != 1)
    {
      v63 = v67;
      sub_26C453E5C(v45 + v47, v67, type metadata accessor for PBUUID);
      if (*v62 == *v63 && v62[1] == v63[1])
      {
        v64 = *(v48 + 24);
        sub_26C46BD24();
        sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
        v65 = sub_26C46C1C4();
        sub_26C453DFC(v63, type metadata accessor for PBUUID);
        if (v65)
        {
          sub_26C453DFC(v62, type metadata accessor for PBUUID);
          goto LABEL_17;
        }
      }

      else
      {
        sub_26C453DFC(v63, type metadata accessor for PBUUID);
      }

      sub_26C453DFC(v62, type metadata accessor for PBUUID);
      v51 = &qword_280497458;
      v52 = &unk_26C46D3F0;
      v55 = v45;
      goto LABEL_30;
    }

    sub_26C453DFC(v62, type metadata accessor for PBUUID);
    goto LABEL_44;
  }

  if (v38((v45 + v47), 1, v48) != 1)
  {
LABEL_44:
    v51 = &qword_2804980C0;
    v52 = &unk_26C470BD0;
    v55 = v45;
    goto LABEL_30;
  }

LABEL_17:
  sub_26C3DE270(v45, &qword_280497458, &unk_26C46D3F0);
  if (*(v40 + 3) != *(v37 + 3) || *(v40 + 16) != *(v37 + 16))
  {
    goto LABEL_31;
  }

  v49 = v72[7];
  sub_26C46BD24();
  sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
  v50 = sub_26C46C1C4();
  return v50 & 1;
}

uint64_t sub_26C44F40C(void *a1, uint64_t *a2)
{
  v73 = type metadata accessor for PBUUID(0);
  v4 = *(v73 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v73);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v64 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = (&v64 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v71 = (&v64 - v20);
  MEMORY[0x28223BE20](v19);
  v22 = (&v64 - v21);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980C0, &unk_26C470BD0);
  v23 = *(*(v72 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v72);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v64 - v26;
  MEMORY[0x28223BE20](v25);
  v30 = &v64 - v29;
  v31 = *a1;
  v32 = *a2;
  if (*(a2 + 8) != 1)
  {
    if (v31 != v32)
    {
      goto LABEL_30;
    }

    goto LABEL_11;
  }

  if (!v32)
  {
    if (!v31)
    {
      goto LABEL_11;
    }

LABEL_30:
    v49 = 0;
    return v49 & 1;
  }

  if (v32 != 1)
  {
    if (v31 == 2)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

  if (v31 != 1)
  {
    goto LABEL_30;
  }

LABEL_11:
  v67 = v28;
  v68 = v11;
  v65 = v8;
  v66 = v18;
  v33 = type metadata accessor for OwnershipHandoffRequestMessage(0);
  v34 = *(v33 + 28);
  v35 = *(v72 + 48);
  v69 = a1;
  v70 = v33;
  sub_26C3DDD48(a1 + v34, v30, &qword_280497458, &unk_26C46D3F0);
  v36 = a2 + v34;
  v37 = a2;
  sub_26C3DDD48(v36, &v30[v35], &qword_280497458, &unk_26C46D3F0);
  v38 = *(v4 + 48);
  v39 = v73;
  if (v38(v30, 1, v73) == 1)
  {
    if (v38(&v30[v35], 1, v39) == 1)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

  sub_26C3DDD48(v30, v22, &qword_280497458, &unk_26C46D3F0);
  if (v38(&v30[v35], 1, v39) == 1)
  {
    sub_26C453DFC(v22, type metadata accessor for PBUUID);
LABEL_21:
    v50 = &qword_2804980C0;
    v51 = &unk_26C470BD0;
LABEL_28:
    v54 = v30;
LABEL_29:
    sub_26C3DE270(v54, v50, v51);
    goto LABEL_30;
  }

  sub_26C453E5C(&v30[v35], v13, type metadata accessor for PBUUID);
  if (*v22 != *v13 || v22[1] != v13[1])
  {
    sub_26C453DFC(v13, type metadata accessor for PBUUID);
    goto LABEL_27;
  }

  v52 = *(v39 + 24);
  sub_26C46BD24();
  sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
  v53 = sub_26C46C1C4();
  sub_26C453DFC(v13, type metadata accessor for PBUUID);
  if ((v53 & 1) == 0)
  {
LABEL_27:
    sub_26C453DFC(v22, type metadata accessor for PBUUID);
    v50 = &qword_280497458;
    v51 = &unk_26C46D3F0;
    goto LABEL_28;
  }

  sub_26C453DFC(v22, type metadata accessor for PBUUID);
LABEL_13:
  sub_26C3DE270(v30, &qword_280497458, &unk_26C46D3F0);
  v40 = v69;
  v41 = v70[8];
  v42 = *(v72 + 48);
  sub_26C3DDD48(v69 + v41, v27, &qword_280497458, &unk_26C46D3F0);
  v43 = v73;
  sub_26C3DDD48(v37 + v41, &v27[v42], &qword_280497458, &unk_26C46D3F0);
  if (v38(v27, 1, v43) == 1)
  {
    if (v38(&v27[v42], 1, v43) == 1)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

  v56 = v71;
  sub_26C3DDD48(v27, v71, &qword_280497458, &unk_26C46D3F0);
  if (v38(&v27[v42], 1, v43) == 1)
  {
    sub_26C453DFC(v56, type metadata accessor for PBUUID);
LABEL_34:
    v50 = &qword_2804980C0;
    v51 = &unk_26C470BD0;
    v54 = v27;
    goto LABEL_29;
  }

  v57 = v68;
  sub_26C453E5C(&v27[v42], v68, type metadata accessor for PBUUID);
  if (*v56 != *v57 || v56[1] != v57[1])
  {
    sub_26C453DFC(v57, type metadata accessor for PBUUID);
    goto LABEL_40;
  }

  v58 = *(v43 + 24);
  sub_26C46BD24();
  sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
  v59 = sub_26C46C1C4();
  sub_26C453DFC(v57, type metadata accessor for PBUUID);
  if ((v59 & 1) == 0)
  {
LABEL_40:
    sub_26C453DFC(v56, type metadata accessor for PBUUID);
    v50 = &qword_280497458;
    v51 = &unk_26C46D3F0;
    v54 = v27;
    goto LABEL_29;
  }

  sub_26C453DFC(v56, type metadata accessor for PBUUID);
LABEL_15:
  sub_26C3DE270(v27, &qword_280497458, &unk_26C46D3F0);
  if (*(v40 + 3) != *(v37 + 3))
  {
    goto LABEL_30;
  }

  v44 = v70[9];
  v45 = *(v72 + 48);
  v46 = v67;
  sub_26C3DDD48(v40 + v44, v67, &qword_280497458, &unk_26C46D3F0);
  v47 = v73;
  sub_26C3DDD48(v37 + v44, v46 + v45, &qword_280497458, &unk_26C46D3F0);
  if (v38(v46, 1, v47) != 1)
  {
    v60 = v66;
    sub_26C3DDD48(v46, v66, &qword_280497458, &unk_26C46D3F0);
    if (v38((v46 + v45), 1, v47) != 1)
    {
      v61 = v65;
      sub_26C453E5C(v46 + v45, v65, type metadata accessor for PBUUID);
      if (*v60 == *v61 && v60[1] == v61[1])
      {
        v62 = *(v47 + 24);
        sub_26C46BD24();
        sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
        v63 = sub_26C46C1C4();
        sub_26C453DFC(v61, type metadata accessor for PBUUID);
        if (v63)
        {
          sub_26C453DFC(v60, type metadata accessor for PBUUID);
          goto LABEL_18;
        }
      }

      else
      {
        sub_26C453DFC(v61, type metadata accessor for PBUUID);
      }

      sub_26C453DFC(v60, type metadata accessor for PBUUID);
      v50 = &qword_280497458;
      v51 = &unk_26C46D3F0;
      v54 = v46;
      goto LABEL_29;
    }

    sub_26C453DFC(v60, type metadata accessor for PBUUID);
    goto LABEL_43;
  }

  if (v38((v46 + v45), 1, v47) != 1)
  {
LABEL_43:
    v50 = &qword_2804980C0;
    v51 = &unk_26C470BD0;
    v54 = v46;
    goto LABEL_29;
  }

LABEL_18:
  sub_26C3DE270(v46, &qword_280497458, &unk_26C46D3F0);
  v48 = v70[6];
  sub_26C46BD24();
  sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
  v49 = sub_26C46C1C4();
  return v49 & 1;
}

uint64_t sub_26C44FDEC(void *a1, uint64_t *a2)
{
  v79 = type metadata accessor for PBUUID(0);
  v4 = *(v79 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v79);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v77 = (&v70 - v10);
  MEMORY[0x28223BE20](v9);
  v12 = (&v70 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v78 = (&v70 - v19);
  MEMORY[0x28223BE20](v18);
  v21 = (&v70 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980C0, &unk_26C470BD0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v70 - v26;
  MEMORY[0x28223BE20](v25);
  v30 = &v70 - v29;
  v31 = *a1;
  v32 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v32)
    {
      if (v32 == 1)
      {
        if (v31 != 1)
        {
          goto LABEL_33;
        }
      }

      else if (v31 != 2)
      {
        goto LABEL_33;
      }
    }

    else if (v31)
    {
      goto LABEL_33;
    }
  }

  else if (v31 != v32)
  {
    goto LABEL_33;
  }

  v72 = v17;
  v73 = v28;
  v71 = v8;
  v33 = type metadata accessor for OwnershipChangeRequestMessage(0);
  v75 = v22;
  v76 = v33;
  v34 = *(v33 + 32);
  v35 = *(v22 + 48);
  v74 = a1;
  sub_26C3DDD48(a1 + v34, v30, &qword_280497458, &unk_26C46D3F0);
  v36 = a2 + v34;
  v37 = a2;
  sub_26C3DDD48(v36, &v30[v35], &qword_280497458, &unk_26C46D3F0);
  v38 = *(v4 + 48);
  v39 = v79;
  if (v38(v30, 1, v79) == 1)
  {
    if (v38(&v30[v35], 1, v39) == 1)
    {
      goto LABEL_13;
    }

LABEL_23:
    v46 = &qword_2804980C0;
    v47 = &unk_26C470BD0;
LABEL_31:
    v51 = v30;
LABEL_32:
    sub_26C3DE270(v51, v46, v47);
    goto LABEL_33;
  }

  sub_26C3DDD48(v30, v21, &qword_280497458, &unk_26C46D3F0);
  if (v38(&v30[v35], 1, v39) == 1)
  {
    sub_26C453DFC(v21, type metadata accessor for PBUUID);
    goto LABEL_23;
  }

  sub_26C453E5C(&v30[v35], v12, type metadata accessor for PBUUID);
  if (*v21 != *v12 || v21[1] != v12[1])
  {
    sub_26C453DFC(v12, type metadata accessor for PBUUID);
    goto LABEL_29;
  }

  v48 = *(v39 + 24);
  sub_26C46BD24();
  sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
  v49 = sub_26C46C1C4();
  sub_26C453DFC(v12, type metadata accessor for PBUUID);
  if ((v49 & 1) == 0)
  {
LABEL_29:
    v50 = v21;
LABEL_30:
    sub_26C453DFC(v50, type metadata accessor for PBUUID);
    v46 = &qword_280497458;
    v47 = &unk_26C46D3F0;
    goto LABEL_31;
  }

  sub_26C453DFC(v21, type metadata accessor for PBUUID);
LABEL_13:
  sub_26C3DE270(v30, &qword_280497458, &unk_26C46D3F0);
  v40 = v76[9];
  v41 = *(v75 + 48);
  v42 = v74;
  sub_26C3DDD48(v74 + v40, v27, &qword_280497458, &unk_26C46D3F0);
  v43 = v79;
  sub_26C3DDD48(v37 + v40, &v27[v41], &qword_280497458, &unk_26C46D3F0);
  if (v38(v27, 1, v43) != 1)
  {
    v54 = v78;
    sub_26C3DDD48(v27, v78, &qword_280497458, &unk_26C46D3F0);
    if (v38(&v27[v41], 1, v43) != 1)
    {
      v55 = v77;
      sub_26C453E5C(&v27[v41], v77, type metadata accessor for PBUUID);
      if (*v54 == *v55 && v54[1] == v55[1])
      {
        v56 = *(v43 + 24);
        sub_26C46BD24();
        sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
        v57 = sub_26C46C1C4();
        sub_26C453DFC(v55, type metadata accessor for PBUUID);
        if (v57)
        {
          sub_26C453DFC(v54, type metadata accessor for PBUUID);
          goto LABEL_15;
        }
      }

      else
      {
        sub_26C453DFC(v55, type metadata accessor for PBUUID);
      }

      sub_26C453DFC(v54, type metadata accessor for PBUUID);
      v46 = &qword_280497458;
      v47 = &unk_26C46D3F0;
      v51 = v27;
      goto LABEL_32;
    }

    sub_26C453DFC(v54, type metadata accessor for PBUUID);
LABEL_37:
    v46 = &qword_2804980C0;
    v47 = &unk_26C470BD0;
    v51 = v27;
    goto LABEL_32;
  }

  if (v38(&v27[v41], 1, v43) != 1)
  {
    goto LABEL_37;
  }

LABEL_15:
  sub_26C3DE270(v27, &qword_280497458, &unk_26C46D3F0);
  v44 = v42[2];
  v45 = v37[2];
  if (*(v42 + 24))
  {
    v44 = v44 != 0;
  }

  if (*(v37 + 24) != 1)
  {
    if (v44 != v45)
    {
      goto LABEL_33;
    }

    goto LABEL_47;
  }

  if (!v45)
  {
    if (v44)
    {
      goto LABEL_33;
    }

    goto LABEL_47;
  }

  if (v44 == 1)
  {
LABEL_47:
    if (*(v42 + 7) != *(v37 + 7))
    {
      goto LABEL_33;
    }

    v58 = v76[10];
    v59 = *(v75 + 48);
    v60 = v73;
    sub_26C3DDD48(v42 + v58, v73, &qword_280497458, &unk_26C46D3F0);
    v61 = v79;
    sub_26C3DDD48(v37 + v58, v60 + v59, &qword_280497458, &unk_26C46D3F0);
    if (v38(v60, 1, v61) == 1)
    {
      v62 = v38((v60 + v59), 1, v61) == 1;
      v51 = v60;
      if (!v62)
      {
        goto LABEL_54;
      }

LABEL_51:
      sub_26C3DE270(v51, &qword_280497458, &unk_26C46D3F0);
      v63 = v76[7];
      sub_26C46BD24();
      sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
      v52 = sub_26C46C1C4();
      return v52 & 1;
    }

    v64 = v61;
    v65 = v72;
    sub_26C3DDD48(v60, v72, &qword_280497458, &unk_26C46D3F0);
    if (v38((v60 + v59), 1, v64) == 1)
    {
      sub_26C453DFC(v65, type metadata accessor for PBUUID);
      v51 = v60;
LABEL_54:
      v46 = &qword_2804980C0;
      v47 = &unk_26C470BD0;
      goto LABEL_32;
    }

    v66 = v71;
    sub_26C453E5C(v60 + v59, v71, type metadata accessor for PBUUID);
    v30 = v60;
    v67 = v65;
    if (*v65 == *v66 && v65[1] == v66[1])
    {
      v68 = *(v79 + 24);
      sub_26C46BD24();
      sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
      v69 = sub_26C46C1C4();
      sub_26C453DFC(v66, type metadata accessor for PBUUID);
      if (v69)
      {
        sub_26C453DFC(v67, type metadata accessor for PBUUID);
        v51 = v30;
        goto LABEL_51;
      }
    }

    else
    {
      sub_26C453DFC(v66, type metadata accessor for PBUUID);
    }

    v50 = v67;
    goto LABEL_30;
  }

LABEL_33:
  v52 = 0;
  return v52 & 1;
}

uint64_t sub_26C45080C(void *a1, uint64_t *a2)
{
  v73 = type metadata accessor for PBUUID(0);
  v4 = *(v73 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v73);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v64 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = (&v64 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v71 = (&v64 - v20);
  MEMORY[0x28223BE20](v19);
  v22 = (&v64 - v21);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980C0, &unk_26C470BD0);
  v23 = *(*(v72 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v72);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v64 - v26;
  MEMORY[0x28223BE20](v25);
  v30 = &v64 - v29;
  v31 = *a1;
  v32 = *a2;
  if (*(a2 + 8) != 1)
  {
    if (v31 != v32)
    {
      goto LABEL_30;
    }

    goto LABEL_11;
  }

  if (!v32)
  {
    if (!v31)
    {
      goto LABEL_11;
    }

LABEL_30:
    v49 = 0;
    return v49 & 1;
  }

  if (v32 != 1)
  {
    if (v31 == 2)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

  if (v31 != 1)
  {
    goto LABEL_30;
  }

LABEL_11:
  v67 = v28;
  v68 = v11;
  v65 = v8;
  v66 = v18;
  v33 = type metadata accessor for OwnershipHandoffReplyMessage(0);
  v34 = *(v33 + 28);
  v35 = *(v72 + 48);
  v69 = a1;
  v70 = v33;
  sub_26C3DDD48(a1 + v34, v30, &qword_280497458, &unk_26C46D3F0);
  v36 = a2 + v34;
  v37 = a2;
  sub_26C3DDD48(v36, &v30[v35], &qword_280497458, &unk_26C46D3F0);
  v38 = *(v4 + 48);
  v39 = v73;
  if (v38(v30, 1, v73) == 1)
  {
    if (v38(&v30[v35], 1, v39) == 1)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

  sub_26C3DDD48(v30, v22, &qword_280497458, &unk_26C46D3F0);
  if (v38(&v30[v35], 1, v39) == 1)
  {
    sub_26C453DFC(v22, type metadata accessor for PBUUID);
LABEL_21:
    v50 = &qword_2804980C0;
    v51 = &unk_26C470BD0;
LABEL_28:
    v54 = v30;
LABEL_29:
    sub_26C3DE270(v54, v50, v51);
    goto LABEL_30;
  }

  sub_26C453E5C(&v30[v35], v13, type metadata accessor for PBUUID);
  if (*v22 != *v13 || v22[1] != v13[1])
  {
    sub_26C453DFC(v13, type metadata accessor for PBUUID);
    goto LABEL_27;
  }

  v52 = *(v39 + 24);
  sub_26C46BD24();
  sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
  v53 = sub_26C46C1C4();
  sub_26C453DFC(v13, type metadata accessor for PBUUID);
  if ((v53 & 1) == 0)
  {
LABEL_27:
    sub_26C453DFC(v22, type metadata accessor for PBUUID);
    v50 = &qword_280497458;
    v51 = &unk_26C46D3F0;
    goto LABEL_28;
  }

  sub_26C453DFC(v22, type metadata accessor for PBUUID);
LABEL_13:
  sub_26C3DE270(v30, &qword_280497458, &unk_26C46D3F0);
  v40 = v69;
  v41 = v70[8];
  v42 = *(v72 + 48);
  sub_26C3DDD48(v69 + v41, v27, &qword_280497458, &unk_26C46D3F0);
  v43 = v73;
  sub_26C3DDD48(v37 + v41, &v27[v42], &qword_280497458, &unk_26C46D3F0);
  if (v38(v27, 1, v43) == 1)
  {
    if (v38(&v27[v42], 1, v43) == 1)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

  v56 = v71;
  sub_26C3DDD48(v27, v71, &qword_280497458, &unk_26C46D3F0);
  if (v38(&v27[v42], 1, v43) == 1)
  {
    sub_26C453DFC(v56, type metadata accessor for PBUUID);
LABEL_34:
    v50 = &qword_2804980C0;
    v51 = &unk_26C470BD0;
    v54 = v27;
    goto LABEL_29;
  }

  v57 = v68;
  sub_26C453E5C(&v27[v42], v68, type metadata accessor for PBUUID);
  if (*v56 != *v57 || v56[1] != v57[1])
  {
    sub_26C453DFC(v57, type metadata accessor for PBUUID);
    goto LABEL_40;
  }

  v58 = *(v43 + 24);
  sub_26C46BD24();
  sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
  v59 = sub_26C46C1C4();
  sub_26C453DFC(v57, type metadata accessor for PBUUID);
  if ((v59 & 1) == 0)
  {
LABEL_40:
    sub_26C453DFC(v56, type metadata accessor for PBUUID);
    v50 = &qword_280497458;
    v51 = &unk_26C46D3F0;
    v54 = v27;
    goto LABEL_29;
  }

  sub_26C453DFC(v56, type metadata accessor for PBUUID);
LABEL_15:
  sub_26C3DE270(v27, &qword_280497458, &unk_26C46D3F0);
  if (*(v40 + 9) != *(v37 + 9))
  {
    goto LABEL_30;
  }

  v44 = v70[9];
  v45 = *(v72 + 48);
  v46 = v67;
  sub_26C3DDD48(v40 + v44, v67, &qword_280497458, &unk_26C46D3F0);
  v47 = v73;
  sub_26C3DDD48(v37 + v44, v46 + v45, &qword_280497458, &unk_26C46D3F0);
  if (v38(v46, 1, v47) != 1)
  {
    v60 = v66;
    sub_26C3DDD48(v46, v66, &qword_280497458, &unk_26C46D3F0);
    if (v38((v46 + v45), 1, v47) != 1)
    {
      v61 = v65;
      sub_26C453E5C(v46 + v45, v65, type metadata accessor for PBUUID);
      if (*v60 == *v61 && v60[1] == v61[1])
      {
        v62 = *(v47 + 24);
        sub_26C46BD24();
        sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
        v63 = sub_26C46C1C4();
        sub_26C453DFC(v61, type metadata accessor for PBUUID);
        if (v63)
        {
          sub_26C453DFC(v60, type metadata accessor for PBUUID);
          goto LABEL_18;
        }
      }

      else
      {
        sub_26C453DFC(v61, type metadata accessor for PBUUID);
      }

      sub_26C453DFC(v60, type metadata accessor for PBUUID);
      v50 = &qword_280497458;
      v51 = &unk_26C46D3F0;
      v54 = v46;
      goto LABEL_29;
    }

    sub_26C453DFC(v60, type metadata accessor for PBUUID);
    goto LABEL_43;
  }

  if (v38((v46 + v45), 1, v47) != 1)
  {
LABEL_43:
    v50 = &qword_2804980C0;
    v51 = &unk_26C470BD0;
    v54 = v46;
    goto LABEL_29;
  }

LABEL_18:
  sub_26C3DE270(v46, &qword_280497458, &unk_26C46D3F0);
  v48 = v70[6];
  sub_26C46BD24();
  sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
  v49 = sub_26C46C1C4();
  return v49 & 1;
}

uint64_t sub_26C4511EC(void *a1, uint64_t *a2)
{
  v4 = type metadata accessor for PBUUID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = (&v52 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = (&v52 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980C0, &unk_26C470BD0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19);
  MEMORY[0x28223BE20](v21);
  v24 = &v52 - v23;
  v25 = *a1;
  v26 = *a2;
  if (*(a2 + 8) != 1)
  {
    if (v25 != v26)
    {
      goto LABEL_29;
    }

    goto LABEL_11;
  }

  if (!v26)
  {
    if (!v25)
    {
      goto LABEL_11;
    }

LABEL_29:
    v40 = 0;
    return v40 & 1;
  }

  if (v26 != 1)
  {
    if (v25 == 2)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

  if (v25 != 1)
  {
    goto LABEL_29;
  }

LABEL_11:
  v52 = v9;
  v53 = v16;
  v55 = v22;
  v27 = type metadata accessor for OwnershipChangeReplyMessage(0);
  v57 = a2;
  v54 = v27;
  v28 = *(v27 + 32);
  v29 = *(v19 + 48);
  v56 = a1;
  sub_26C3DDD48(a1 + v28, v24, &qword_280497458, &unk_26C46D3F0);
  sub_26C3DDD48(v57 + v28, &v24[v29], &qword_280497458, &unk_26C46D3F0);
  v30 = *(v5 + 48);
  if (v30(v24, 1, v4) == 1)
  {
    if (v30(&v24[v29], 1, v4) == 1)
    {
      goto LABEL_13;
    }

    goto LABEL_20;
  }

  sub_26C3DDD48(v24, v18, &qword_280497458, &unk_26C46D3F0);
  if (v30(&v24[v29], 1, v4) == 1)
  {
    sub_26C453DFC(v18, type metadata accessor for PBUUID);
LABEL_20:
    v41 = &qword_2804980C0;
    v42 = &unk_26C470BD0;
LABEL_27:
    v45 = v24;
LABEL_28:
    sub_26C3DE270(v45, v41, v42);
    goto LABEL_29;
  }

  sub_26C453E5C(&v24[v29], v11, type metadata accessor for PBUUID);
  if (*v18 != *v11 || v18[1] != v11[1])
  {
    sub_26C453DFC(v11, type metadata accessor for PBUUID);
    goto LABEL_26;
  }

  v43 = *(v4 + 24);
  sub_26C46BD24();
  sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
  v44 = sub_26C46C1C4();
  sub_26C453DFC(v11, type metadata accessor for PBUUID);
  if ((v44 & 1) == 0)
  {
LABEL_26:
    sub_26C453DFC(v18, type metadata accessor for PBUUID);
    v41 = &qword_280497458;
    v42 = &unk_26C46D3F0;
    goto LABEL_27;
  }

  sub_26C453DFC(v18, type metadata accessor for PBUUID);
LABEL_13:
  sub_26C3DE270(v24, &qword_280497458, &unk_26C46D3F0);
  v31 = v54;
  v32 = *(v54 + 36);
  v33 = *(v19 + 48);
  v34 = v55;
  sub_26C3DDD48(v56 + v32, v55, &qword_280497458, &unk_26C46D3F0);
  v35 = v57 + v32;
  v36 = v57;
  sub_26C3DDD48(v35, v34 + v33, &qword_280497458, &unk_26C46D3F0);
  if (v30(v34, 1, v4) != 1)
  {
    v47 = v53;
    sub_26C3DDD48(v34, v53, &qword_280497458, &unk_26C46D3F0);
    if (v30((v34 + v33), 1, v4) != 1)
    {
      v48 = v34 + v33;
      v49 = v52;
      sub_26C453E5C(v48, v52, type metadata accessor for PBUUID);
      if (*v47 == *v49 && v47[1] == v49[1])
      {
        v50 = *(v4 + 24);
        sub_26C46BD24();
        sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
        v51 = sub_26C46C1C4();
        sub_26C453DFC(v49, type metadata accessor for PBUUID);
        if (v51)
        {
          sub_26C453DFC(v53, type metadata accessor for PBUUID);
          v36 = v57;
          goto LABEL_15;
        }
      }

      else
      {
        sub_26C453DFC(v49, type metadata accessor for PBUUID);
      }

      sub_26C453DFC(v53, type metadata accessor for PBUUID);
      v41 = &qword_280497458;
      v42 = &unk_26C46D3F0;
      v45 = v34;
      goto LABEL_28;
    }

    sub_26C453DFC(v47, type metadata accessor for PBUUID);
    goto LABEL_33;
  }

  if (v30((v34 + v33), 1, v4) != 1)
  {
LABEL_33:
    v41 = &qword_2804980C0;
    v42 = &unk_26C470BD0;
    v45 = v34;
    goto LABEL_28;
  }

LABEL_15:
  sub_26C3DE270(v34, &qword_280497458, &unk_26C46D3F0);
  v37 = v56;
  v38 = *(v36 + 24);
  if (!sub_26C433C6C(v56[2], *(v56 + 24), v36[2]) || *(v37 + 7) != *(v36 + 7))
  {
    goto LABEL_29;
  }

  v39 = *(v31 + 28);
  sub_26C46BD24();
  sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
  v40 = sub_26C46C1C4();
  return v40 & 1;
}

uint64_t sub_26C451934(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for PBUUID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v31 = (&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v29 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980C0, &unk_26C470BD0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - v15;
  v30 = type metadata accessor for DictionaryChangedMessage(0);
  v17 = *(v30 + 56);
  v18 = *(v13 + 56);
  v32 = a1;
  sub_26C3DDD48(a1 + v17, v16, &qword_280497458, &unk_26C46D3F0);
  sub_26C3DDD48(a2 + v17, &v16[v18], &qword_280497458, &unk_26C46D3F0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_26C3DDD48(v16, v11, &qword_280497458, &unk_26C46D3F0);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v25 = v31;
      sub_26C453E5C(&v16[v18], v31, type metadata accessor for PBUUID);
      if (*v11 == *v25 && v11[1] == v25[1])
      {
        v26 = *(v4 + 24);
        sub_26C46BD24();
        sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
        v27 = sub_26C46C1C4();
        sub_26C453DFC(v25, type metadata accessor for PBUUID);
        if (v27)
        {
          sub_26C453DFC(v11, type metadata accessor for PBUUID);
          goto LABEL_3;
        }
      }

      else
      {
        sub_26C453DFC(v25, type metadata accessor for PBUUID);
      }

      sub_26C453DFC(v11, type metadata accessor for PBUUID);
      v23 = &qword_280497458;
      v24 = &unk_26C46D3F0;
LABEL_22:
      sub_26C3DE270(v16, v23, v24);
LABEL_23:
      v22 = 0;
      return v22 & 1;
    }

    sub_26C453DFC(v11, type metadata accessor for PBUUID);
LABEL_15:
    v23 = &qword_2804980C0;
    v24 = &unk_26C470BD0;
    goto LABEL_22;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_15;
  }

LABEL_3:
  sub_26C3DE270(v16, &qword_280497458, &unk_26C46D3F0);
  v20 = v32;
  if (*v32 != *a2 || (sub_26C448E48(v32[1], *(a2 + 8)) & 1) == 0 || (sub_26C449254(v20[2], *(a2 + 16)) & 1) == 0 || (sub_26C448E48(v20[3], *(a2 + 24)) & 1) == 0 || (sub_26C4492B0(v20[4], *(a2 + 32)) & 1) == 0 || (sub_26C449254(v20[5], *(a2 + 40)) & 1) == 0 || (sub_26C448E48(v20[6], *(a2 + 48)) & 1) == 0 || (sub_26C4492B0(v20[7], *(a2 + 56)) & 1) == 0 || (sub_26C449254(v20[8], *(a2 + 64)) & 1) == 0)
  {
    goto LABEL_23;
  }

  v21 = *(v30 + 52);
  sub_26C46BD24();
  sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
  v22 = sub_26C46C1C4();
  return v22 & 1;
}

uint64_t sub_26C451DD4(_DWORD *a1, _DWORD *a2)
{
  v55 = a2;
  v3 = type metadata accessor for ValueData(0);
  v51 = *(v3 - 8);
  v52 = v3;
  v4 = *(v51 + 64);
  MEMORY[0x28223BE20](v3);
  v47 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497470, &unk_26C46E870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v48 = &v46 - v8;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498120, &unk_26C470C30);
  v9 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v53 = &v46 - v10;
  v11 = type metadata accessor for LamportTimestamp(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (&v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = (&v46 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498118, &qword_26C470C28);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v46 - v23;
  v50 = type metadata accessor for PropertyChangedMessage(0);
  v25 = *(v50 + 24);
  v26 = *(v21 + 56);
  v54 = a1;
  sub_26C3DDD48(a1 + v25, v24, &qword_280497468, &unk_26C46D400);
  v27 = v55;
  sub_26C3DDD48(v55 + v25, &v24[v26], &qword_280497468, &unk_26C46D400);
  v28 = *(v12 + 48);
  if (v28(v24, 1, v11) == 1)
  {
    if (v28(&v24[v26], 1, v11) == 1)
    {
      sub_26C3DE270(v24, &qword_280497468, &unk_26C46D400);
      goto LABEL_9;
    }

LABEL_6:
    v29 = &qword_280498118;
    v30 = &qword_26C470C28;
    v31 = v24;
LABEL_7:
    sub_26C3DE270(v31, v29, v30);
    goto LABEL_18;
  }

  sub_26C3DDD48(v24, v19, &qword_280497468, &unk_26C46D400);
  if (v28(&v24[v26], 1, v11) == 1)
  {
    sub_26C453DFC(v19, type metadata accessor for LamportTimestamp);
    goto LABEL_6;
  }

  sub_26C453E5C(&v24[v26], v15, type metadata accessor for LamportTimestamp);
  v32 = sub_26C4539DC(v19, v15);
  sub_26C453DFC(v15, type metadata accessor for LamportTimestamp);
  sub_26C453DFC(v19, type metadata accessor for LamportTimestamp);
  sub_26C3DE270(v24, &qword_280497468, &unk_26C46D400);
  if ((v32 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if (*v54 != *v27)
  {
    goto LABEL_18;
  }

  v33 = v50;
  v34 = *(v50 + 28);
  v35 = *(v49 + 48);
  v36 = v53;
  sub_26C3DDD48(v54 + v34, v53, &qword_280497470, &unk_26C46E870);
  sub_26C3DDD48(v27 + v34, v36 + v35, &qword_280497470, &unk_26C46E870);
  v37 = v52;
  v38 = *(v51 + 48);
  if (v38(v36, 1, v52) != 1)
  {
    v39 = v48;
    sub_26C3DDD48(v36, v48, &qword_280497470, &unk_26C46E870);
    if (v38(v36 + v35, 1, v37) != 1)
    {
      v40 = v36 + v35;
      v41 = v47;
      sub_26C453E5C(v40, v47, type metadata accessor for ValueData);
      v42 = sub_26C452F50(v39, v41);
      sub_26C453DFC(v41, type metadata accessor for ValueData);
      sub_26C453DFC(v39, type metadata accessor for ValueData);
      sub_26C3DE270(v36, &qword_280497470, &unk_26C46E870);
      if (v42)
      {
        goto LABEL_17;
      }

LABEL_18:
      v44 = 0;
      return v44 & 1;
    }

    sub_26C453DFC(v39, type metadata accessor for ValueData);
    goto LABEL_15;
  }

  if (v38(v36 + v35, 1, v37) != 1)
  {
LABEL_15:
    v29 = &qword_280498120;
    v30 = &unk_26C470C30;
    v31 = v36;
    goto LABEL_7;
  }

  sub_26C3DE270(v36, &qword_280497470, &unk_26C46E870);
LABEL_17:
  v43 = *(v33 + 20);
  sub_26C46BD24();
  sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
  v44 = sub_26C46C1C4();
  return v44 & 1;
}

uint64_t sub_26C452404(uint64_t a1, uint64_t a2)
{
  if ((sub_26C44DD9C(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0 || *(a1 + 16) != *(a2 + 16) || *(a1 + 20) != *(a2 + 20) || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v5 = *(type metadata accessor for CatchupResponseMessage(0) + 32);
  sub_26C46BD24();
  sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
  return sub_26C46C1C4() & 1;
}

uint64_t sub_26C4524E4(uint64_t *a1, uint64_t *a2)
{
  if ((sub_26C448E48(*a1, *a2) & 1) == 0 || (sub_26C4492B0(a1[1], a2[1]) & 1) == 0 || (sub_26C449468(a1[2], a2[2]) & 1) == 0 || (sub_26C449A60(a1[3], a2[3]) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for DictionaryCatchupData(0) + 32);
  sub_26C46BD24();
  sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
  return sub_26C46C1C4() & 1;
}

uint64_t sub_26C4525C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LamportTimestamp(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v25 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498118, &qword_26C470C28);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - v15;
  if ((sub_26C44DD9C(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    goto LABEL_8;
  }

  v25 = v8;
  v26 = type metadata accessor for DictionaryCatchupData.TombstoneTimestamp(0);
  v17 = *(v26 + 24);
  v18 = *(v13 + 48);
  sub_26C3DDD48(a1 + v17, v16, &qword_280497468, &unk_26C46D400);
  sub_26C3DDD48(a2 + v17, &v16[v18], &qword_280497468, &unk_26C46D400);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_26C3DE270(v16, &qword_280497468, &unk_26C46D400);
LABEL_11:
      v24 = *(v26 + 20);
      sub_26C46BD24();
      sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
      v20 = sub_26C46C1C4();
      return v20 & 1;
    }

    goto LABEL_7;
  }

  sub_26C3DDD48(v16, v12, &qword_280497468, &unk_26C46D400);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_26C453DFC(v12, type metadata accessor for LamportTimestamp);
LABEL_7:
    sub_26C3DE270(v16, &qword_280498118, &qword_26C470C28);
    goto LABEL_8;
  }

  v22 = v25;
  sub_26C453E5C(&v16[v18], v25, type metadata accessor for LamportTimestamp);
  v23 = sub_26C4539DC(v12, v22);
  sub_26C453DFC(v22, type metadata accessor for LamportTimestamp);
  sub_26C453DFC(v12, type metadata accessor for LamportTimestamp);
  sub_26C3DE270(v16, &qword_280497468, &unk_26C46D400);
  if (v23)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_26C45293C(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v3 = type metadata accessor for LamportTimestamp(0);
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = *(v48 + 64);
  MEMORY[0x28223BE20](v3);
  v44 = (&v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = (&v43 - v8);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498118, &qword_26C470C28);
  v9 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v50 = &v43 - v10;
  v11 = type metadata accessor for ValueData(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497470, &unk_26C46E870);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v43 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498120, &unk_26C470C30);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v43 - v23;
  v46 = type metadata accessor for PropertyCatchupData(0);
  v25 = *(v46 + 20);
  v26 = *(v21 + 56);
  v51 = a1;
  sub_26C3DDD48(a1 + v25, v24, &qword_280497470, &unk_26C46E870);
  sub_26C3DDD48(v52 + v25, &v24[v26], &qword_280497470, &unk_26C46E870);
  v27 = *(v12 + 48);
  if (v27(v24, 1, v11) != 1)
  {
    sub_26C3DDD48(v24, v19, &qword_280497470, &unk_26C46E870);
    if (v27(&v24[v26], 1, v11) != 1)
    {
      sub_26C453E5C(&v24[v26], v15, type metadata accessor for ValueData);
      v31 = sub_26C452F50(v19, v15);
      sub_26C453DFC(v15, type metadata accessor for ValueData);
      sub_26C453DFC(v19, type metadata accessor for ValueData);
      sub_26C3DE270(v24, &qword_280497470, &unk_26C46E870);
      if ((v31 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_26C453DFC(v19, type metadata accessor for ValueData);
LABEL_6:
    v28 = &qword_280498120;
    v29 = &unk_26C470C30;
    v30 = v24;
LABEL_14:
    sub_26C3DE270(v30, v28, v29);
    goto LABEL_15;
  }

  if (v27(&v24[v26], 1, v11) != 1)
  {
    goto LABEL_6;
  }

  sub_26C3DE270(v24, &qword_280497470, &unk_26C46E870);
LABEL_8:
  v32 = *(v46 + 24);
  v33 = *(v47 + 48);
  v34 = v50;
  sub_26C3DDD48(v51 + v32, v50, &qword_280497468, &unk_26C46D400);
  sub_26C3DDD48(v52 + v32, v34 + v33, &qword_280497468, &unk_26C46D400);
  v35 = v49;
  v36 = *(v48 + 48);
  if (v36(v34, 1, v49) == 1)
  {
    if (v36(v34 + v33, 1, v35) == 1)
    {
      sub_26C3DE270(v34, &qword_280497468, &unk_26C46D400);
LABEL_18:
      sub_26C46BD24();
      sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
      v38 = sub_26C46C1C4();
      return v38 & 1;
    }

    goto LABEL_13;
  }

  v37 = v45;
  sub_26C3DDD48(v34, v45, &qword_280497468, &unk_26C46D400);
  if (v36(v34 + v33, 1, v35) == 1)
  {
    sub_26C453DFC(v37, type metadata accessor for LamportTimestamp);
LABEL_13:
    v28 = &qword_280498118;
    v29 = &qword_26C470C28;
    v30 = v34;
    goto LABEL_14;
  }

  v40 = v34 + v33;
  v41 = v44;
  sub_26C453E5C(v40, v44, type metadata accessor for LamportTimestamp);
  v42 = sub_26C4539DC(v37, v41);
  sub_26C453DFC(v41, type metadata accessor for LamportTimestamp);
  sub_26C453DFC(v37, type metadata accessor for LamportTimestamp);
  sub_26C3DE270(v34, &qword_280497468, &unk_26C46D400);
  if (v42)
  {
    goto LABEL_18;
  }

LABEL_15:
  v38 = 0;
  return v38 & 1;
}

uint64_t sub_26C452F50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBUUID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v42 = (&v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v47 = (&v42 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v43 = (&v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v15 = (&v42 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980C0, &unk_26C470BD0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v45 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v42 - v20;
  v46 = type metadata accessor for ValueData(0);
  v22 = v46[6];
  v44 = v16;
  v23 = *(v16 + 48);
  v48 = a1;
  sub_26C3DDD48(a1 + v22, v21, &qword_280497458, &unk_26C46D3F0);
  v49 = a2;
  sub_26C3DDD48(a2 + v22, &v21[v23], &qword_280497458, &unk_26C46D3F0);
  v24 = *(v5 + 48);
  if (v24(v21, 1, v4) == 1)
  {
    if (v24(&v21[v23], 1, v4) == 1)
    {
      goto LABEL_3;
    }

    goto LABEL_9;
  }

  sub_26C3DDD48(v21, v15, &qword_280497458, &unk_26C46D3F0);
  if (v24(&v21[v23], 1, v4) == 1)
  {
    sub_26C453DFC(v15, type metadata accessor for PBUUID);
LABEL_9:
    v32 = &qword_2804980C0;
    v33 = &unk_26C470BD0;
LABEL_16:
    v37 = v21;
LABEL_17:
    sub_26C3DE270(v37, v32, v33);
    goto LABEL_18;
  }

  v34 = v47;
  sub_26C453E5C(&v21[v23], v47, type metadata accessor for PBUUID);
  if (*v15 != *v34 || v15[1] != v34[1])
  {
    sub_26C453DFC(v34, type metadata accessor for PBUUID);
    goto LABEL_15;
  }

  v35 = *(v4 + 24);
  sub_26C46BD24();
  sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
  v36 = sub_26C46C1C4();
  sub_26C453DFC(v34, type metadata accessor for PBUUID);
  if ((v36 & 1) == 0)
  {
LABEL_15:
    sub_26C453DFC(v15, type metadata accessor for PBUUID);
    v32 = &qword_280497458;
    v33 = &unk_26C46D3F0;
    goto LABEL_16;
  }

  sub_26C453DFC(v15, type metadata accessor for PBUUID);
LABEL_3:
  sub_26C3DE270(v21, &qword_280497458, &unk_26C46D3F0);
  v26 = v48;
  v25 = v49;
  if ((sub_26C44DD9C(*v48, *(v48 + 8), *v49, *(v49 + 8)) & 1) == 0)
  {
LABEL_18:
    v31 = 0;
    return v31 & 1;
  }

  v27 = v45;
  v28 = v46[7];
  v29 = *(v44 + 48);
  sub_26C3DDD48(v26 + v28, v45, &qword_280497458, &unk_26C46D3F0);
  sub_26C3DDD48(v25 + v28, v27 + v29, &qword_280497458, &unk_26C46D3F0);
  if (v24(v27, 1, v4) != 1)
  {
    v39 = v43;
    sub_26C3DDD48(v27, v43, &qword_280497458, &unk_26C46D3F0);
    if (v24((v27 + v29), 1, v4) != 1)
    {
      v40 = v42;
      sub_26C453E5C(v27 + v29, v42, type metadata accessor for PBUUID);
      if (*v39 == *v40 && v39[1] == v40[1])
      {
        v41 = *(v4 + 24);
        sub_26C46BD24();
        sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
        LOBYTE(v41) = sub_26C46C1C4();
        sub_26C453DFC(v40, type metadata accessor for PBUUID);
        if (v41)
        {
          sub_26C453DFC(v39, type metadata accessor for PBUUID);
          goto LABEL_6;
        }
      }

      else
      {
        sub_26C453DFC(v40, type metadata accessor for PBUUID);
      }

      sub_26C453DFC(v39, type metadata accessor for PBUUID);
      v32 = &qword_280497458;
      v33 = &unk_26C46D3F0;
      v37 = v27;
      goto LABEL_17;
    }

    sub_26C453DFC(v39, type metadata accessor for PBUUID);
    goto LABEL_22;
  }

  if (v24((v27 + v29), 1, v4) != 1)
  {
LABEL_22:
    v32 = &qword_2804980C0;
    v33 = &unk_26C470BD0;
    v37 = v27;
    goto LABEL_17;
  }

LABEL_6:
  sub_26C3DE270(v27, &qword_280497458, &unk_26C46D3F0);
  v30 = v46[5];
  sub_26C46BD24();
  sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
  v31 = sub_26C46C1C4();
  return v31 & 1;
}

uint64_t sub_26C45363C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LamportTimestamp(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v28 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v26 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498118, &qword_26C470C28);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v27 = type metadata accessor for SetChangedMessage(0);
  v17 = *(v27 + 32);
  v18 = *(v13 + 56);
  v29 = a1;
  sub_26C3DDD48(a1 + v17, v16, &qword_280497468, &unk_26C46D400);
  sub_26C3DDD48(a2 + v17, &v16[v18], &qword_280497468, &unk_26C46D400);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_26C3DDD48(v16, v11, &qword_280497468, &unk_26C46D400);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v20 = v28;
      sub_26C453E5C(&v16[v18], v28, type metadata accessor for LamportTimestamp);
      v21 = sub_26C4539DC(v11, v20);
      sub_26C453DFC(v20, type metadata accessor for LamportTimestamp);
      sub_26C453DFC(v11, type metadata accessor for LamportTimestamp);
      sub_26C3DE270(v16, &qword_280497468, &unk_26C46D400);
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_12:
      v24 = 0;
      return v24 & 1;
    }

    sub_26C453DFC(v11, type metadata accessor for LamportTimestamp);
LABEL_6:
    sub_26C3DE270(v16, &qword_280498118, &qword_26C470C28);
    goto LABEL_12;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_26C3DE270(v16, &qword_280497468, &unk_26C46D400);
LABEL_8:
  v22 = v29;
  if (*v29 != *a2 || (sub_26C4492B0(*(v29 + 8), *(a2 + 8)) & 1) == 0 || (sub_26C4492B0(*(v22 + 16), *(a2 + 16)) & 1) == 0)
  {
    goto LABEL_12;
  }

  v23 = *(v27 + 28);
  sub_26C46BD24();
  sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
  v24 = sub_26C46C1C4();
  return v24 & 1;
}

uint64_t sub_26C4539DC(_DWORD *a1, _DWORD *a2)
{
  v4 = type metadata accessor for PBUUID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v28 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980C0, &unk_26C470BD0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v28 - v15;
  v29 = type metadata accessor for LamportTimestamp(0);
  v17 = *(v29 + 24);
  v18 = *(v13 + 56);
  v31 = a1;
  sub_26C3DDD48(a1 + v17, v16, &qword_280497458, &unk_26C46D3F0);
  sub_26C3DDD48(a2 + v17, &v16[v18], &qword_280497458, &unk_26C46D3F0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      goto LABEL_3;
    }

    goto LABEL_7;
  }

  sub_26C3DDD48(v16, v11, &qword_280497458, &unk_26C46D3F0);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_26C453DFC(v11, type metadata accessor for PBUUID);
LABEL_7:
    v22 = &qword_2804980C0;
    v23 = &unk_26C470BD0;
LABEL_14:
    sub_26C3DE270(v16, v22, v23);
    goto LABEL_15;
  }

  v24 = v30;
  sub_26C453E5C(&v16[v18], v30, type metadata accessor for PBUUID);
  if (*v11 != *v24 || v11[1] != v24[1])
  {
    sub_26C453DFC(v24, type metadata accessor for PBUUID);
    goto LABEL_13;
  }

  v25 = *(v4 + 24);
  sub_26C46BD24();
  sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
  v26 = sub_26C46C1C4();
  sub_26C453DFC(v24, type metadata accessor for PBUUID);
  if ((v26 & 1) == 0)
  {
LABEL_13:
    sub_26C453DFC(v11, type metadata accessor for PBUUID);
    v22 = &qword_280497458;
    v23 = &unk_26C46D3F0;
    goto LABEL_14;
  }

  sub_26C453DFC(v11, type metadata accessor for PBUUID);
LABEL_3:
  sub_26C3DE270(v16, &qword_280497458, &unk_26C46D3F0);
  if (*v31 != *a2)
  {
LABEL_15:
    v21 = 0;
    return v21 & 1;
  }

  v20 = *(v29 + 20);
  sub_26C46BD24();
  sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
  v21 = sub_26C46C1C4();
  return v21 & 1;
}

uint64_t sub_26C453DFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26C453E5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26C453EC4(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for LamportTimestamp(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v28 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v26 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498118, &qword_26C470C28);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v27 = type metadata accessor for SetCatchupData(0);
  v17 = *(v27 + 36);
  v18 = *(v13 + 56);
  v29 = a1;
  sub_26C3DDD48(a1 + v17, v16, &qword_280497468, &unk_26C46D400);
  sub_26C3DDD48(a2 + v17, &v16[v18], &qword_280497468, &unk_26C46D400);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_26C3DDD48(v16, v11, &qword_280497468, &unk_26C46D400);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v20 = v28;
      sub_26C453E5C(&v16[v18], v28, type metadata accessor for LamportTimestamp);
      v21 = sub_26C4539DC(v11, v20);
      sub_26C453DFC(v20, type metadata accessor for LamportTimestamp);
      sub_26C453DFC(v11, type metadata accessor for LamportTimestamp);
      sub_26C3DE270(v16, &qword_280497468, &unk_26C46D400);
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_13:
      v24 = 0;
      return v24 & 1;
    }

    sub_26C453DFC(v11, type metadata accessor for LamportTimestamp);
LABEL_6:
    sub_26C3DE270(v16, &qword_280498118, &qword_26C470C28);
    goto LABEL_13;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_26C3DE270(v16, &qword_280497468, &unk_26C46D400);
LABEL_8:
  v22 = v29;
  if ((sub_26C4492B0(*v29, *a2) & 1) == 0 || (sub_26C449468(v22[1], a2[1]) & 1) == 0 || (sub_26C4492B0(v22[2], a2[2]) & 1) == 0 || (sub_26C449468(v22[3], a2[3]) & 1) == 0)
  {
    goto LABEL_13;
  }

  v23 = *(v27 + 32);
  sub_26C46BD24();
  sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
  v24 = sub_26C46C1C4();
  return v24 & 1;
}

uint64_t sub_26C454274(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncMessage.OneOf_Contents(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497650, &unk_26C46D930);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498108, &qword_26C470C18);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_26C3DDD48(a1, &v24 - v16, &qword_280497650, &unk_26C46D930);
  sub_26C3DDD48(a2, &v17[v18], &qword_280497650, &unk_26C46D930);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_26C3DE270(v17, &qword_280497650, &unk_26C46D930);
LABEL_9:
      v22 = *(type metadata accessor for SyncMessage(0) + 20);
      sub_26C46BD24();
      sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
      v20 = sub_26C46C1C4();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_26C3DDD48(v17, v12, &qword_280497650, &unk_26C46D930);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_26C453DFC(v12, type metadata accessor for SyncMessage.OneOf_Contents);
LABEL_6:
    sub_26C3DE270(v17, &qword_280498108, &qword_26C470C18);
    goto LABEL_7;
  }

  sub_26C453E5C(&v17[v18], v8, type metadata accessor for SyncMessage.OneOf_Contents);
  v21 = sub_26C454A44(v12, v8);
  sub_26C453DFC(v8, type metadata accessor for SyncMessage.OneOf_Contents);
  sub_26C453DFC(v12, type metadata accessor for SyncMessage.OneOf_Contents);
  sub_26C3DE270(v17, &qword_280497650, &unk_26C46D930);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_26C4545B8(void *a1, uint64_t *a2)
{
  v4 = type metadata accessor for PBUUID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v32 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980C0, &unk_26C470BD0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - v15;
  v17 = *a1;
  v18 = *a2;
  if (*(a2 + 8) != 1)
  {
    if (v17 != v18)
    {
      goto LABEL_27;
    }

    goto LABEL_11;
  }

  if (!v18)
  {
    if (!v17)
    {
      goto LABEL_11;
    }

LABEL_27:
    v26 = 0;
    return v26 & 1;
  }

  if (v18 != 1)
  {
    if (v17 == 2)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

  if (v17 != 1)
  {
    goto LABEL_27;
  }

LABEL_11:
  v19 = type metadata accessor for SyncTransactionMessage(0);
  v20 = *(v19 + 36);
  v21 = a1;
  v22 = *(v13 + 48);
  v32 = v19;
  v33 = v21;
  sub_26C3DDD48(v21 + v20, v16, &qword_280497458, &unk_26C46D3F0);
  sub_26C3DDD48(a2 + v20, &v16[v22], &qword_280497458, &unk_26C46D3F0);
  v23 = *(v5 + 48);
  if (v23(v16, 1, v4) == 1)
  {
    if (v23(&v16[v22], 1, v4) == 1)
    {
      sub_26C3DE270(v16, &qword_280497458, &unk_26C46D3F0);
      goto LABEL_14;
    }

    goto LABEL_20;
  }

  sub_26C3DDD48(v16, v12, &qword_280497458, &unk_26C46D3F0);
  if (v23(&v16[v22], 1, v4) == 1)
  {
    sub_26C453DFC(v12, type metadata accessor for PBUUID);
LABEL_20:
    v27 = &qword_2804980C0;
    v28 = &unk_26C470BD0;
LABEL_26:
    sub_26C3DE270(v16, v27, v28);
    goto LABEL_27;
  }

  sub_26C453E5C(&v16[v22], v8, type metadata accessor for PBUUID);
  if (*v12 != *v8 || v12[1] != v8[1])
  {
    sub_26C453DFC(v8, type metadata accessor for PBUUID);
    sub_26C453DFC(v12, type metadata accessor for PBUUID);
    v27 = &qword_280497458;
    v28 = &unk_26C46D3F0;
    goto LABEL_26;
  }

  v29 = *(v4 + 24);
  sub_26C46BD24();
  sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
  v30 = sub_26C46C1C4();
  sub_26C453DFC(v8, type metadata accessor for PBUUID);
  sub_26C453DFC(v12, type metadata accessor for PBUUID);
  sub_26C3DE270(v16, &qword_280497458, &unk_26C46D3F0);
  if ((v30 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_14:
  v24 = v33;
  if ((sub_26C44A748(v33[2], a2[2]) & 1) == 0 || (sub_26C44B3E0(v24[3], a2[3]) & 1) == 0 || (sub_26C44D76C(v24[4], a2[4]) & 1) == 0)
  {
    goto LABEL_27;
  }

  v25 = *(v32 + 32);
  sub_26C46BD24();
  sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
  v26 = sub_26C46C1C4();
  return v26 & 1;
}

uint64_t sub_26C454A44(uint64_t a1, uint64_t a2)
{
  v81 = a2;
  v3 = type metadata accessor for OwnershipHandoffReplyMessage(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v77 = (&v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for OwnershipHandoffRequestMessage(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v76 = (&v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for OwnershipChangeBroadcastMessage(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v75 = (&v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for OwnershipChangeReplyMessage(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v74 = (&v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for OwnershipChangeRequestMessage(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v73 = (&v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for CatchupResponseMessage(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v71 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for CatchupRequestMessage(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v72 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for SyncTransactionMessage(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v70 = (&v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = type metadata accessor for SyncMessage.OneOf_Contents(0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v80 = (&v70 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = MEMORY[0x28223BE20](v29);
  v79 = (&v70 - v32);
  v33 = MEMORY[0x28223BE20](v31);
  v78 = (&v70 - v34);
  v35 = MEMORY[0x28223BE20](v33);
  v37 = (&v70 - v36);
  v38 = MEMORY[0x28223BE20](v35);
  v40 = (&v70 - v39);
  v41 = MEMORY[0x28223BE20](v38);
  v43 = &v70 - v42;
  v44 = MEMORY[0x28223BE20](v41);
  v46 = &v70 - v45;
  MEMORY[0x28223BE20](v44);
  v48 = (&v70 - v47);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498110, &qword_26C470C20);
  v50 = *(*(v49 - 8) + 64);
  v51 = MEMORY[0x28223BE20](v49 - 8);
  v53 = &v70 - v52;
  v54 = *(v51 + 56);
  sub_26C455474(a1, &v70 - v52, type metadata accessor for SyncMessage.OneOf_Contents);
  sub_26C455474(v81, &v53[v54], type metadata accessor for SyncMessage.OneOf_Contents);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v48 = v79;
        sub_26C455474(v53, v79, type metadata accessor for SyncMessage.OneOf_Contents);
        if (swift_getEnumCaseMultiPayload() != 6)
        {
          v56 = type metadata accessor for OwnershipHandoffRequestMessage;
          goto LABEL_31;
        }

        v63 = v76;
        sub_26C453E5C(&v53[v54], v76, type metadata accessor for OwnershipHandoffRequestMessage);
        v58 = sub_26C44F40C(v48, v63);
        v64 = type metadata accessor for OwnershipHandoffRequestMessage;
      }

      else
      {
        v48 = v80;
        sub_26C455474(v53, v80, type metadata accessor for SyncMessage.OneOf_Contents);
        if (swift_getEnumCaseMultiPayload() != 7)
        {
          v56 = type metadata accessor for OwnershipHandoffReplyMessage;
          goto LABEL_31;
        }

        v63 = v77;
        sub_26C453E5C(&v53[v54], v77, type metadata accessor for OwnershipHandoffReplyMessage);
        v58 = sub_26C45080C(v48, v63);
        v64 = type metadata accessor for OwnershipHandoffReplyMessage;
      }

      goto LABEL_34;
    }

    if (EnumCaseMultiPayload != 4)
    {
      v48 = v78;
      sub_26C455474(v53, v78, type metadata accessor for SyncMessage.OneOf_Contents);
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        v56 = type metadata accessor for OwnershipChangeBroadcastMessage;
        goto LABEL_31;
      }

      v63 = v75;
      sub_26C453E5C(&v53[v54], v75, type metadata accessor for OwnershipChangeBroadcastMessage);
      v58 = sub_26C44EA1C(v48, v63);
      v64 = type metadata accessor for OwnershipChangeBroadcastMessage;
LABEL_34:
      v59 = v64;
      sub_26C453DFC(v63, v64);
      v60 = v48;
      goto LABEL_35;
    }

    sub_26C455474(v53, v37, type metadata accessor for SyncMessage.OneOf_Contents);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v57 = v74;
      sub_26C453E5C(&v53[v54], v74, type metadata accessor for OwnershipChangeReplyMessage);
      v58 = sub_26C4511EC(v37, v57);
      v59 = type metadata accessor for OwnershipChangeReplyMessage;
      sub_26C453DFC(v57, type metadata accessor for OwnershipChangeReplyMessage);
      v60 = v37;
LABEL_35:
      v62 = v59;
      goto LABEL_36;
    }

    v67 = type metadata accessor for OwnershipChangeReplyMessage;
    v68 = v37;
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_26C455474(v53, v43, type metadata accessor for SyncMessage.OneOf_Contents);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v61 = v71;
        sub_26C453E5C(&v53[v54], v71, type metadata accessor for CatchupResponseMessage);
        v58 = sub_26C452404(v43, v61);
        sub_26C453DFC(v61, type metadata accessor for CatchupResponseMessage);
        v60 = v43;
        v62 = type metadata accessor for CatchupResponseMessage;
LABEL_36:
        sub_26C453DFC(v60, v62);
        sub_26C453DFC(v53, type metadata accessor for SyncMessage.OneOf_Contents);
        return v58 & 1;
      }

      v67 = type metadata accessor for CatchupResponseMessage;
      v68 = v43;
    }

    else
    {
      sub_26C455474(v53, v40, type metadata accessor for SyncMessage.OneOf_Contents);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v66 = v73;
        sub_26C453E5C(&v53[v54], v73, type metadata accessor for OwnershipChangeRequestMessage);
        v58 = sub_26C44FDEC(v40, v66);
        v59 = type metadata accessor for OwnershipChangeRequestMessage;
        sub_26C453DFC(v66, type metadata accessor for OwnershipChangeRequestMessage);
        v60 = v40;
        goto LABEL_35;
      }

      v67 = type metadata accessor for OwnershipChangeRequestMessage;
      v68 = v40;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_26C455474(v53, v48, type metadata accessor for SyncMessage.OneOf_Contents);
      if (swift_getEnumCaseMultiPayload())
      {
        v56 = type metadata accessor for SyncTransactionMessage;
LABEL_31:
        v67 = v56;
        v68 = v48;
        goto LABEL_32;
      }

      v63 = v70;
      sub_26C453E5C(&v53[v54], v70, type metadata accessor for SyncTransactionMessage);
      v58 = sub_26C4545B8(v48, v63);
      v64 = type metadata accessor for SyncTransactionMessage;
      goto LABEL_34;
    }

    sub_26C455474(v53, v46, type metadata accessor for SyncMessage.OneOf_Contents);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v65 = v72;
      sub_26C453E5C(&v53[v54], v72, type metadata accessor for CatchupRequestMessage);
      sub_26C46BD24();
      sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
      v58 = sub_26C46C1C4();
      v59 = type metadata accessor for CatchupRequestMessage;
      sub_26C453DFC(v65, type metadata accessor for CatchupRequestMessage);
      v60 = v46;
      goto LABEL_35;
    }

    v67 = type metadata accessor for CatchupRequestMessage;
    v68 = v46;
  }

LABEL_32:
  sub_26C453DFC(v68, v67);
  sub_26C3DE270(v53, &qword_280498110, &qword_26C470C20);
  v58 = 0;
  return v58 & 1;
}

uint64_t sub_26C455474(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_26C4554DC()
{
  result = qword_280498130;
  if (!qword_280498130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280498130);
  }

  return result;
}

unint64_t sub_26C455530()
{
  result = qword_280498150;
  if (!qword_280498150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280498150);
  }

  return result;
}

unint64_t sub_26C455584()
{
  result = qword_280498160;
  if (!qword_280498160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280498160);
  }

  return result;
}

uint64_t sub_26C455600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26C46BD24();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497470, &unk_26C46E870);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_26C45576C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_26C46BD24();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497470, &unk_26C46E870);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_26C4558D0()
{
  sub_26C46BD24();
  if (v0 <= 0x3F)
  {
    sub_26C431884(319, &qword_280497D68, type metadata accessor for ValueData, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_26C431884(319, &qword_280497CB8, type metadata accessor for LamportTimestamp, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_26C4559E0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_26C46BD24();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_26C455AA0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_26C46BD24();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_26C455B44()
{
  sub_26C431D48(319, &qword_280497C98);
  if (v0 <= 0x3F)
  {
    sub_26C431884(319, &qword_2804979E8, type metadata accessor for ValueData, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_26C431884(319, qword_2804979F0, type metadata accessor for LamportTimestamp, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_26C431884(319, &qword_2804981F8, type metadata accessor for DictionaryCatchupData.TombstoneTimestamp, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          sub_26C46BD24();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_123Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 12)
  {
    v6 = *(a1 + 8) >> 60;
    if (((4 * v6) & 0xC) != 0)
    {
      return 16 - ((4 * v6) & 0xC | (v6 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v12 = sub_26C46BD24();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a2)
    {
      v14 = v12;
      v15 = *(v13 + 48);
      v16 = a1 + *(a3 + 20);

      return v15(v16, a2, v14);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
      v18 = *(*(v17 - 8) + 48);
      v19 = a1 + *(a3 + 24);

      return v18(v19, a2, v17);
    }
  }
}

void *__swift_store_extra_inhabitant_index_124Tm(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v12 = sub_26C46BD24();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a3)
    {
      v14 = v12;
      v15 = *(v13 + 56);
      v16 = v7 + *(a4 + 20);

      return v15(v16, a2, a2, v14);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v18 = *(*(v17 - 8) + 56);
      v19 = v7 + *(a4 + 24);

      return v18(v19, a2, a2, v17);
    }
  }

  return result;
}

uint64_t sub_26C455FD0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_26C46BD24();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_26C456114(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_26C46BD24();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_26C456244()
{
  sub_26C431884(319, &qword_2804979E8, type metadata accessor for ValueData, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_26C431884(319, qword_2804979F0, type metadata accessor for LamportTimestamp, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_26C46BD24();
      if (v2 <= 0x3F)
      {
        sub_26C431884(319, &qword_280497CB8, type metadata accessor for LamportTimestamp, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}