uint64_t sub_26F04B2D8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26F04B2F8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
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

  *(result + 48) = v3;
  return result;
}

uint64_t sub_26F04B330(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t sub_26F04B360(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 240))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26F04B380(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 232) = 0;
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

  *(result + 240) = v3;
  return result;
}

uint64_t _s9Tightbeam23ComponentInitDataReaderV10TypeBufferVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s9Tightbeam23ComponentInitDataReaderV10TypeBufferVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_26F04B470()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

ValueMetadata *sub_26F04B4A8()
{
  if (MEMORY[0x277D85020])
  {
    return &type metadata for TightbeamMessage;
  }

  else
  {
    return (MEMORY[0x277D84F78] + 8);
  }
}

uint64_t sub_26F04B4D0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26F04B508()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26F04B54C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 32);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_26F04B59C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 32) = v3;
  return swift_unknownObjectWeakAssign();
}

ValueMetadata *sub_26F04B5F4()
{
  if (MEMORY[0x277D85020])
  {
    return &type metadata for TightbeamMessage;
  }

  else
  {
    return (MEMORY[0x277D84F78] + 8);
  }
}

ValueMetadata *sub_26F04B630()
{
  if (MEMORY[0x277D85020])
  {
    return &type metadata for TightbeamMessage;
  }

  else
  {
    return (MEMORY[0x277D84F78] + 8);
  }
}

void *sub_26F04B6A0()
{
  if (MEMORY[0x277D85020])
  {
    return &unk_287F0D960;
  }

  else
  {
    return (MEMORY[0x277D84F78] + 8);
  }
}

uint64_t sub_26F04B6C8()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D1510, "0T");
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_26F04B6F8()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(qword_2806D1518, &unk_26F076320);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_26F04B728@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_26F06F05C();
  *a2 = result;
  return result;
}

uint64_t sub_26F04B754(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_26F06FB34();
}

__n128 sub_26F04B788(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t getEnumTagSinglePayload for EveMessageID(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for EveMessageID(uint64_t result, int a2, int a3)
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

uint64_t sub_26F04B810(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

__n128 _tb_delegated_c_service_transport_create(uint64_t a1)
{
  data = tb_endpoint_get_data(a1);
  v2 = malloc_type_calloc(1uLL, 0x10uLL, 0x80040803F642BuLL);
  if (!v2)
  {
LABEL_5:
    _tb_delegated_c_service_transport_create_cold_1();
  }

  if (v2 >= v2 + 1)
  {
    __break(0x5519u);
    goto LABEL_5;
  }

  result = *data;
  *v2 = *data;
  return result;
}

void _tb_delegated_c_service_transport_destruct(uint64_t a1)
{
  context = tb_transport_get_context(a1);

  free(context);
}

void tb_delegated_c_request_handler(const void *a1, size_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  context = tb_transport_get_context(a3);
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  *__dst = 0u;
  v14 = 0u;
  tb_delegated_c_transport_construct_message_buffer(a2, 0, __dst);
  tb_message_construct(v11, __dst, 1);
  if (a2 > *(&v14 + 1))
  {
    goto LABEL_8;
  }

  v7 = __dst[0];
  memcpy(__dst[0], a1, a2);
  if (v7 > &v7[a2])
  {
    goto LABEL_8;
  }

  *&v14 = 0;
  tb_message_set_state(v11, 4);
  v10 = v11;
  tb_transport_call_message_handler(a3, v11, &v10);
  if (v10)
  {
    v8 = *(v10 + 10);
    if (*v8)
    {
      if (v8[2] <= v8[3])
      {
        (*context)();
        goto LABEL_7;
      }

LABEL_8:
      __break(0x5519u);
    }
  }

LABEL_7:
  tb_delegated_c_transport_destruct_message_buffer(__dst);
  v9 = *MEMORY[0x277D85DE8];
}

uint64_t _tb_delegated_c_service_transport_activate(uint64_t a1)
{
  v2 = *(tb_transport_get_context(a1) + 8);

  return v2(a1);
}

void *tb_afk_interface_transport_create(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0xF0uLL, 0x1082040885B605DuLL);
  if (!v2)
  {
    tb_afk_interface_transport_create_cold_1();
  }

  v3 = v2;
  v4 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
  if (!v4)
  {
    tb_afk_interface_transport_create_cold_1();
  }

  v5 = v4;
  v3[13] = v4;
  value = tb_endpoint_get_value(a1);
  *v5 = value;
  v3[9] = _tb_afk_interface_transport_vtable;
  v9[5] = MEMORY[0x277D85DD0];
  v9[6] = 0x40000000;
  v9[7] = __tb_afk_interface_transport_create_block_invoke;
  v9[8] = &__block_descriptor_tmp;
  v9[9] = v3;
  v9[10] = v5;
  (**value)();
  v7 = *v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 0x40000000;
  v9[2] = __tb_afk_interface_transport_create_block_invoke_2;
  v9[3] = &__block_descriptor_tmp_5;
  v9[4] = v3;
  ((*v7)[1])(v7, v9);
  return v3;
}

void __tb_afk_interface_transport_create_block_invoke(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v8 = malloc_type_calloc(1uLL, 0x58uLL, 0x102004071D150F8uLL);
  if (!v8)
  {
LABEL_15:
    tb_afk_interface_transport_create_cold_1();
  }

  v9 = v8;
  v10 = malloc_type_calloc(1uLL, 0x68uLL, 0x1090040B6685729uLL);
  if (!v10)
  {
    tb_afk_interface_transport_create_cold_1();
  }

  v11 = v10;
  if (_tb_afk_common_transport_construct_message_buffer(a4, 0, v10) || tb_message_construct(v9, v11, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  tb_message_configure_received(v9, 1u);
  memcpy(*v11, a3, a4);
  v15 = 0;
  v12 = tb_transport_call_message_handler(*(a1 + 32), v9, &v15);
  if (v12 || !v15)
  {
    if (v12)
    {
      v14 = v12 | 0xE0C04000;
    }

    else
    {
      v14 = 3758097095;
    }

    (*(***(a1 + 40) + 40))(**(a1 + 40), a2, v14, 0, 0);
  }

  else
  {
    if (*v15 != 2)
    {
      __tb_afk_interface_transport_create_block_invoke_cold_1(*v15);
    }

    (*(***(a1 + 40) + 40))(**(a1 + 40), a2, 0, **(v15 + 80), *(*(v15 + 80) + 24));
    v13 = v15;
    *v15 = 3;
    tb_message_complete(v13);
  }

  _tb_afk_common_transport_destruct_message_buffer(v11);
  tb_message_destruct(v9);
  free(v11);
  free(v9);
}

void __tb_afk_interface_transport_create_block_invoke_2(uint64_t a1, const void *a2, size_t a3)
{
  v6 = malloc_type_calloc(1uLL, 0x58uLL, 0x102004071D150F8uLL);
  if (!v6)
  {
LABEL_9:
    tb_afk_interface_transport_create_cold_1();
  }

  v7 = v6;
  v8 = malloc_type_calloc(1uLL, 0x68uLL, 0x1090040B6685729uLL);
  if (!v8)
  {
    tb_afk_interface_transport_create_cold_1();
  }

  v9 = v8;
  if (_tb_afk_common_transport_construct_message_buffer(a3, 0, v8) || tb_message_construct(v7, v9, 1) || (tb_message_configure_received(v7, 1u), memcpy(*v9, a2, a3), v10 = 0, tb_transport_call_message_handler(*(a1 + 32), v7, &v10)) || v10)
  {
    __break(1u);
    goto LABEL_9;
  }

  _tb_afk_common_transport_destruct_message_buffer(v9);
  tb_message_destruct(v7);
  free(v9);
  free(v7);
}

uint64_t _tb_afk_interface_transport_send_message(uint64_t a1, int *a2, int **a3, char a4)
{
  if (*a2 != 3)
  {
    _tb_afk_interface_transport_send_message(*a2);
  }

  v7 = *(a1 + 104);
  transport_buffer = tb_message_get_transport_buffer(a2);
  if ((a4 & 2) != 0)
  {
    v14 = 0x2000;
    v15 = 0;
    v9 = (*(**v7 + 32))(*v7, *transport_buffer, transport_buffer[3], &v15, &v14);
    if (!v9)
    {
      tb_message_configure_received(a2, 2u);
      v12 = tb_message_get_transport_buffer(a2);
      v13 = _tb_afk_common_transport_message_buffer_reset(v12, 0, v14);
      if (v13)
      {
        v10 = v13;
        free(v15);
        return v10;
      }

      memcpy(*v12, v15, v14);
      *(v12 + 16) = 0;
      if (!a3)
      {
        _tb_afk_interface_transport_send_message();
      }

      *a3 = a2;
    }

    if (v15)
    {
      free(v15);
    }
  }

  else
  {
    v9 = (*(**v7 + 24))(*v7, *transport_buffer, transport_buffer[3]);
  }

  if (v9)
  {
    return 5;
  }

  else
  {
    return 0;
  }
}

void _tb_afk_interface_transport_destruct(void *a1)
{
  context = tb_transport_get_context(a1);
  free(context);

  free(a1);
}

uint64_t _tb_afk_common_transport_construct_message_buffer(size_t a1, uint64_t a2, uint64_t a3)
{
  v5 = malloc_type_calloc(a1, 1uLL, 0x100004077774924uLL);
  if (v5 > &v5[a1])
  {
    __break(0x5519u);
LABEL_5:
    _tb_afk_common_transport_construct_message_buffer_cold_1();
  }

  if (!v5)
  {
    goto LABEL_5;
  }

  *a3 = v5;
  *(a3 + 16) = 0;
  *(a3 + 24) = a1;
  *(a3 + 32) = 0;
  *(a3 + 48) = 0;
  *(a3 + 41) = 0;
  return 0;
}

uint64_t _tb_afk_common_transport_message_buffer_reset(uint64_t a1, uint64_t a2, size_t a3)
{
  free(*a1);
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;

  return _tb_afk_common_transport_construct_message_buffer(a3, v5, a1);
}

void _tb_afk_common_transport_destruct_message_buffer(uint64_t a1)
{
  free(*a1);
  *a1 = 0;
  *(a1 + 48) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 41) = 1;
}

void *tb_afk_user_transport_create(uint64_t a1)
{
  value = tb_endpoint_get_value(a1);
  if (!objc_opt_class())
  {
    return 0;
  }

  v2 = malloc_type_calloc(1uLL, 0xF0uLL, 0x1082040885B605DuLL);
  if (!v2)
  {
    _tb_delegated_c_service_transport_create_cold_1();
  }

  v3 = v2;
  v4 = malloc_type_calloc(1uLL, 0x10uLL, 0x80040803F642BuLL);
  if (!v4)
  {
    _tb_delegated_c_service_transport_create_cold_1();
  }

  v5 = v4;
  v3[13] = v4;
  v3[9] = _tb_afk_transport_vtable;
  v6 = dispatch_queue_create("com.apple.tightbeam.afk_transport.q", 0);
  v7 = *v5;
  *v5 = v6;

  v8 = [MEMORY[0x277CE4808] withService:value];
  v9 = v5[1];
  v5[1] = v8;

  v10 = v5[1];
  if (!v10)
  {
    tb_afk_user_transport_create_cold_1();
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __tb_afk_user_transport_create_block_invoke;
  v16[3] = &__block_descriptor_48_e46_v32__0__AFKEndpointInterface_8__NSString_16_24l;
  v16[4] = v5;
  v16[5] = v3;
  [v10 setEventHandler:v16];
  [v5[1] setDispatchQueue:*v5];
  v11 = v5[1];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __tb_afk_user_transport_create_block_invoke_2;
  v15[3] = &__block_descriptor_40_e50_i60__0__AFKEndpointInterface_8_v16I24Q28_v36Q44Q52l;
  v15[4] = v3;
  [v11 setCommandHandlerWithReturn:v15];
  v12 = v5[1];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __tb_afk_user_transport_create_block_invoke_3;
  v14[3] = &__block_descriptor_40_e44_v44__0__AFKEndpointInterface_8I16Q20r_v28Q36l;
  v14[4] = v3;
  [v12 setReportHandler:v14];
  return v3;
}

void __tb_afk_user_transport_create_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if ([a3 isEqual:*MEMORY[0x277CE4820]])
  {
    v4 = *(a1 + 32);
    v5 = *v4;
    *v4 = 0;

    v6 = *(a1 + 32);
    v7 = *(v6 + 8);
    *(v6 + 8) = 0;

    free(*(a1 + 32));
    v8 = *(a1 + 40);

    free(v8);
  }
}

uint64_t __tb_afk_user_transport_create_block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, size_t a7)
{
  v11 = a2;
  v12 = malloc_type_calloc(1uLL, 0x58uLL, 0x102004071D150F8uLL);
  if (!v12)
  {
LABEL_15:
    _tb_delegated_c_service_transport_create_cold_1();
  }

  v13 = v12;
  v14 = malloc_type_calloc(1uLL, 0x68uLL, 0x1090040B6685729uLL);
  if (!v14)
  {
    _tb_delegated_c_service_transport_create_cold_1();
  }

  v15 = v14;
  if (_tb_afk_common_transport_construct_message_buffer(a7, 0, v14) || tb_message_construct(v13, v15, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  tb_message_configure_received(v13, 1u);
  memcpy(*v15, a6, a7);
  v26 = 0;
  v16 = tb_transport_call_message_handler(*(a1 + 32), v13, &v26);
  if (v16 || !v26)
  {
    if (v16)
    {
      v24 = v16 | 0xE0C04000;
    }

    else
    {
      v24 = 3758097095;
    }

    v17 = mach_continuous_time();
    v21 = v11;
    v22 = a3;
    v23 = v24;
    v19 = 0;
    v20 = 0;
  }

  else
  {
    if (*v26 != 2)
    {
      __tb_afk_user_transport_create_block_invoke_2_cold_1(*v26);
    }

    v17 = mach_continuous_time();
    v18 = *(v26 + 80);
    v19 = *v18;
    v20 = v18[3];
    v21 = v11;
    v22 = a3;
    v23 = 0;
  }

  [v21 enqueueResponseForContext:v22 status:v23 timestamp:v17 outputBuffer:v19 outputBufferSize:v20 options:0];
  _tb_afk_common_transport_destruct_message_buffer(v15);
  tb_message_destruct(v13);
  free(v15);
  free(v13);

  return 0;
}

void __tb_afk_user_transport_create_block_invoke_3(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const void *a5, size_t a6)
{
  v9 = a2;
  v10 = malloc_type_calloc(1uLL, 0x58uLL, 0x102004071D150F8uLL);
  if (!v10)
  {
LABEL_9:
    _tb_delegated_c_service_transport_create_cold_1();
  }

  v11 = v10;
  v12 = malloc_type_calloc(1uLL, 0x68uLL, 0x1090040B6685729uLL);
  if (!v12)
  {
    _tb_delegated_c_service_transport_create_cold_1();
  }

  v13 = v12;
  if (_tb_afk_common_transport_construct_message_buffer(a6, 0, v12) || tb_message_construct(v11, v13, 1) || (tb_message_configure_received(v11, 1u), memcpy(*v13, a5, a6), v14 = 0, tb_transport_call_message_handler(*(a1 + 32), v11, &v14)) || v14)
  {
    __break(1u);
    goto LABEL_9;
  }

  _tb_afk_common_transport_destruct_message_buffer(v13);
  tb_message_destruct(v11);
  free(v13);
  free(v11);
}

uint64_t _tb_afk_user_transport_send_message(uint64_t a1, int *a2, int **a3, char a4)
{
  if (*a2 != 3)
  {
    _tb_afk_user_transport_send_message_cold_1(*a2);
  }

  v7 = *(a1 + 104);
  transport_buffer = tb_message_get_transport_buffer(a2);
  if ((a4 & 2) == 0)
  {
    v9 = [*(v7 + 8) enqueueReport:192 timestamp:mach_continuous_time() inputBuffer:*transport_buffer inputBufferSize:transport_buffer[3] options:0];
    goto LABEL_10;
  }

  __n = 0x2000;
  v16 = 0;
  v10 = malloc_type_calloc(0x2000uLL, 1uLL, 0x100004077774924uLL);
  if (!v10)
  {
    _tb_afk_common_transport_construct_message_buffer_cold_1();
  }

  v11 = v10;
  LODWORD(v14) = 0;
  v9 = [*(v7 + 8) enqueueCommandSync:192 timestamp:mach_continuous_time() inputBuffer:*transport_buffer inputBufferSize:transport_buffer[3] responseTimestamp:&v16 outputBuffer:v10 inOutBufferSize:&__n options:v14];
  if (!v9)
  {
    tb_message_configure_received(a2, 2u);
    v12 = tb_message_get_transport_buffer(a2);
    if (_tb_afk_common_transport_message_buffer_reset(v12, 0, __n))
    {
      __break(1u);
    }

    else
    {
      memcpy(*v12, v11, __n);
      *(v12 + 16) = 0;
      if (a3)
      {
        *a3 = a2;
        goto LABEL_9;
      }
    }

    _tb_afk_user_transport_send_message_cold_2();
  }

LABEL_9:
  free(v11);
LABEL_10:
  if (v9)
  {
    return 5;
  }

  else
  {
    return 0;
  }
}

void tb_null_transport_create_inplace_with_endpoint(uint64_t a1, unint64_t a2)
{
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  if (a2 + 240 < a2)
  {
    __break(0x5519u);
  }

  else
  {
    *(a2 + 72) = _tb_null_transport_vtable;
    *(a2 + 104) = 0;
  }
}

char *tb_null_transport_create()
{
  result = malloc_type_calloc(1uLL, 0xF0uLL, 0x1082040885B605DuLL);
  if (!result)
  {
    _tb_delegated_c_service_transport_create_cold_1();
  }

  *(result + 13) = 0u;
  *(result + 14) = 0u;
  *(result + 11) = 0u;
  *(result + 12) = 0u;
  *(result + 9) = 0u;
  *(result + 10) = 0u;
  *(result + 7) = 0u;
  *(result + 8) = 0u;
  *(result + 5) = 0u;
  *(result + 6) = 0u;
  *(result + 3) = 0u;
  *(result + 4) = 0u;
  *(result + 1) = 0u;
  *(result + 2) = 0u;
  *result = 0u;
  if (result >= result + 240)
  {
    __break(0x5519u);
  }

  else
  {
    *(result + 9) = _tb_null_transport_vtable;
    *(result + 13) = 0;
  }

  return result;
}

uint64_t _tb_null_transport_send_message(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  transport_buffer = tb_message_get_transport_buffer(a2);
  v9 = *(transport_buffer + 24);
  v10 = *transport_buffer;
  v11 = malloc_type_calloc(v9, 1uLL, 0x100004077774924uLL);
  if (v11 > &v11[v9])
  {
    goto LABEL_17;
  }

  v12 = v11;
  if (!v11)
  {
    goto LABEL_18;
  }

  memcpy(v11, v10, v9);
  if (v12 > &v12[v9])
  {
    goto LABEL_17;
  }

  v13 = malloc_type_calloc(1uLL, 0x68uLL, 0x1090040B6685729uLL);
  if (!v13)
  {
    _tb_delegated_c_service_transport_create_cold_1();
  }

  v14 = v13;
  *v13 = v12;
  v13[2] = 0;
  v13[3] = v9;
  v13[4] = 0;
  v13[6] = 0;
  *(v13 + 21) = *(transport_buffer + 42);
  v15 = malloc_type_calloc(1uLL, 0x58uLL, 0x102004071D150F8uLL);
  if (!v15)
  {
    _tb_delegated_c_service_transport_create_cold_1();
  }

  v16 = v15;
  *v15 = 4;
  *(v15 + 4) = 1;
  *(v15 + 10) = v14;
  *(v15 + 3) = a1;
  tb_message_configure_received(v15, 1u);
  v17 = *(a1 + 80);
  v18 = v16;
  if (v17)
  {
    v18 = (*(v17 + 16))(v17, v16);
    if (!v18)
    {
      free(*v14);
      free(v14);
      free(v16);
      return (2 * a4) & 4;
    }
  }

  v19 = tb_message_get_transport_buffer(v18);
  v20 = *(v19 + 24);
  free(*transport_buffer);
  *transport_buffer = 0;
  *(transport_buffer + 16) = 0;
  *(transport_buffer + 24) = 0;
  v22 = _tb_null_transport_construct_message_buffer(v20, v21, transport_buffer);
  if (v22)
  {
    _tb_null_transport_send_message_cold_1(v22);
  }

  v23 = *(v19 + 24);
  if (v23 > *(transport_buffer + 24) || (v24 = *transport_buffer, memcpy(*transport_buffer, *v19, *(v19 + 24)), v24 > &v24[v23]))
  {
LABEL_17:
    __break(0x5519u);
LABEL_18:
    _tb_afk_common_transport_construct_message_buffer_cold_1();
  }

  *(transport_buffer + 42) = *(v19 + 42);
  *(a2 + 24) = *(v18 + 24);
  tb_message_configure_received(a2, 2u);
  if (v14 != v19)
  {
    free(*v19);
    free(v19);
  }

  free(*v14);
  free(v14);
  free(v16);
  result = 0;
  if (a3)
  {
    *a3 = a2;
  }

  return result;
}

uint64_t _tb_null_transport_construct_message_buffer(size_t a1, uint64_t a2, uint64_t a3)
{
  v5 = malloc_type_calloc(a1, 1uLL, 0x100004077774924uLL);
  if (v5 > &v5[a1])
  {
    __break(0x5519u);
LABEL_5:
    _tb_afk_common_transport_construct_message_buffer_cold_1();
  }

  if (!v5)
  {
    goto LABEL_5;
  }

  *a3 = v5;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = a1;
  *(a3 + 32) = 0;
  *(a3 + 48) = 0;
  *(a3 + 41) = 0;
  return 0;
}

void _tb_null_transport_destruct_message_buffer(uint64_t a1)
{
  free(*a1);
  *a1 = 0;
  *(a1 + 48) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 41) = 1;
}

uint64_t _tb_null_transport_message_buffer_reset(uint64_t a1, uint64_t a2, size_t a3)
{
  free(*a1);
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;

  return _tb_null_transport_construct_message_buffer(a3, v5, a1);
}

uint64_t tb_conclave_start()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __tb_conclave_start_block_invoke;
  block[3] = &unk_279DBCE88;
  block[4] = &v3;
  if (tb_conclave_start_onceToken[0] != -1)
  {
    dispatch_once(tb_conclave_start_onceToken, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t __tb_conclave_start_block_invoke(uint64_t a1)
{
  result = exclaves_launch_conclave();
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 3;
  }

  return result;
}

uint64_t tb_conclave_identifier_for_service(uint64_t a1, void *a2)
{
  result = tb_conclave_start();
  if (!result)
  {
    result = exclaves_lookup_service();
    if (result)
    {
      return 10;
    }

    else
    {
      *a2 = 0;
    }
  }

  return result;
}

uint64_t tb_conclave_endpoint_for_service(uint64_t a1, void *a2)
{
  v7 = 0;
  v3 = tb_conclave_identifier_for_service(a1, &v7);
  if (!v3)
  {
    v4 = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040451B5BE8uLL);
    if (!v4)
    {
      _tb_delegated_c_service_transport_create_cold_1();
    }

    v5 = v7;
    *v4 = 0;
    v4[1] = v5;
    *a2 = tb_endpoint_create_with_data(8, v4, 0, &__block_literal_global);
  }

  return v3;
}

void *tb_eve_client_transport_create(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0xF0uLL, 0x10E00407598328FuLL);
  if (!v2)
  {
    _tb_delegated_c_service_transport_create_cold_1();
  }

  v3 = v2;
  v2[13] = _tb_eve_transport_create(a1);
  v3[9] = &_tb_eve_client_transport_vtable;
  return v3;
}

uint64_t tb_delegated_c_transport_construct_message_buffer(size_t a1, uint64_t a2, char **a3)
{
  v5 = malloc_type_calloc(a1, 1uLL, 0x100004077774924uLL);
  if (v5 > &v5[a1])
  {
    __break(0x5519u);
LABEL_5:
    _tb_afk_common_transport_construct_message_buffer_cold_1();
  }

  if (!v5)
  {
    goto LABEL_5;
  }

  *a3 = v5;
  a3[3] = a1;
  return 0;
}

void tb_delegated_c_transport_destruct_message_buffer(uint64_t a1)
{
  free(*a1);
  *a1 = 0;
  *(a1 + 48) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 41) = 1;
}

uint64_t tb_delegated_c_transport_message_buffer_reset(uint64_t a1, uint64_t a2, size_t a3)
{
  free(*a1);
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  tb_delegated_c_transport_construct_message_buffer(a3, v5, a1);
  return 0;
}

void *tb_delegated_c_service_transport_create(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0xF0uLL, 0x1082040885B605DuLL);
  if (!v2)
  {
    _tb_delegated_c_service_transport_create_cold_1();
  }

  v3 = v2;
  v2[9] = &_tb_delegated_c_service_transport_vtable;
  _tb_delegated_c_service_transport_create(a1);
  v3[13] = v4;
  return v3;
}

void *tb_delegated_c_client_transport_create(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0xF0uLL, 0x1082040885B605DuLL);
  if (!v2)
  {
    _tb_delegated_c_service_transport_create_cold_1();
  }

  v3 = v2;
  v2[9] = _tb_delegated_c_client_transport_vtable;
  _tb_delegated_c_client_transport_create(a1);
  v3[13] = v4;
  return v3;
}

__n128 _tb_delegated_c_client_transport_create(uint64_t a1)
{
  data = tb_endpoint_get_data(a1);
  v2 = malloc_type_calloc(1uLL, 0x18uLL, 0x108204027E542D7uLL);
  if (!v2)
  {
LABEL_5:
    _tb_delegated_c_service_transport_create_cold_1();
  }

  if (v2 >= v2 + 24)
  {
    __break(0x5519u);
    goto LABEL_5;
  }

  result = *data;
  v4 = data[1].n128_u64[0];
  *v2 = *data;
  *(v2 + 2) = v4;
  return result;
}

void _tb_delegated_c_client_transport_destruct(uint64_t a1)
{
  context = tb_transport_get_context(a1);

  free(context);
}

uint64_t _tb_delegated_c_client_transport_send_message(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  context = tb_transport_get_context(a1);
  v8 = *(a2 + 80);
  if (v8[2] > v8[3])
  {
    __break(0x5519u);
    _tb_delegated_c_client_transport_send_message_cold_1();
  }

  v9 = *(context + 8);
  v10 = (*context)(*v8);
  if (!v10)
  {
    if ((a4 & 2) != 0)
    {
      tb_delegated_c_transport_message_buffer_reset(*(a2 + 80), 0, 0);
      *a3 = a2;
    }

    tb_message_set_state(a2, 4);
  }

  return v10;
}

char *tb_owned_buffer_allocate(size_t a1)
{
  result = malloc_type_calloc(a1, 1uLL, 0x100004077774924uLL);
  if (result > &result[a1])
  {
    goto LABEL_4;
  }

  if (!result)
  {
    goto LABEL_5;
  }

  if (!a1)
  {
LABEL_4:
    __break(0x5519u);
LABEL_5:
    _tb_afk_common_transport_construct_message_buffer_cold_1();
  }

  return result;
}

uint64_t tb_message_initialize(uint64_t result)
{
  *result = 0;
  *(result + 4) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = -1;
  *(result + 56) = 0u;
  *(result + 40) = 0u;
  if (result + 40 > (result + 72))
  {
    __break(0x5519u);
  }

  else
  {
    *(result + 72) = 0;
    *(result + 80) = 0;
  }

  return result;
}

uint64_t tb_message_construct(uint64_t a1, uint64_t a2, char a3)
{
  LODWORD(v3) = *a1;
  if (*a1)
  {
LABEL_10:
    tb_message_construct_cold_1(v3);
  }

  *a1 = 1;
  *(a1 + 4) = a3;
  *(a1 + 8) = 0;
  *(a1 + 80) = a2;
  v4 = (a1 + 40);
  v3 = (a1 + 72);
  v5 = 4;
  *(a1 + 32) = -1;
  do
  {
    if (v4 + 1 > v3 || v4 >= v4 + 1)
    {
      __break(0x5519u);
      goto LABEL_10;
    }

    *v4++ = 0;
    --v5;
  }

  while (v5);
  *v3 = 0;
  return 0;
}

uint64_t tb_message_complete(uint64_t result)
{
  v1 = *(result + 4);
  if (v1 == 1)
  {
    if (*result != 1 && *result != 4)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  if (v1 == 2)
  {
    goto LABEL_5;
  }

  if (*(result + 4))
  {
LABEL_12:
    *result = 2;
    return result;
  }

LABEL_4:
  while (1)
  {
    __break(1u);
LABEL_5:
    if ((*result - 3) < 2)
    {
      return result;
    }

    if (*result == 1)
    {
      goto LABEL_12;
    }
  }
}

uint64_t tb_message_reset(uint64_t result, char a2)
{
  *result = 1;
  *(result + 4) = a2;
  v2 = (result + 40);
  v3 = (result + 72);
  v4 = 4;
  while (v2 + 1 <= v3 && v2 < v2 + 1)
  {
    *v2++ = 0;
    if (!--v4)
    {
      *v3 = 0;
      return 0;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t tb_message_destruct(uint64_t result)
{
  *(result + 4) = 0;
  *(result + 8) = 0;
  *(result + 32) = -1;
  *(result + 80) = 0;
  *result = 5;
  return result;
}

uint64_t tb_message_configure_received(uint64_t result, unsigned __int8 a2)
{
  if ((a2 - 1) >= 2u)
  {
    tb_message_configure_received_cold_1(a2);
  }

  *result = 4;
  *(result + 4) = a2;
  return result;
}

uint64_t tb_message_measure_subrange(uint64_t a1, unint64_t *a2, void *a3, uint64_t a4)
{
  *a2 = *(*(a1 + 80) + 16);
  result = (*(a4 + 16))(a4);
  v8 = *(*(a1 + 80) + 16);
  v9 = v8 >= *a2;
  *a3 = v8 - *a2;
  if (!v9)
  {
    tb_message_measure_subrange_cold_1();
  }

  return result;
}

uint64_t tb_message_subrange(void *a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a1[10];
  v5 = v4[3];
  v6 = v5 - a2;
  if (v5 < a2)
  {
    tb_message_subrange_cold_3(a2, v4[3]);
  }

  if (__CFADD__(a2, a3))
  {
    tb_message_subrange_cold_2();
  }

  if (a2 + a3 > v5)
  {
    tb_message_subrange_cold_1(a2 + a3, v4[3]);
  }

  v27 = 0;
  v26 = 0u;
  v25 = 0u;
  v7 = *v4;
  v8 = *v4 + v5;
  v9 = v7 + a2;
  if (v6 < a3 || v9 > v8 || v7 > v9)
  {
    __break(0x5519u);
  }

  v24 = v7 + a2;
  *(&v25 + 1) = 0;
  v26 = a3;
  LODWORD(v27) = 0;
  v28 = 0uLL;
  v29 = 0uLL;
  v30 = 0uLL;
  v31 = 0;
  v16 = 0;
  v14 = 4;
  v15 = 2;
  v17 = a1[2];
  v18 = 0;
  v19 = a1[4];
  v20 = 0uLL;
  v21 = 0uLL;
  v22 = 0;
  v23 = &v24;
  result = (*(a4 + 16))(a4, &v14);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t tb_message_get_capability(uint64_t result, uint64_t a2)
{
  v2 = result + 40 + 8 * a2;
  v3 = v2 + 8;
  if (v2 >= result + 40 && v3 <= result + 72 && v2 < v3)
  {
    return *v2;
  }

  __break(0x5519u);
  return result;
}

uint64_t tb_message_encode_capability(uint64_t result, uint64_t a2)
{
  v2 = (result + 72);
  v3 = *(result + 72);
  if (v3 > 3)
  {
    return 6;
  }

  v4 = result + 8 * v3;
  v5 = (v4 + 40);
  v6 = v4 + 48;
  if (v6 > v2 || v5 > v6)
  {
    __break(0x5519u);
  }

  else
  {
    result = 0;
    *v5 = a2;
    *v2 = v3 + 1;
  }

  return result;
}

unint64_t tb_message_decode_capability(uint64_t a1, void *a2)
{
  v2 = (a1 + 72);
  v3 = *(a1 + 72);
  if (!v3)
  {
    return 7;
  }

  v5 = *(a1 + 40);
  result = a1 + 40;
  *a2 = v5;
  v6 = v3 - 1;
  if (v3 == 1)
  {
LABEL_18:
    v15 = result + 8 * v3;
    v16 = (v15 - 8);
    if (v15 - 8 >= result && v15 <= v2 && v16 < v15)
    {
      result = 0;
      *v16 = 0;
      *v2 = v6;
      return result;
    }
  }

  else
  {
    v7 = result;
    v8 = v3 - 1;
    while (1)
    {
      v9 = v7 + 1;
      v10 = v7 + 2;
      v11 = (v7 + 1) < result || v10 > v2;
      v12 = v11 || v9 > v10;
      v13 = v12 || v9 > v2;
      if (v13 || v7 >= v9)
      {
        break;
      }

      *v7 = v7[1];
      ++v7;
      if (!--v8)
      {
        goto LABEL_18;
      }
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t tb_message_precheck_encoding(uint64_t result, uint64_t a2)
{
  if (*result != 1)
  {
    tb_message_precheck_encoding_cold_1();
  }

  v2 = *(result + 80);
  v3 = *(v2 + 16);
  v4 = __CFADD__(v3, a2);
  v5 = v3 + a2;
  if (v4)
  {
    tb_message_precheck_encoding_cold_3();
  }

  if (v5 > *(v2 + 24))
  {
    tb_message_precheck_encoding_cold_2();
  }

  return result;
}

uint64_t tb_message_encode_BOOL(uint64_t result, char a2)
{
  if (*result != 1)
  {
LABEL_14:
    tb_message_encode_BOOL_cold_1();
  }

  v2 = *(result + 80);
  v3 = v2[2];
  if (v3 == -1)
  {
    tb_message_encode_BOOL_cold_3();
  }

  v4 = v2[3];
  if (v3 + 1 > v4)
  {
    tb_message_encode_BOOL_cold_2();
  }

  v5 = *v2;
  v6 = (*v2 + v3);
  v8 = v6 > v5 + v4 || v5 > v6 || v4 == v3;
  if (v8 || (*v6 = a2, v6 >= v6 + 1))
  {
    __break(0x5519u);
    goto LABEL_14;
  }

  ++*(*(result + 80) + 16);
  return result;
}

uint64_t tb_message_raw_encode_BOOL(uint64_t result, char a2)
{
  v2 = *(result + 80);
  v3 = v2[2];
  v4 = v2[3];
  v5 = *v2;
  v6 = (*v2 + v3);
  v8 = v4 == v3 || v6 > v5 + v4 || v5 > v6;
  if (v8 || (*v6 = a2, v6 >= v6 + 1))
  {
    __break(0x5519u);
  }

  else
  {
    ++*(*(result + 80) + 16);
  }

  return result;
}

uint64_t tb_message_encode_u8(uint64_t result, char a2)
{
  if (*result != 1)
  {
LABEL_14:
    tb_message_encode_u8_cold_1();
  }

  v2 = *(result + 80);
  v3 = v2[2];
  if (v3 == -1)
  {
    tb_message_encode_u8_cold_3();
  }

  v4 = v2[3];
  if (v3 + 1 > v4)
  {
    tb_message_encode_u8_cold_2();
  }

  v5 = *v2;
  v6 = (*v2 + v3);
  v8 = v6 > v5 + v4 || v5 > v6 || v4 == v3;
  if (v8 || (*v6 = a2, v6 >= v6 + 1))
  {
    __break(0x5519u);
    goto LABEL_14;
  }

  ++*(*(result + 80) + 16);
  return result;
}

uint64_t tb_message_raw_encode_u8(uint64_t result, char a2)
{
  v2 = *(result + 80);
  v3 = v2[2];
  v4 = v2[3];
  v5 = *v2;
  v6 = (*v2 + v3);
  v8 = v4 == v3 || v6 > v5 + v4 || v5 > v6;
  if (v8 || (*v6 = a2, v6 >= v6 + 1))
  {
    __break(0x5519u);
  }

  else
  {
    ++*(*(result + 80) + 16);
  }

  return result;
}

uint64_t tb_message_encode_u16(uint64_t result, __int16 a2)
{
  if (*result != 1)
  {
LABEL_15:
    tb_message_encode_u16_cold_1();
  }

  v2 = *(result + 80);
  v3 = v2[2];
  if (v3 >= 0xFFFFFFFFFFFFFFFELL)
  {
    tb_message_encode_u16_cold_3();
  }

  v4 = v2[3];
  if (v3 + 2 > v4)
  {
    tb_message_encode_u16_cold_2();
  }

  v5 = *v2;
  v6 = (*v2 + v3);
  v7 = v4 - v3;
  v9 = v6 <= v5 + v4 && v5 <= v6 && v7 >= 2;
  if (!v9 || (*v6 = a2, v6 >= v6 + 1))
  {
    __break(0x5519u);
    goto LABEL_15;
  }

  *(*(result + 80) + 16) += 2;
  return result;
}

uint64_t tb_message_raw_encode_u16(uint64_t result, __int16 a2)
{
  v2 = *(result + 80);
  v3 = v2[2];
  v4 = v2[3];
  v5 = *v2;
  v6 = (*v2 + v3);
  v8 = v4 - v3 < 2 || v6 > v5 + v4 || v5 > v6;
  if (v8 || (*v6 = a2, v6 >= v6 + 1))
  {
    __break(0x5519u);
  }

  else
  {
    *(*(result + 80) + 16) += 2;
  }

  return result;
}

uint64_t tb_message_encode_u32(uint64_t result, int a2)
{
  if (*result != 1)
  {
LABEL_15:
    tb_message_encode_u32_cold_1();
  }

  v2 = *(result + 80);
  v3 = v2[2];
  if (v3 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    tb_message_encode_u32_cold_3();
  }

  v4 = v2[3];
  if (v3 + 4 > v4)
  {
    tb_message_encode_u32_cold_2();
  }

  v5 = *v2;
  v6 = (*v2 + v3);
  v7 = v4 - v3;
  v9 = v6 <= v5 + v4 && v5 <= v6 && v7 >= 4;
  if (!v9 || (*v6 = a2, v6 >= v6 + 1))
  {
    __break(0x5519u);
    goto LABEL_15;
  }

  *(*(result + 80) + 16) += 4;
  return result;
}

uint64_t tb_message_raw_encode_u32(uint64_t result, int a2)
{
  v2 = *(result + 80);
  v3 = v2[2];
  v4 = v2[3];
  v5 = *v2;
  v6 = (*v2 + v3);
  v8 = v4 - v3 < 4 || v6 > v5 + v4 || v5 > v6;
  if (v8 || (*v6 = a2, v6 >= v6 + 1))
  {
    __break(0x5519u);
  }

  else
  {
    *(*(result + 80) + 16) += 4;
  }

  return result;
}

uint64_t tb_message_encode_u64(uint64_t result, uint64_t a2)
{
  if (*result != 1)
  {
LABEL_15:
    tb_message_encode_u64_cold_1();
  }

  v2 = *(result + 80);
  v3 = v2[2];
  if (v3 >= 0xFFFFFFFFFFFFFFF8)
  {
    tb_message_encode_u64_cold_3();
  }

  v4 = v2[3];
  if (v3 + 8 > v4)
  {
    tb_message_encode_u64_cold_2();
  }

  v5 = *v2;
  v6 = (*v2 + v3);
  v7 = v4 - v3;
  v9 = v6 <= v5 + v4 && v5 <= v6 && v7 >= 8;
  if (!v9 || (*v6 = a2, v6 >= v6 + 1))
  {
    __break(0x5519u);
    goto LABEL_15;
  }

  *(*(result + 80) + 16) += 8;
  return result;
}

uint64_t tb_message_raw_encode_u64(uint64_t result, uint64_t a2)
{
  v2 = *(result + 80);
  v3 = v2[2];
  v4 = v2[3];
  v5 = *v2;
  v6 = (*v2 + v3);
  v8 = v4 - v3 < 8 || v6 > v5 + v4 || v5 > v6;
  if (v8 || (*v6 = a2, v6 >= v6 + 1))
  {
    __break(0x5519u);
  }

  else
  {
    *(*(result + 80) + 16) += 8;
  }

  return result;
}

uint64_t tb_message_encode_s8(uint64_t result, char a2)
{
  if (*result != 1)
  {
LABEL_14:
    tb_message_encode_s8_cold_1();
  }

  v2 = *(result + 80);
  v3 = v2[2];
  if (v3 == -1)
  {
    tb_message_encode_s8_cold_3();
  }

  v4 = v2[3];
  if (v3 + 1 > v4)
  {
    tb_message_encode_s8_cold_2();
  }

  v5 = *v2;
  v6 = (*v2 + v3);
  v8 = v6 > v5 + v4 || v5 > v6 || v4 == v3;
  if (v8 || (*v6 = a2, v6 >= v6 + 1))
  {
    __break(0x5519u);
    goto LABEL_14;
  }

  ++*(*(result + 80) + 16);
  return result;
}

uint64_t tb_message_raw_encode_s8(uint64_t result, char a2)
{
  v2 = *(result + 80);
  v3 = v2[2];
  v4 = v2[3];
  v5 = *v2;
  v6 = (*v2 + v3);
  v8 = v4 == v3 || v6 > v5 + v4 || v5 > v6;
  if (v8 || (*v6 = a2, v6 >= v6 + 1))
  {
    __break(0x5519u);
  }

  else
  {
    ++*(*(result + 80) + 16);
  }

  return result;
}

uint64_t tb_message_encode_s16(uint64_t result, __int16 a2)
{
  if (*result != 1)
  {
LABEL_15:
    tb_message_encode_s16_cold_1();
  }

  v2 = *(result + 80);
  v3 = v2[2];
  if (v3 >= 0xFFFFFFFFFFFFFFFELL)
  {
    tb_message_encode_s16_cold_3();
  }

  v4 = v2[3];
  if (v3 + 2 > v4)
  {
    tb_message_encode_s16_cold_2();
  }

  v5 = *v2;
  v6 = (*v2 + v3);
  v7 = v4 - v3;
  v9 = v6 <= v5 + v4 && v5 <= v6 && v7 >= 2;
  if (!v9 || (*v6 = a2, v6 >= v6 + 1))
  {
    __break(0x5519u);
    goto LABEL_15;
  }

  *(*(result + 80) + 16) += 2;
  return result;
}

uint64_t tb_message_raw_encode_s16(uint64_t result, __int16 a2)
{
  v2 = *(result + 80);
  v3 = v2[2];
  v4 = v2[3];
  v5 = *v2;
  v6 = (*v2 + v3);
  v8 = v4 - v3 < 2 || v6 > v5 + v4 || v5 > v6;
  if (v8 || (*v6 = a2, v6 >= v6 + 1))
  {
    __break(0x5519u);
  }

  else
  {
    *(*(result + 80) + 16) += 2;
  }

  return result;
}

uint64_t tb_message_encode_s32(uint64_t result, int a2)
{
  if (*result != 1)
  {
LABEL_15:
    tb_message_encode_s32_cold_1();
  }

  v2 = *(result + 80);
  v3 = v2[2];
  if (v3 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    tb_message_encode_s32_cold_3();
  }

  v4 = v2[3];
  if (v3 + 4 > v4)
  {
    tb_message_encode_s32_cold_2();
  }

  v5 = *v2;
  v6 = (*v2 + v3);
  v7 = v4 - v3;
  v9 = v6 <= v5 + v4 && v5 <= v6 && v7 >= 4;
  if (!v9 || (*v6 = a2, v6 >= v6 + 1))
  {
    __break(0x5519u);
    goto LABEL_15;
  }

  *(*(result + 80) + 16) += 4;
  return result;
}

uint64_t tb_message_raw_encode_s32(uint64_t result, int a2)
{
  v2 = *(result + 80);
  v3 = v2[2];
  v4 = v2[3];
  v5 = *v2;
  v6 = (*v2 + v3);
  v8 = v4 - v3 < 4 || v6 > v5 + v4 || v5 > v6;
  if (v8 || (*v6 = a2, v6 >= v6 + 1))
  {
    __break(0x5519u);
  }

  else
  {
    *(*(result + 80) + 16) += 4;
  }

  return result;
}

uint64_t tb_message_encode_s64(uint64_t result, uint64_t a2)
{
  if (*result != 1)
  {
LABEL_15:
    tb_message_encode_s64_cold_1();
  }

  v2 = *(result + 80);
  v3 = v2[2];
  if (v3 >= 0xFFFFFFFFFFFFFFF8)
  {
    tb_message_encode_s64_cold_3();
  }

  v4 = v2[3];
  if (v3 + 8 > v4)
  {
    tb_message_encode_s64_cold_2();
  }

  v5 = *v2;
  v6 = (*v2 + v3);
  v7 = v4 - v3;
  v9 = v6 <= v5 + v4 && v5 <= v6 && v7 >= 8;
  if (!v9 || (*v6 = a2, v6 >= v6 + 1))
  {
    __break(0x5519u);
    goto LABEL_15;
  }

  *(*(result + 80) + 16) += 8;
  return result;
}

uint64_t tb_message_raw_encode_s64(uint64_t result, uint64_t a2)
{
  v2 = *(result + 80);
  v3 = v2[2];
  v4 = v2[3];
  v5 = *v2;
  v6 = (*v2 + v3);
  v8 = v4 - v3 < 8 || v6 > v5 + v4 || v5 > v6;
  if (v8 || (*v6 = a2, v6 >= v6 + 1))
  {
    __break(0x5519u);
  }

  else
  {
    *(*(result + 80) + 16) += 8;
  }

  return result;
}

uint64_t tb_message_encode_f32_v2(uint64_t a1, float a2)
{
  if ((LODWORD(a2) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    if (*a1 == 1)
    {
      v3 = *(a1 + 80);
      v4 = v3[2];
      if (v4 >= 0xFFFFFFFFFFFFFFFCLL)
      {
        tb_message_encode_f32_v2_cold_3();
      }

      v5 = v3[3];
      if (v4 + 4 > v5)
      {
        tb_message_encode_f32_v2_cold_2();
      }

      v6 = *v3;
      v7 = (*v3 + v4);
      v8 = v5 - v4;
      if (v7 <= v6 + v5 && v6 <= v7 && v8 >= 4)
      {
        *v7 = a2;
        if (v7 < v7 + 1)
        {
          v2 = 0;
          *(*(a1 + 80) + 16) += 4;
          return v2;
        }
      }

      __break(0x5519u);
    }

    tb_message_encode_f32_v2_cold_1();
  }

  return 6;
}

uint64_t tb_message_raw_encode_f32_v2(uint64_t result, float a2)
{
  if ((LODWORD(a2) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    return 6;
  }

  v3 = *(result + 80);
  v4 = v3[2];
  v5 = v3[3];
  v6 = *v3;
  v7 = (*v3 + v4);
  if (v5 - v4 >= 4 && v7 <= v6 + v5 && v6 <= v7)
  {
    *v7 = a2;
    if (v7 < v7 + 1)
    {
      v2 = 0;
      *(*(result + 80) + 16) += 4;
      return v2;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t tb_message_encode_f32(uint64_t a1, float a2)
{
  result = tb_message_encode_f32_v2(a1, a2);
  if (result)
  {
    tb_message_encode_f32_cold_1(result);
  }

  return result;
}

uint64_t tb_message_raw_encode_f32(uint64_t a1, float a2)
{
  result = tb_message_raw_encode_f32_v2(a1, a2);
  if (result)
  {
    tb_message_raw_encode_f32_cold_1(result);
  }

  return result;
}

uint64_t tb_message_encode_f64_v2(uint64_t a1, double a2)
{
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (*a1 == 1)
    {
      v3 = *(a1 + 80);
      v4 = v3[2];
      if (v4 >= 0xFFFFFFFFFFFFFFF8)
      {
        tb_message_encode_f64_v2_cold_3();
      }

      v5 = v3[3];
      if (v4 + 8 > v5)
      {
        tb_message_encode_f64_v2_cold_2();
      }

      v6 = *v3;
      v7 = (*v3 + v4);
      v8 = v5 - v4;
      if (v7 <= v6 + v5 && v6 <= v7 && v8 >= 8)
      {
        *v7 = a2;
        if (v7 < v7 + 1)
        {
          v2 = 0;
          *(*(a1 + 80) + 16) += 8;
          return v2;
        }
      }

      __break(0x5519u);
    }

    tb_message_encode_f64_v2_cold_1();
  }

  return 6;
}

uint64_t tb_message_raw_encode_f64_v2(uint64_t result, double a2)
{
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 6;
  }

  v3 = *(result + 80);
  v4 = v3[2];
  v5 = v3[3];
  v6 = *v3;
  v7 = (*v3 + v4);
  if (v5 - v4 >= 8 && v7 <= v6 + v5 && v6 <= v7)
  {
    *v7 = a2;
    if (v7 < v7 + 1)
    {
      v2 = 0;
      *(*(result + 80) + 16) += 8;
      return v2;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t tb_message_encode_f64(uint64_t a1, double a2)
{
  result = tb_message_encode_f64_v2(a1, a2);
  if (result)
  {
    tb_message_encode_f64_cold_1(result);
  }

  return result;
}

uint64_t tb_message_raw_encode_f64(uint64_t a1, double a2)
{
  result = tb_message_raw_encode_f64_v2(a1, a2);
  if (result)
  {
    tb_message_raw_encode_f64_cold_1(result);
  }

  return result;
}

void *tb_message_encode_buffer(uint64_t a1, const void *a2, size_t __n)
{
  v3 = *(a1 + 80);
  v4 = v3[2];
  v5 = v4 + __n;
  if (__CFADD__(v4, __n))
  {
LABEL_14:
    tb_message_encode_buffer_cold_2();
  }

  v6 = v3[3];
  if (v5 > v6)
  {
    tb_message_encode_buffer_cold_1(v5, v3[3]);
  }

  v8 = *v3 + v6;
  v9 = *v3 + v4;
  v10 = v6 - v4;
  v12 = v9 <= v8 && *v3 <= v9 && v10 >= __n;
  if (!v12 || (result = memcpy((*v3 + v4), a2, __n), v9 > v9 + __n))
  {
    __break(0x5519u);
    goto LABEL_14;
  }

  v3[2] += __n;
  return result;
}

uint64_t tb_message_precheck_decoding(uint64_t result, uint64_t a2)
{
  if (*result != 4)
  {
    tb_message_precheck_decoding_cold_1();
  }

  v2 = *(result + 80);
  v3 = *(v2 + 24);
  if (!v3)
  {
    tb_message_precheck_decoding_cold_4();
  }

  v4 = *(v2 + 16);
  v5 = __CFADD__(v4, a2);
  v6 = v4 + a2;
  if (v5)
  {
    tb_message_precheck_decoding_cold_3();
  }

  if (v6 > v3)
  {
    tb_message_precheck_decoding_cold_2();
  }

  return result;
}

uint64_t tb_message_decode_BOOL(uint64_t result, _BYTE *a2)
{
  if (*result != 4)
  {
    tb_message_decode_BOOL_cold_1();
  }

  v2 = *(result + 80);
  v3 = v2[3];
  if (!v3)
  {
    tb_message_decode_BOOL_cold_4();
  }

  v4 = v2[2];
  v5 = v4 + 1;
  if (v4 == -1)
  {
    tb_message_decode_BOOL_cold_3();
  }

  if (v5 > v3)
  {
    tb_message_decode_BOOL_cold_2();
  }

  v6 = *v2;
  v7 = *v2 + v3;
  v8 = (*v2 + v4);
  v2[2] = v5;
  if (v8 > v7 || v6 > v8 || v3 == v4)
  {
    __break(0x5519u);
  }

  else
  {
    *a2 = *v8;
  }

  return result;
}

uint64_t tb_message_raw_decode_BOOL(uint64_t result, _BYTE *a2)
{
  v2 = *(result + 80);
  v3 = v2[2];
  v4 = v2[3];
  v5 = *v2;
  v6 = *v2 + v4;
  v7 = (*v2 + v3);
  v2[2] = v3 + 1;
  if (v4 == v3 || v7 > v6 || v5 > v7)
  {
    __break(0x5519u);
  }

  else
  {
    *a2 = *v7;
  }

  return result;
}

uint64_t tb_message_decode_u8(uint64_t result, _BYTE *a2)
{
  if (*result != 4)
  {
    tb_message_decode_u8_cold_1();
  }

  v2 = *(result + 80);
  v3 = v2[3];
  if (!v3)
  {
    tb_message_decode_u8_cold_4();
  }

  v4 = v2[2];
  v5 = v4 + 1;
  if (v4 == -1)
  {
    tb_message_decode_u8_cold_3();
  }

  if (v5 > v3)
  {
    tb_message_decode_u8_cold_2();
  }

  v6 = *v2;
  v7 = *v2 + v3;
  v8 = (*v2 + v4);
  v2[2] = v5;
  if (v8 > v7 || v6 > v8 || v3 == v4)
  {
    __break(0x5519u);
  }

  else
  {
    *a2 = *v8;
  }

  return result;
}

uint64_t tb_message_raw_decode_u8(uint64_t result, _BYTE *a2)
{
  v2 = *(result + 80);
  v3 = v2[2];
  v4 = v2[3];
  v5 = *v2;
  v6 = *v2 + v4;
  v7 = (*v2 + v3);
  v2[2] = v3 + 1;
  if (v4 == v3 || v7 > v6 || v5 > v7)
  {
    __break(0x5519u);
  }

  else
  {
    *a2 = *v7;
  }

  return result;
}

uint64_t tb_message_decode_u16(uint64_t result, _WORD *a2)
{
  if (*result != 4)
  {
    tb_message_decode_u16_cold_1();
  }

  v2 = *(result + 80);
  v3 = v2[3];
  if (!v3)
  {
    tb_message_decode_u16_cold_4();
  }

  v4 = v2[2];
  v5 = v4 + 2;
  if (v4 >= 0xFFFFFFFFFFFFFFFELL)
  {
    tb_message_decode_u16_cold_3();
  }

  if (v5 > v3)
  {
    tb_message_decode_u16_cold_2();
  }

  v6 = *v2;
  v7 = *v2 + v3;
  v8 = (*v2 + v4);
  v2[2] = v5;
  if (v8 <= v7 && v6 <= v8 && v3 - v4 >= 2)
  {
    *a2 = *v8;
  }

  else
  {
    __break(0x5519u);
  }

  return result;
}

uint64_t tb_message_raw_decode_u16(uint64_t result, _WORD *a2)
{
  v2 = *(result + 80);
  v3 = v2[2];
  v4 = v2[3];
  v5 = *v2;
  v6 = *v2 + v4;
  v7 = (*v2 + v3);
  v2[2] = v3 + 2;
  if (v4 - v3 < 2 || v7 > v6 || v5 > v7)
  {
    __break(0x5519u);
  }

  else
  {
    *a2 = *v7;
  }

  return result;
}

uint64_t tb_message_decode_u32(uint64_t result, _DWORD *a2)
{
  if (*result != 4)
  {
    tb_message_decode_u32_cold_1();
  }

  v2 = *(result + 80);
  v3 = v2[3];
  if (!v3)
  {
    tb_message_decode_u32_cold_4();
  }

  v4 = v2[2];
  v5 = v4 + 4;
  if (v4 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    tb_message_decode_u32_cold_3();
  }

  if (v5 > v3)
  {
    tb_message_decode_u32_cold_2();
  }

  v6 = *v2;
  v7 = *v2 + v3;
  v8 = (*v2 + v4);
  v2[2] = v5;
  if (v8 <= v7 && v6 <= v8 && v3 - v4 >= 4)
  {
    *a2 = *v8;
  }

  else
  {
    __break(0x5519u);
  }

  return result;
}

uint64_t tb_message_raw_decode_u32(uint64_t result, _DWORD *a2)
{
  v2 = *(result + 80);
  v3 = v2[2];
  v4 = v2[3];
  v5 = *v2;
  v6 = *v2 + v4;
  v7 = (*v2 + v3);
  v2[2] = v3 + 4;
  if (v4 - v3 < 4 || v7 > v6 || v5 > v7)
  {
    __break(0x5519u);
  }

  else
  {
    *a2 = *v7;
  }

  return result;
}

uint64_t tb_message_decode_u64(uint64_t result, void *a2)
{
  if (*result != 4)
  {
    tb_message_decode_u64_cold_1();
  }

  v2 = *(result + 80);
  v3 = v2[3];
  if (!v3)
  {
    tb_message_decode_u64_cold_4();
  }

  v4 = v2[2];
  v5 = v4 + 8;
  if (v4 >= 0xFFFFFFFFFFFFFFF8)
  {
    tb_message_decode_u64_cold_3();
  }

  if (v5 > v3)
  {
    tb_message_decode_u64_cold_2();
  }

  v6 = *v2;
  v7 = *v2 + v3;
  v8 = (*v2 + v4);
  v2[2] = v5;
  if (v8 <= v7 && v6 <= v8 && v3 - v4 >= 8)
  {
    *a2 = *v8;
  }

  else
  {
    __break(0x5519u);
  }

  return result;
}

uint64_t tb_message_raw_decode_u64(uint64_t result, void *a2)
{
  v2 = *(result + 80);
  v3 = v2[2];
  v4 = v2[3];
  v5 = *v2;
  v6 = *v2 + v4;
  v7 = (*v2 + v3);
  v2[2] = v3 + 8;
  if (v4 - v3 < 8 || v7 > v6 || v5 > v7)
  {
    __break(0x5519u);
  }

  else
  {
    *a2 = *v7;
  }

  return result;
}

uint64_t tb_message_decode_s8(uint64_t result, _BYTE *a2)
{
  if (*result != 4)
  {
    tb_message_decode_s8_cold_1();
  }

  v2 = *(result + 80);
  v3 = v2[3];
  if (!v3)
  {
    tb_message_decode_s8_cold_4();
  }

  v4 = v2[2];
  v5 = v4 + 1;
  if (v4 == -1)
  {
    tb_message_decode_s8_cold_3();
  }

  if (v5 > v3)
  {
    tb_message_decode_s8_cold_2();
  }

  v6 = *v2;
  v7 = *v2 + v3;
  v8 = (*v2 + v4);
  v2[2] = v5;
  if (v8 > v7 || v6 > v8 || v3 == v4)
  {
    __break(0x5519u);
  }

  else
  {
    *a2 = *v8;
  }

  return result;
}

uint64_t tb_message_raw_decode_s8(uint64_t result, _BYTE *a2)
{
  v2 = *(result + 80);
  v3 = v2[2];
  v4 = v2[3];
  v5 = *v2;
  v6 = *v2 + v4;
  v7 = (*v2 + v3);
  v2[2] = v3 + 1;
  if (v4 == v3 || v7 > v6 || v5 > v7)
  {
    __break(0x5519u);
  }

  else
  {
    *a2 = *v7;
  }

  return result;
}

uint64_t tb_message_decode_s16(uint64_t result, _WORD *a2)
{
  if (*result != 4)
  {
    tb_message_decode_s16_cold_1();
  }

  v2 = *(result + 80);
  v3 = v2[3];
  if (!v3)
  {
    tb_message_decode_s16_cold_4();
  }

  v4 = v2[2];
  v5 = v4 + 2;
  if (v4 >= 0xFFFFFFFFFFFFFFFELL)
  {
    tb_message_decode_s16_cold_3();
  }

  if (v5 > v3)
  {
    tb_message_decode_s16_cold_2();
  }

  v6 = *v2;
  v7 = *v2 + v3;
  v8 = (*v2 + v4);
  v2[2] = v5;
  if (v8 <= v7 && v6 <= v8 && v3 - v4 >= 2)
  {
    *a2 = *v8;
  }

  else
  {
    __break(0x5519u);
  }

  return result;
}

uint64_t tb_message_raw_decode_s16(uint64_t result, _WORD *a2)
{
  v2 = *(result + 80);
  v3 = v2[2];
  v4 = v2[3];
  v5 = *v2;
  v6 = *v2 + v4;
  v7 = (*v2 + v3);
  v2[2] = v3 + 2;
  if (v4 - v3 < 2 || v7 > v6 || v5 > v7)
  {
    __break(0x5519u);
  }

  else
  {
    *a2 = *v7;
  }

  return result;
}

uint64_t tb_message_decode_s32(uint64_t result, _DWORD *a2)
{
  if (*result != 4)
  {
    tb_message_decode_s32_cold_1();
  }

  v2 = *(result + 80);
  v3 = v2[3];
  if (!v3)
  {
    tb_message_decode_s32_cold_4();
  }

  v4 = v2[2];
  v5 = v4 + 4;
  if (v4 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    tb_message_decode_s32_cold_3();
  }

  if (v5 > v3)
  {
    tb_message_decode_s32_cold_2();
  }

  v6 = *v2;
  v7 = *v2 + v3;
  v8 = (*v2 + v4);
  v2[2] = v5;
  if (v8 <= v7 && v6 <= v8 && v3 - v4 >= 4)
  {
    *a2 = *v8;
  }

  else
  {
    __break(0x5519u);
  }

  return result;
}

uint64_t tb_message_raw_decode_s32(uint64_t result, _DWORD *a2)
{
  v2 = *(result + 80);
  v3 = v2[2];
  v4 = v2[3];
  v5 = *v2;
  v6 = *v2 + v4;
  v7 = (*v2 + v3);
  v2[2] = v3 + 4;
  if (v4 - v3 < 4 || v7 > v6 || v5 > v7)
  {
    __break(0x5519u);
  }

  else
  {
    *a2 = *v7;
  }

  return result;
}

uint64_t tb_message_decode_s64(uint64_t result, void *a2)
{
  if (*result != 4)
  {
    tb_message_decode_s64_cold_1();
  }

  v2 = *(result + 80);
  v3 = v2[3];
  if (!v3)
  {
    tb_message_decode_s64_cold_4();
  }

  v4 = v2[2];
  v5 = v4 + 8;
  if (v4 >= 0xFFFFFFFFFFFFFFF8)
  {
    tb_message_decode_s64_cold_3();
  }

  if (v5 > v3)
  {
    tb_message_decode_s64_cold_2();
  }

  v6 = *v2;
  v7 = *v2 + v3;
  v8 = (*v2 + v4);
  v2[2] = v5;
  if (v8 <= v7 && v6 <= v8 && v3 - v4 >= 8)
  {
    *a2 = *v8;
  }

  else
  {
    __break(0x5519u);
  }

  return result;
}

uint64_t tb_message_raw_decode_s64(uint64_t result, void *a2)
{
  v2 = *(result + 80);
  v3 = v2[2];
  v4 = v2[3];
  v5 = *v2;
  v6 = *v2 + v4;
  v7 = (*v2 + v3);
  v2[2] = v3 + 8;
  if (v4 - v3 < 8 || v7 > v6 || v5 > v7)
  {
    __break(0x5519u);
  }

  else
  {
    *a2 = *v7;
  }

  return result;
}

uint64_t tb_message_decode_f32_v2(uint64_t result, int *a2)
{
  if (*result != 4)
  {
    tb_message_decode_f32_v2_cold_1();
  }

  v2 = *(result + 80);
  v3 = v2[3];
  if (!v3)
  {
    tb_message_decode_f32_v2_cold_4();
  }

  v4 = v2[2];
  v5 = v4 + 4;
  if (v4 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    tb_message_decode_f32_v2_cold_3();
  }

  if (v5 > v3)
  {
    tb_message_decode_f32_v2_cold_2();
  }

  v6 = *v2;
  v7 = *v2 + v3;
  v8 = (*v2 + v4);
  v2[2] = v5;
  if (v8 <= v7 && v6 <= v8 && v3 - v4 >= 4)
  {
    v11 = *v8;
    *a2 = *v8;
    if ((v11 & 0x7FFFFFFFu) >= 0x7F800000)
    {
      return 7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(0x5519u);
  }

  return result;
}

uint64_t tb_message_raw_decode_f32_v2(uint64_t result, int *a2)
{
  v2 = *(result + 80);
  v3 = v2[2];
  v4 = v2[3];
  v5 = *v2;
  v6 = (v4 + *v2);
  v7 = (v3 + *v2);
  v2[2] = v3 + 1;
  if ((v4 - v3) >= 4)
  {
    v8 = v7 >= v6;
    v9 = v7 == v6;
  }

  else
  {
    v8 = 1;
    v9 = 0;
  }

  if (!v9 && v8)
  {
    v10 = 1;
    v11 = 0;
  }

  else
  {
    v10 = v5 >= v7;
    v11 = v5 == v7;
  }

  if (!v11 && v10)
  {
    __break(0x5519u);
  }

  else
  {
    v12 = *v7;
    *a2 = *v7;
    if ((v12 & 0x7FFFFFFFu) >= 0x7F800000)
    {
      return 7;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t tb_message_decode_f32(uint64_t a1, int *a2)
{
  result = tb_message_decode_f32_v2(a1, a2);
  if (result)
  {
    tb_message_decode_f32_cold_1(result);
  }

  return result;
}

uint64_t tb_message_raw_decode_f32(uint64_t a1, int *a2)
{
  result = tb_message_raw_decode_f32_v2(a1, a2);
  if (result)
  {
    tb_message_raw_decode_f32_cold_1(result);
  }

  return result;
}

uint64_t tb_message_decode_f64_v2(uint64_t result, uint64_t *a2)
{
  if (*result != 4)
  {
    tb_message_decode_f64_v2_cold_1();
  }

  v2 = *(result + 80);
  v3 = v2[3];
  if (!v3)
  {
    tb_message_decode_f64_v2_cold_4();
  }

  v4 = v2[2];
  v5 = v4 + 8;
  if (v4 >= 0xFFFFFFFFFFFFFFF8)
  {
    tb_message_decode_f64_v2_cold_3();
  }

  if (v5 > v3)
  {
    tb_message_decode_f64_v2_cold_2();
  }

  v6 = *v2;
  v7 = *v2 + v3;
  v8 = (*v2 + v4);
  v2[2] = v5;
  if (v8 <= v7 && v6 <= v8 && v3 - v4 >= 8)
  {
    v11 = *v8;
    *a2 = *v8;
    if ((v11 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      return 7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(0x5519u);
  }

  return result;
}

uint64_t tb_message_raw_decode_f64_v2(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 80);
  v3 = v2[2];
  v4 = v2[3];
  v5 = *v2;
  v6 = (v4 + *v2);
  v7 = (v3 + *v2);
  v2[2] = v3 + 1;
  if ((v4 - v3) >= 8)
  {
    v8 = v7 >= v6;
    v9 = v7 == v6;
  }

  else
  {
    v8 = 1;
    v9 = 0;
  }

  if (!v9 && v8)
  {
    v10 = 1;
    v11 = 0;
  }

  else
  {
    v10 = v5 >= v7;
    v11 = v5 == v7;
  }

  if (!v11 && v10)
  {
    __break(0x5519u);
  }

  else
  {
    v12 = *v7;
    *a2 = *v7;
    if ((v12 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      return 7;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t tb_message_decode_f64(uint64_t a1, uint64_t *a2)
{
  result = tb_message_decode_f64_v2(a1, a2);
  if (result)
  {
    tb_message_decode_f64_cold_1(result);
  }

  return result;
}

uint64_t tb_message_raw_decode_f64(uint64_t a1, uint64_t *a2)
{
  result = tb_message_raw_decode_f64_v2(a1, a2);
  if (result)
  {
    tb_message_raw_decode_f64_cold_1(result);
  }

  return result;
}

void *tb_message_decode_buffer(uint64_t a1, char *__dst, size_t __n)
{
  v3 = *(a1 + 80);
  v4 = v3[2];
  v5 = v4 + __n;
  if (__CFADD__(v4, __n))
  {
LABEL_14:
    tb_message_decode_buffer_cold_2();
  }

  v7 = v3[3];
  if (v5 > v7)
  {
    tb_message_decode_buffer_cold_1(v5, v7);
  }

  v9 = (*v3 + v4);
  v10 = v7 - v4;
  v12 = v9 <= *v3 + v7 && *v3 <= v9 && v10 >= __n;
  if (!v12 || (result = memcpy(__dst, v9, __n), &__dst[__n] < __dst))
  {
    __break(0x5519u);
    goto LABEL_14;
  }

  v3[2] += __n;
  return result;
}

_DWORD *tb_endpoint_create(int a1, int a2)
{
  result = malloc_type_calloc(1uLL, 0x60uLL, 0x1082040FACA7F44uLL);
  if (!result)
  {
    _tb_delegated_c_service_transport_create_cold_1();
  }

  *result = a1;
  result[1] = a2;
  *(result + 40) = 1;
  return result;
}

_DWORD *tb_endpoint_create_with_data(int a1, uint64_t a2, int a3, const void *a4)
{
  v8 = malloc_type_calloc(1uLL, 0x60uLL, 0x1082040FACA7F44uLL);
  if (!v8)
  {
    _tb_delegated_c_service_transport_create_cold_1();
  }

  v9 = v8;
  *v8 = a1;
  v8[1] = a3;
  *(v8 + 40) = 1;
  *(v8 + 4) = a2;
  if (a4)
  {
    *(v8 + 2) = _tb_endpoint_block_destructor;
    *(v8 + 3) = _Block_copy(a4);
  }

  return v9;
}

void _tb_endpoint_block_destructor(void (**a1)(void))
{
  if (a1)
  {
    a1[2]();

    _Block_release(a1);
  }
}

_DWORD *tb_endpoint_create_with_value(int a1, uint64_t a2, int a3)
{
  result = malloc_type_calloc(1uLL, 0x60uLL, 0x1082040FACA7F44uLL);
  if (!result)
  {
    _tb_delegated_c_service_transport_create_cold_1();
  }

  *result = a1;
  result[1] = a3;
  *(result + 4) = a2;
  *(result + 40) = 1;
  return result;
}

uint64_t tb_endpoint_create_with_value_static(uint64_t a1, int a2, uint64_t a3, int a4)
{
  *a1 = a2;
  *(a1 + 4) = a4;
  *(a1 + 40) = 0;
  *(a1 + 32) = a3;
  return 0;
}

void tb_endpoint_destruct(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v2(a1[3], a1[4]);
  }

  if (*(a1 + 40) == 1)
  {

    free(a1);
  }
}

uint64_t _tb_connection_create_transport_for_endpoint(unsigned int *a1, int a2)
{
  result = tb_endpoint_get_type(a1);
  switch(result)
  {
    case 1:
      result = tb_null_transport_create();
      break;
    case 2:
      if (a2 != 1)
      {
        if (!a2)
        {
          result = tb_mach_client_transport_create(a1);
          break;
        }

        goto LABEL_34;
      }

      result = tb_mach_service_transport_create(a1);
      break;
    case 0:
      goto LABEL_34;
    default:
      if (!a2 && (result & 0xFFFFFFFE) == 4)
      {
        result = tb_eve_client_transport_create(a1);
        break;
      }

      if (result <= 9)
      {
        if (result == 8)
        {
          result = tb_darwin_client_transport_create(a1);
        }

        else
        {
          if (result != 9)
          {
            goto LABEL_34;
          }

          if (a2)
          {
            if (a2 != 1)
            {
              goto LABEL_34;
            }

            result = tb_unix_service_transport_create_with_endpoint(a1);
          }

          else
          {
            result = tb_unix_client_transport_create_with_endpoint(a1);
          }
        }
      }

      else
      {
        switch(result)
        {
          case 0xA:
            if (a2)
            {
              if (a2 != 1)
              {
                goto LABEL_34;
              }

              result = tb_delegated_service_transport_create(a1);
            }

            else
            {
              result = tb_delegated_client_transport_create(a1);
            }

            break;
          case 0xB:
            result = tb_afk_transport_create(a1);
            break;
          case 0xC:
            if (a2)
            {
              if (a2 == 1)
              {
                result = tb_delegated_c_service_transport_create(a1);
                goto LABEL_19;
              }

LABEL_34:
              __break(1u);
              return result;
            }

            result = tb_delegated_c_client_transport_create(a1);
            break;
          default:
            goto LABEL_34;
        }
      }

      break;
  }

LABEL_19:
  if (!result)
  {
    goto LABEL_34;
  }

  return result;
}

void *_tb_connection_create(uint64_t a1)
{
  result = malloc_type_calloc(1uLL, 0x30uLL, 0x10820406C11D28EuLL);
  if (!result)
  {
    _tb_delegated_c_service_transport_create_cold_1();
  }

  v3 = result;
  if (result >= result + 6)
  {
    __break(0x5519u);
  }

  else
  {
    *result = a1;
    result[4] = tb_list_create();
    return v3;
  }

  return result;
}

uint64_t tb_inline_assert(uint64_t result)
{
  if (!result)
  {
    _tb_delegated_c_service_transport_create_cold_1();
  }

  return result;
}

void _tb_connection_destruct(pthread_mutex_t **a1)
{
  tb_transport_destruct(*a1);
  tb_list_free(a1[4]);

  free(a1);
}

pthread_mutex_t *tb_service_connection_create(uint64_t a1, uint64_t a2)
{
  v4 = _tb_connection_create(a1);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 0x40000000;
  aBlock[2] = __tb_service_connection_create_block_invoke;
  aBlock[3] = &unk_279DBCED0;
  aBlock[6] = v4 + 6;
  aBlock[7] = v4;
  aBlock[8] = a1;
  aBlock[4] = a2;
  aBlock[5] = v4;
  tb_transport_set_message_handler(a1, aBlock);
  result = tb_list_create();
  if (v4 > v4 + 6)
  {
    __break(0x5519u);
  }

  else
  {
    v4[5] = result;
    return v4;
  }

  return result;
}

unsigned int *__tb_service_connection_create_block_invoke(void *a1, unsigned int *a2)
{
  v2 = a2;
  v27 = a2;
  v4 = a1[5];
  if (v4)
  {
    v5 = v4 >= v4 + 48 || v4 + 48 > a1[6];
    if (v5 || v4 < a1[7])
    {
      goto LABEL_54;
    }
  }

  v7 = *(v4 + 8);
  if (v7)
  {
    v8 = *(v7 + 32);
    if (v8)
    {
      (*(v8 + 16))(v8, a2);
    }
  }

  transport_buffer = tb_message_get_transport_buffer(v2);
  if (tb_message_get_state(v2) != 4)
  {
LABEL_55:
    __tb_service_connection_create_block_invoke_cold_1(v2);
  }

  if (tb_message_get_disposition(v2) != 1)
  {
    __tb_service_connection_create_block_invoke_cold_2(v2);
  }

  if (!transport_buffer)
  {
    __tb_service_connection_create_block_invoke_cold_4();
  }

  if (!*transport_buffer)
  {
    __tb_service_connection_create_block_invoke_cold_3();
  }

  v10 = *(transport_buffer + 42);
  if ((v10 & 4) != 0)
  {
    v22 = a1[5];
    if (!v22 || v22 < v22 + 48 && v22 + 48 <= a1[6] && v22 >= a1[7])
    {
      reply_list = _get_reply_list(v22);
      v24 = a1[5];
      if (!v24 || v24 < v24 + 6 && (v24 + 6) <= a1[6] && v24 >= a1[7])
      {
        message = tb_reply_splitter_next_message(reply_list, v24, v2, &v27, a1[8]);
        v21 = v27;
LABEL_49:
        if (message)
        {
          return 0;
        }

        else
        {
          return v21;
        }
      }
    }

    goto LABEL_54;
  }

  if (v10)
  {
    v11 = a1[5];
    if (v11 && (v11 >= v11 + 48 || v11 + 48 > a1[6] || v11 < a1[7]))
    {
      goto LABEL_54;
    }

    accumulator_list = _get_accumulator_list(v11);
    v13 = tb_message_accumulator_accumulate(accumulator_list, v2);
    if (!v13)
    {
      return 0;
    }

    tb_message_set_transport_buffer(v2, v13);
  }

  v14 = a1[5];
  if (v14 && (v14 >= v14 + 48 || v14 + 48 > a1[6] || v14 < a1[7]))
  {
LABEL_54:
    __break(0x5519u);
    goto LABEL_55;
  }

  v15 = (*(a1[4] + 16))();
  v2 = v15;
  v26 = v15;
  if (v15)
  {
    v16 = tb_message_get_transport_buffer(v15);
    if (tb_message_splitter_split_required(a1[8], *(v16 + 24)))
    {
      v17 = a1[5];
      if (!v17 || v17 < v17 + 48 && v17 + 48 <= a1[6] && v17 >= a1[7])
      {
        v18 = _get_reply_list(v17);
        v19 = a1[5];
        if (!v19 || v19 < v19 + 6 && (v19 + 6) <= a1[6] && v19 >= a1[7])
        {
          message = tb_reply_splitter_add_reply(v18, v2, &v26, v19);
          v21 = v26;
          goto LABEL_49;
        }
      }

      goto LABEL_54;
    }
  }

  return v2;
}

uint64_t _tb_connection_observe_message_handler(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    result = *(v1 + 32);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

uint64_t _get_reply_list(uint64_t a1)
{
  result = *(a1 + 40);
  if (!result)
  {
    _get_reply_list_cold_1();
  }

  return result;
}

uint64_t _get_accumulator_list(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result)
  {
    _get_accumulator_list_cold_1();
  }

  return result;
}

pthread_mutex_t *tb_service_connection_create_with_endpoint(unsigned int *a1, uint64_t a2)
{
  transport_for_endpoint = _tb_connection_create_transport_for_endpoint(a1, 1);
  v5 = tb_service_connection_create(transport_for_endpoint, a2);
  tb_endpoint_destruct(a1);
  return v5;
}

void _tb_connection_transport_for_endpoint_inplace(unsigned int *a1, unint64_t a2)
{
  type = tb_endpoint_get_type(a1);
  if (type)
  {
    if (type != 1)
    {
      _tb_connection_transport_for_endpoint_inplace_cold_1();
    }

    tb_null_transport_create_inplace_with_endpoint(a1, a2);
  }
}

BOOL tb_service_connection_activate(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (v1)
  {
    v3 = *(v1 + 16);
    if (v3)
    {
      (*(v3 + 16))(v3, v2);
    }
  }

  return tb_transport_service_activate(v2);
}

uint64_t _tb_connection_observe_activate_service(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    result = *(v1 + 16);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

void *tb_client_connection_create_with_endpoint(unsigned int *a1)
{
  transport_for_endpoint = _tb_connection_create_transport_for_endpoint(a1, 0);
  v3 = _tb_connection_create(transport_for_endpoint);
  tb_endpoint_destruct(a1);
  return v3;
}

void *tb_client_connection_create_with_endpoint_static(void *result, _OWORD *a2, unsigned int *a3)
{
  a2[13] = 0u;
  a2[14] = 0u;
  a2[11] = 0u;
  a2[12] = 0u;
  a2[9] = 0u;
  a2[10] = 0u;
  a2[7] = 0u;
  a2[8] = 0u;
  a2[5] = 0u;
  a2[6] = 0u;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  if (a2 + 15 < a2)
  {
    __break(0x5519u);
  }

  else
  {
    v4 = result;
    _tb_connection_transport_for_endpoint_inplace(a3, a2);
    *v4 = a2;
    return 0;
  }

  return result;
}

BOOL tb_client_connection_activate(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (v1)
  {
    v3 = *(v1 + 8);
    if (v3)
    {
      (*(v3 + 16))(v3, v2);
    }
  }

  return tb_transport_client_activate(v2);
}

uint64_t _tb_connection_observe_activate_client(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    result = *(v1 + 8);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

uint64_t tb_connection_send_query(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (*a2 != 2)
  {
    tb_connection_send_query_cold_1(*a2);
  }

  v6 = *(a2 + 4);
  if (v6 != 1)
  {
    tb_connection_send_query_cold_2(v6);
  }

  if (!tb_message_check_connection_identifier(a2, a1))
  {
    return 1;
  }

  tb_message_set_state(a2, 3);
  v9 = *a1;
  transport_buffer = tb_message_get_transport_buffer(a2);
  v11 = transport_buffer;
  if ((a4 & 2) == 0)
  {
    *(transport_buffer + 42) |= 0x10u;
  }

  if (tb_message_splitter_split_required(v9, *(transport_buffer + 24)))
  {
    v12 = tb_message_splitter_send(a1, v9, a2);
  }

  else
  {
    v14 = a1[1];
    if (v14 && *v14)
    {
      (*(*v14 + 16))(*v14, v9, a2, a3, a4);
    }

    v12 = tb_transport_send_message(v9);
  }

  v13 = v12;
  if (!v12)
  {
    v13 = (*(v11 + 42) & 8) >> 1;
    if ((a4 & 2) != 0 && (*(v11 + 42) & 8) == 0)
    {
      if (!a3 || !*a3)
      {
        return 4;
      }

      tb_message_set_state(*a3, 4);
      tb_message_set_disposition(*a3, 2);
      if (*(tb_message_get_transport_buffer(*a3) + 42))
      {
        msg_identifier = tb_message_get_msg_identifier(*a3);
        if (!msg_identifier)
        {
          msg_identifier = mach_absolute_time();
          tb_message_set_msg_identifier(*a3, msg_identifier);
        }

        accumulator_list = _get_accumulator_list(a1);
        v17 = tb_message_accumulator_accumulate(accumulator_list, *a3);
        v18 = malloc_type_calloc(1uLL, 0x58uLL, 0x102004071D150F8uLL);
        v28 = tb_inline_assert(v18);
        v19 = malloc_type_calloc(1uLL, 0x68uLL, 0x1090040B6685729uLL);
        tb_inline_assert(v19);
        v20 = _tb_connection_message_construct(a1, 0, v18, v19, 0, 0);
        if (v20)
        {
          v13 = v20;
          free(v19);
          v21 = v18;
LABEL_24:
          free(v21);
          return v13;
        }

        if (!v17)
        {
          while (1)
          {
            tb_message_complete(v28);
            v19[21] |= 4u;
            tb_message_set_state(v28, 3);
            v23 = a1[1];
            if (v23 && *v23)
            {
              (*(*v23 + 16))(*v23, v9, a2, a3, a4);
            }

            v24 = tb_transport_send_message(v9);
            if (v24)
            {
              v13 = v24;
              _tb_connection_message_destruct(a1, v28);
              free(v19);
              v21 = v28;
              goto LABEL_24;
            }

            tb_message_set_msg_identifier(v28, msg_identifier);
            v22 = tb_message_accumulator_accumulate(accumulator_list, v28);
            v18 = v28;
            if (v22)
            {
              break;
            }

            _tb_message_reset(a1, v28, 0, 0, 0);
          }

          v17 = v22;
        }

        _tb_connection_message_destruct(a1, v18);
        free(v19);
        free(v28);
        v25 = tb_message_get_transport_buffer(*a3);
        tb_transport_destruct_message_buffer(v9, v25);
        tb_transport_initialize_message_buffer(v25);
        v26 = v17[3];
        *v25 = *v17;
        *(v25 + 24) = v26;
        *(v25 + 40) = 1;
        *(v25 + 42) = *(v17 + 21);
        free(v17);
      }

      return 0;
    }
  }

  return v13;
}

uint64_t _tb_connection_observe_send_message(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    result = *v1;
    if (*v1)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

uint64_t tb_connection_alloc_init_owned_transport_message_buffer(uint64_t a1, size_t a2)
{
  tb_transport_initialize_message_buffer(a1);
  v4 = malloc_type_calloc(a2, 1uLL, 0x100004077774924uLL);
  if (v4 > &v4[a2])
  {
    __break(0x5519u);
LABEL_5:
    _tb_afk_common_transport_construct_message_buffer_cold_1();
  }

  if (!v4)
  {
    goto LABEL_5;
  }

  *a1 = v4;
  *(a1 + 40) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  return 0;
}

uint64_t tb_connection_dealloc_destruct_owned_transport_message_buffer(uint64_t a1)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    tb_connection_dealloc_destruct_owned_transport_message_buffer_cold_1();
  }

  free(*a1);
  *a1 = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  result = tb_transport_reset_message_buffer(a1);
  *(a1 + 41) = 1;
  return result;
}

uint64_t _tb_message_buffer_reset(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (tb_transport_supports_multipart_messages(a2))
  {
    tb_transport_get_tx_buffer_size(a2);
  }

  v10 = tb_message_splitter_split_required(a2, a4);
  v11 = v10;
  if (*(a3 + 40) == 1)
  {
    tb_connection_dealloc_destruct_owned_transport_message_buffer(a3);
    if (!v11)
    {
      result = tb_transport_construct_message_buffer(a2, a4, a5, a3);
      if (result)
      {
        return result;
      }

      return 0;
    }

    goto LABEL_9;
  }

  if (v10)
  {
    tb_transport_destruct_message_buffer(a2, a3);
LABEL_9:
    tb_connection_alloc_init_owned_transport_message_buffer(a3, a4);
    return 0;
  }

  tb_transport_reset_message_buffer(a3);
  v13 = *(a1 + 8);
  if (v13)
  {
    v14 = *(v13 + 24);
    if (v14)
    {
      (*(v14 + 16))(v14, a2, a3, a5, a4);
    }
  }

  result = tb_transport_reset_message(a2, a3, a5, a4);
  if (!result)
  {
    return 0;
  }

  return result;
}

uint64_t _tb_connection_observe_reset_message(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    result = *(v1 + 24);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

uint64_t _tb_message_reset(uint64_t *a1, _DWORD *a2, int a3, unint64_t a4, uint64_t a5)
{
  tb_message_set_state(a2, 1);
  if (a3 == 1)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  tb_message_set_disposition(a2, v10);
  transport_buffer = tb_message_get_transport_buffer(a2);
  v12 = *a1;

  return _tb_message_buffer_reset(a1, v12, transport_buffer, a4, a5);
}

uint64_t _tb_connection_message_construct(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, size_t a5, uint64_t a6)
{
  tb_message_initialize(a3);
  v12 = *a1;
  if (!tb_transport_supports_multipart_messages(*a1))
  {
    if (!*(a4 + 8))
    {
LABEL_6:
      result = tb_transport_construct_message_buffer(v12, a5, a6, a4);
      if (result)
      {
        return result;
      }

      goto LABEL_7;
    }

LABEL_13:
    _tb_connection_message_construct_cold_1();
  }

  tx_buffer_size = tb_transport_get_tx_buffer_size(v12);
  if (*(a4 + 8))
  {
    goto LABEL_13;
  }

  if (tx_buffer_size >= a5)
  {
    goto LABEL_6;
  }

  tb_connection_alloc_init_owned_transport_message_buffer(a4, a5);
LABEL_7:
  if (a2 == 1)
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  result = tb_message_construct(a3, a4, v15);
  if (!result)
  {
    tb_message_set_connection_identifier(a3, a1);
    return 0;
  }

  return result;
}

uint64_t _tb_connection_message_destruct(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  transport_buffer = tb_message_get_transport_buffer(a2);
  if (*(transport_buffer + 8))
  {
    _tb_connection_message_destruct_cold_1();
  }

  if (*(transport_buffer + 40) == 1)
  {
    tb_connection_dealloc_destruct_owned_transport_message_buffer(transport_buffer);
  }

  else
  {
    tb_transport_destruct_message_buffer(v3, transport_buffer);
  }

  return tb_message_destruct(a2);
}

void *_tb_connection_init_observers(void *result)
{
  if (!result[1])
  {
    v1 = result;
    result = malloc_type_calloc(1uLL, 0x28uLL, 0x800402FCC0CB6uLL);
    if (!result)
    {
      _tb_delegated_c_service_transport_create_cold_1();
    }

    v1[1] = result;
  }

  return result;
}

double _tb_connection_clear_observers(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    result = 0.0;
    *v1 = 0u;
    v1[1] = 0u;
  }

  return result;
}

void *tb_mach_service_transport_create(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  name = 0;
  options = tb_endpoint_get_options(a1);
  if (options > 1)
  {
    if (options != 2)
    {
      goto LABEL_12;
    }

    name = tb_endpoint_get_value(a1);
  }

  else
  {
    if (options == 1)
    {
      memset(service_name, 0, 128);
      tb_endpoint_get_data(a1);
      __strlcpy_chk();
      service_name[127] = 0;
      v3 = MEMORY[0x277D85F48];
      options = mach_port_allocate(*MEMORY[0x277D85F48], 1u, &name);
      if (!options)
      {
        options = mach_port_insert_right(*v3, name, name, 0x14u);
        if (!options)
        {
          special_port = 0;
          options = task_get_special_port(*v3, 4, &special_port);
          if (!options)
          {
            options = bootstrap_register(special_port, service_name, name);
            if (!options)
            {
              goto LABEL_13;
            }
          }
        }
      }
    }

    else if (options)
    {
      goto LABEL_13;
    }

    do
    {
      __break(1u);
LABEL_12:
      ;
    }

    while (options == 3);
  }

LABEL_13:
  result = _tb_mach_transport_create();
  *(result[13] + 16) = name;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void *_tb_mach_transport_create()
{
  v0 = malloc_type_calloc(1uLL, 0xF0uLL, 0x1082040885B605DuLL);
  if (!v0)
  {
    _tb_delegated_c_service_transport_create_cold_1();
  }

  v1 = v0;
  v2 = malloc_type_calloc(1uLL, 0x18uLL, 0x102004062D53EE8uLL);
  if (!v2)
  {
    _tb_delegated_c_service_transport_create_cold_1();
  }

  v3 = v2;
  v1[13] = v2;
  v1[9] = _tb_mach_transport_vtable;
  v2[2] = 0;
  *v2 = dispatch_queue_create("com.apple.tightbeam.mach_transport.q", 0);
  v3[1] = dispatch_mach_create();
  return v1;
}

void *tb_mach_client_transport_create(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  sp = 0;
  options = tb_endpoint_get_options(a1);
  if (options > 1)
  {
    if (options != 3)
    {
      goto LABEL_10;
    }

    sp = tb_endpoint_get_value(a1);
  }

  else
  {
    if (options == 1)
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      *service_name = 0u;
      v8 = 0u;
      tb_endpoint_get_data(a1);
      __strlcpy_chk();
      HIBYTE(v14) = 0;
      special_port = 0;
      options = task_get_special_port(*MEMORY[0x277D85F48], 4, &special_port);
      if (!options)
      {
        options = bootstrap_look_up(special_port, service_name, &sp);
        if (!options)
        {
          goto LABEL_11;
        }
      }
    }

    else if (options)
    {
      goto LABEL_11;
    }

    do
    {
      __break(1u);
LABEL_10:
      ;
    }

    while (options == 2);
  }

LABEL_11:
  result = _tb_mach_transport_create();
  *(result[13] + 20) = sp;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void ___tb_mach_transport_create_block_invoke(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x277D85DE8];
  if (a2 == 2)
  {
    v3 = malloc_type_calloc(1uLL, 0x58uLL, 0x102004071D150F8uLL);
    if (!v3)
    {
      _tb_delegated_c_service_transport_create_cold_1();
    }

    v4 = v3;
    v5 = malloc_type_calloc(1uLL, 0x68uLL, 0x1090040B6685729uLL);
    if (!v5)
    {
      _tb_delegated_c_service_transport_create_cold_1();
    }

    v6 = v5;
    msg = dispatch_mach_msg_get_msg();
    if (_tb_mach_transport_construct_message_buffer(*(msg + 24), v8, v6) || tb_message_construct(v4, v6, 1))
    {
LABEL_22:
      __break(1u);
    }

    _tb_unpack_dispatch_mach_msg_to_tb_message();
    dispatch_mach_msg_get_msg();
    audit_trailer = os_mach_msg_get_audit_trailer();
    *&v29.val[4] = *(audit_trailer + 36);
    *atoken.val = *(audit_trailer + 20);
    *v29.val = *atoken.val;
    *&atoken.val[4] = *&v29.val[4];
    v10 = audit_token_to_ruid(&atoken);
    atoken = v29;
    v11 = audit_token_to_rgid(&atoken);
    atoken = v29;
    v12 = audit_token_to_pid(&atoken);
    atoken = v29;
    v13 = audit_token_to_pidversion(&atoken);
    v14 = 0;
    *atoken.val = v10;
    *&atoken.val[2] = v11;
    *&atoken.val[4] = v12;
    *&atoken.val[6] = v13;
    v15 = 0xCBF29CE484222325;
    do
    {
      v15 = 0x100000001B3 * (*&atoken.val[v14] ^ v15);
      v14 += 2;
    }

    while (v14 != 8);
    tb_message_set_msg_identifier(v4, v15);
    v16 = *(*(a1 + 32) + 80);
    if (!v16)
    {
      goto LABEL_20;
    }

    v17 = (*(v16 + 16))(v16, v4);
    if (v17)
    {
      v18 = v17;
      v19 = *v17;
      if (v19 == 2)
      {
        *atoken.val = 0;
        v20 = dispatch_mach_msg_get_msg();
        transport_buffer = tb_message_get_transport_buffer(v18);
        v22 = *(transport_buffer + 24);
        if (v22 >= 0x3C01)
        {
          goto LABEL_22;
        }

        v23 = transport_buffer;
        *v20 = 18;
        *(v20 + 12) = 0;
        *(v20 + 24) = v22;
        bzero((v20 + 32), 0x3C00uLL);
        v24 = *(v23 + 24);
        if (v24 < 0x3C01)
        {
          v19 = memcpy((v20 + 32), *v23, *(v23 + 24));
          if (v20 + 32 <= v20 + 32 + v24)
          {
            *(v20 + 20) = *(v23 + 42);
            v25 = *(*(a1 + 40) + 8);
            dispatch_mach_send();
            *v18 = 3;
            tb_message_complete(v18);
            goto LABEL_17;
          }
        }

        __break(0x5519u);
      }

      ___tb_mach_transport_create_block_invoke_cold_1(v19);
    }

LABEL_17:
    v26 = tb_message_get_transport_buffer(v4);
    if (v26 != v6)
    {
      v27 = v26;
      free(*v26);
      free(v27);
    }

    free(*v6);
    *v6 = 0;
    *(v6 + 48) = 0;
    *(v6 + 24) = 0;
    *(v6 + 32) = 0;
    *(v6 + 16) = 0;
    *(v6 + 41) = 1;
LABEL_20:
    tb_message_destruct(v4);
    free(v6);
    free(v4);
    goto LABEL_21;
  }

  if (a2 == 4)
  {
    goto LABEL_22;
  }

LABEL_21:
  v28 = *MEMORY[0x277D85DE8];
}

uint64_t _tb_mach_transport_construct_message_buffer(size_t a1, uint64_t a2, uint64_t a3)
{
  v5 = malloc_type_calloc(a1, 1uLL, 0x100004077774924uLL);
  if (v5 > &v5[a1])
  {
    __break(0x5519u);
LABEL_5:
    _tb_afk_common_transport_construct_message_buffer_cold_1();
  }

  if (!v5)
  {
    goto LABEL_5;
  }

  *a3 = v5;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = a1;
  *(a3 + 32) = 0;
  *(a3 + 48) = 0;
  return 0;
}

uint64_t _tb_unpack_dispatch_mach_msg_to_tb_message()
{
  result = dispatch_mach_msg_get_msg();
  __break(1u);
  __break(0x5519u);
  return result;
}

void _tb_mach_transport_destruct_message_buffer(uint64_t a1)
{
  free(*a1);
  *a1 = 0;
  *(a1 + 48) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 41) = 1;
}

uint64_t _tb_mach_transport_send_message(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v22 = *MEMORY[0x277D85DE8];
  v5 = *v2;
  if (*v2 != 3)
  {
LABEL_15:
    _tb_mach_transport_send_message_cold_1(v5);
  }

  v6 = v4;
  v7 = v3;
  v8 = v2;
  v9 = *(v1 + 104);
  bzero(v20, 0x3C18uLL);
  transport_buffer = tb_message_get_transport_buffer(v8);
  v20[3] = *(transport_buffer + 42);
  v11 = *(transport_buffer + 24);
  v21 = v11;
  v5 = 15361;
  if (v11 >= 0x3C01 || (v12 = *transport_buffer, v13 = __memcpy_chk(), v5 = v13 + v11, v13 > v13 + v11))
  {
    __break(0x5519u);
    goto LABEL_15;
  }

  v14 = dispatch_mach_msg_create();
  v15 = *(v9 + 8);
  if ((v6 & 2) != 0)
  {
    v16 = dispatch_mach_send_and_wait_for_reply();
    v17 = v16;
    if (v7 && v16)
    {
      _tb_unpack_dispatch_mach_msg_to_tb_message();
      tb_message_set_msg_identifier(v8, 0);
      *v7 = v8;
      dispatch_release(v17);
    }

    else if (v7 && !v16)
    {
      result = 4;
      goto LABEL_10;
    }
  }

  else
  {
    dispatch_mach_send();
  }

  dispatch_release(v14);
  result = 0;
LABEL_10:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _tb_mach_transport_activate(uint64_t a1)
{
  v1 = *(a1 + 104);
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 20);
  dispatch_mach_connect();
  return 0;
}

uint64_t _tb_mach_transport_message_buffer_reset(uint64_t a1, uint64_t a2, size_t a3)
{
  free(*a1);
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;

  return _tb_mach_transport_construct_message_buffer(a3, v5, a1);
}

void _tb_mach_transport_destruct(void *a1)
{
  context = tb_transport_get_context(a1);
  v3 = *(context + 16);
  v4 = MEMORY[0x277D85F48];
  if (v3)
  {
    mach_port_deallocate(*MEMORY[0x277D85F48], v3);
    *(context + 16) = 0;
  }

  v5 = *(context + 20);
  if (v5)
  {
    mach_port_deallocate(*v4, v5);
    *(context + 20) = 0;
  }

  v6 = *(context + 8);
  dispatch_mach_cancel();
  dispatch_release(*context);
  free(context);

  free(a1);
}

void *tb_darwin_client_transport_create(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0xF0uLL, 0x10E00407598328FuLL);
  if (!v2)
  {
    _tb_delegated_c_service_transport_create_cold_1();
  }

  v3 = v2;
  v4 = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040451B5BE8uLL);
  if (!v4)
  {
    _tb_delegated_c_service_transport_create_cold_1();
  }

  v5 = v4;
  v3[13] = v4;
  v3[9] = _tb_darwin_client_transport_vtable;
  data = tb_endpoint_get_data(a1);
  if (data)
  {
    *v5 = *data;
  }

  return v3;
}

uint64_t _tb_darwin_transport_send_message(uint64_t a1, int *a2, int **a3, char a4)
{
  if (*a2 != 3)
  {
    _tb_darwin_transport_send_message_cold_1(*a2);
  }

  v8 = (*(tb_message_get_transport_buffer(a2) + 24) + 7);
  transport_buffer = tb_message_get_transport_buffer(a2);
  v16 = (v8 >> 3) & 0x3F | (*(transport_buffer + 42) << 16);
  v10 = *(transport_buffer + 48);
  context = tb_transport_get_context(a1);
  v12 = *context;
  v13 = *(context + 1);
  if (exclaves_endpoint_call())
  {
    return 1;
  }

  if ((a4 & 2) == 0)
  {
    return 0;
  }

  tb_message_configure_received(a2, 2u);
  result = tb_message_get_transport_buffer(a2);
  if (!result)
  {
    return 4;
  }

  v15 = 8 * (v16 & 0x3F);
  if (v15 > 0x1B0)
  {
    return 4;
  }

  *(result + 16) = 0;
  if (*result > *result + v15)
  {
    __break(0x5519u);
  }

  else
  {
    *(result + 24) = v15;
    *(result + 42) = WORD1(v16);
    if (!a3)
    {
      return 0;
    }

    result = 0;
    *a3 = a2;
  }

  return result;
}

unint64_t _tb_darwin_transport_construct_message_buffer(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 > 0x1B0)
  {
    return 12;
  }

  result = malloc_type_calloc(1uLL, 0x200uLL, 0x10000407EBBDD04uLL);
  if (!result)
  {
    _tb_delegated_c_service_transport_create_cold_1();
  }

  v6 = result;
  *(a3 + 48) = result;
  if (result >= result + 512)
  {
    __break(0x5519u);
  }

  else
  {
    result = 0;
    *a3 = v6 + 16;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = a1;
    *(a3 + 32) = 0;
    *(a3 + 41) = 0;
  }

  return result;
}

void _tb_darwin_transport_destruct_message_buffer(uint64_t a1)
{
  free(*(a1 + 48));
  *a1 = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 41) = 1;
}

uint64_t _tb_darwin_transport_message_buffer_reset(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 > 0x1B0)
  {
    return 12;
  }

  *(result + 16) = 0;
  if (*result <= *result + a3)
  {
    v3 = 0;
    *(result + 24) = a3;
    return v3;
  }

  __break(0x5519u);
  return result;
}

void _tb_darwin_transport_destruct(void *a1)
{
  context = tb_transport_get_context(a1);
  free(context);

  free(a1);
}

uint64_t tb_delegated_transport_construct_message_buffer(size_t a1, uint64_t a2, uint64_t a3)
{
  v5 = malloc_type_calloc(a1, 1uLL, 0x100004077774924uLL);
  if (v5 > &v5[a1])
  {
    __break(0x5519u);
LABEL_5:
    _tb_afk_common_transport_construct_message_buffer_cold_1();
  }

  if (!v5)
  {
    goto LABEL_5;
  }

  *a3 = v5;
  *(a3 + 16) = 0;
  *(a3 + 24) = a1;
  *(a3 + 32) = 0;
  *(a3 + 48) = 0;
  *(a3 + 41) = 0;
  return 0;
}

void tb_delegated_transport_destruct_message_buffer(uint64_t a1)
{
  free(*a1);
  *a1 = 0;
  *(a1 + 48) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 41) = 1;
}

uint64_t tb_delegated_transport_message_buffer_reset(uint64_t a1, uint64_t a2, size_t a3)
{
  free(*a1);
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;

  return tb_delegated_transport_construct_message_buffer(a3, v5, a1);
}

void *tb_delegated_service_transport_create(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0xF0uLL, 0x1082040885B605DuLL);
  if (!v2)
  {
    _tb_delegated_c_service_transport_create_cold_1();
  }

  v3 = v2;
  v2[9] = _tb_delegated_service_transport_vtable;
  v2[13] = _tb_delegated_service_transport_create(a1);
  return v3;
}

void *tb_delegated_client_transport_create(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0xF0uLL, 0x1082040885B605DuLL);
  if (!v2)
  {
    _tb_delegated_c_service_transport_create_cold_1();
  }

  v3 = v2;
  v2[9] = _tb_delegated_client_transport_vtable;
  v2[13] = _tb_delegated_client_transport_create(a1);
  return v3;
}

unint64_t tb_exclave_notification_create(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  if (exclaves_notification_create())
  {
    return 12;
  }

  result = malloc_type_calloc(1uLL, 0x20uLL, 0x1020040AB73632BuLL);
  if (!result)
  {
    _tb_delegated_c_service_transport_create_cold_1();
  }

  *result = -1;
  *(result + 8) = a2;
  if (result < result + 32)
  {
    v5 = 0;
    *a3 = result;
    return v5;
  }

  __break(0x5519u);
  return result;
}

uint64_t tb_exclave_notification_register(uint64_t a1, dispatch_object_t object, void *a3)
{
  dispatch_retain(object);
  *(a1 + 24) = object;
  v6 = dispatch_source_create(MEMORY[0x277D85CF8], *a1, *(a1 + 8), object);
  if (!v6)
  {
    return 12;
  }

  v7 = v6;
  dispatch_retain(v6);
  *(a1 + 16) = v7;
  dispatch_source_set_event_handler(v7, a3);
  dispatch_activate(*(a1 + 16));
  return 0;
}

void tb_exclave_notification_unregister(uint64_t a1, void *a2)
{
  dispatch_source_cancel(*(a1 + 16));
  dispatch_release(*(a1 + 16));
  dispatch_async(*(a1 + 24), a2);
  v4 = *(a1 + 24);

  dispatch_release(v4);
}

void *tb_afk_transport_create(uint64_t a1)
{
  if (tb_endpoint_get_options(a1))
  {

    return tb_afk_interface_transport_create(a1);
  }

  else
  {

    return tb_afk_user_transport_create(a1);
  }
}

uint64_t _add_accumulator(pthread_mutex_t *a1, uint64_t *a2)
{
  result = tb_list_add(a1, *a2, a2, &__block_literal_global_0);
  if ((result & 1) == 0)
  {
    _add_accumulator_cold_1();
  }

  return result;
}

void ___add_accumulator_block_invoke(uint64_t a1, void **a2)
{
  free(a2[3]);

  free(a2);
}

void **tb_message_accumulator_accumulate(pthread_mutex_t *a1, uint64_t a2)
{
  transport_buffer = tb_message_get_transport_buffer(a2);
  v5 = tb_list_find(a1, *(a2 + 24));
  v6 = v5 + 32;
  if (v5 >= v5 + 32)
  {
    goto LABEL_38;
  }

  v7 = v5;
  if (!v5)
  {
    v8 = malloc_type_calloc(1uLL, 0x20uLL, 0x1010040313BCFEBuLL);
    if (!v8)
    {
      _tb_delegated_c_service_transport_create_cold_1();
    }

    v7 = v8;
    *v8 = *(a2 + 24);
    v6 = (v8 + 4);
    v9 = *(transport_buffer + 24);
    if (v9 < 0)
    {
      tb_message_accumulator_accumulate_cold_8();
    }

    v10 = 2 * v9;
    v11 = malloc_type_calloc(2 * v9, 1uLL, 0x100004077774924uLL);
    if (v11 > &v11[v10])
    {
      goto LABEL_38;
    }

    if (!v11)
    {
      _tb_afk_common_transport_construct_message_buffer_cold_1();
    }

    *(v7 + 16) = v10;
    *(v7 + 24) = v11;
    if (v7 > v6)
    {
      goto LABEL_38;
    }

    _add_accumulator(a1, v7);
  }

  if (v7 + 32 > v6 || v7 >= v7 + 32)
  {
    goto LABEL_38;
  }

  v13 = tb_message_get_transport_buffer(a2);
  v14 = *(v7 + 8);
  v15 = *(v13 + 24);
  v16 = v14 + v15;
  if (__CFADD__(v14, v15))
  {
    goto LABEL_39;
  }

  if (v16 <= *(v7 + 16))
  {
    v16 = *(v7 + 16);
    goto LABEL_19;
  }

  v17 = malloc_type_realloc(*(v7 + 24), v16, 0x54366997uLL);
  if (v17 > &v17[v16])
  {
LABEL_38:
    __break(0x5519u);
LABEL_39:
    tb_message_accumulator_accumulate_cold_6();
  }

  if (!v17)
  {
    _tb_afk_common_transport_construct_message_buffer_cold_1();
  }

  *(v7 + 16) = v16;
  *(v7 + 24) = v17;
  v14 = *(v7 + 8);
LABEL_19:
  v18 = *(transport_buffer + 24);
  v19 = v14 + v18;
  if (__CFADD__(v14, v18))
  {
    tb_message_accumulator_accumulate_cold_4();
  }

  if (v16 < v19)
  {
    tb_message_accumulator_accumulate_cold_3(v16, v19);
  }

  v20 = *(v7 + 24);
  v21 = (v20 + v14);
  v22 = v16 - v14;
  if (v21 > v20 + v16 || v20 > v21 || v18 > v22)
  {
    goto LABEL_38;
  }

  memcpy(v21, *transport_buffer, *(transport_buffer + 24));
  if (v21 > &v21[v18])
  {
    goto LABEL_38;
  }

  *(v7 + 8) += *(transport_buffer + 24);
  if ((*(transport_buffer + 42) & 2) != 0)
  {
    v26 = malloc_type_calloc(1uLL, 0x68uLL, 0x1090040B6685729uLL);
    if (!v26)
    {
      _tb_delegated_c_service_transport_create_cold_1();
    }

    v25 = v26;
    if (tb_connection_alloc_init_owned_transport_message_buffer(v26, *(v7 + 8)))
    {
      tb_message_accumulator_accumulate_cold_1();
    }

    v27 = *(v7 + 8);
    if (v27 <= *(v7 + 16) && v27 <= v25[3])
    {
      v28 = *v25;
      memcpy(*v25, *(v7 + 24), *(v7 + 8));
      if (v28 <= &v28[v27])
      {
        tb_list_remove(a1, *v7);
        return v25;
      }
    }

    goto LABEL_38;
  }

  return 0;
}

BOOL tb_message_splitter_split_required(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 72);
  if (!v2)
  {
    tb_message_splitter_split_required_cold_1();
  }

  return *(v2 + 56) && tb_transport_get_tx_buffer_size(a1) < a2;
}

uint64_t tb_message_splitter_send(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!tb_transport_supports_multipart_messages(a2))
  {
    return 1;
  }

  tx_buffer_size = tb_transport_get_tx_buffer_size(a2);
  transport_buffer = tb_message_get_transport_buffer(a3);
  v7 = transport_buffer[3];
  v8 = malloc_type_calloc(1uLL, 0x68uLL, 0x1090040B6685729uLL);
  if (!v8)
  {
    _tb_delegated_c_service_transport_create_cold_1();
  }

  v9 = v8;
  v10 = tb_transport_construct_message_buffer(a2, tx_buffer_size, 0, v8);
  if (v10)
  {
    v11 = v10;
LABEL_5:
    free(v9);
  }

  else
  {
    if (v7)
    {
      v13 = 0;
      v30 = tx_buffer_size;
      while (1)
      {
        v14 = v13 + tx_buffer_size;
        if (__CFADD__(v13, tx_buffer_size))
        {
          tb_message_splitter_send_cold_2();
        }

        if (v14 >= v7)
        {
          tx_buffer_size = v7 - v13;
        }

        v15 = *(a2 + 72);
        if (!v15)
        {
          goto LABEL_44;
        }

        if (!*(v15 + 40))
        {
          break;
        }

        v16 = tb_transport_reset_message(a2, v9, 0, tx_buffer_size);
        if (v16)
        {
          v11 = v16;
          goto LABEL_41;
        }

        v18 = v9[3];
        v17 = v9[4];
        v19 = (*v9 + v17);
        v20 = *transport_buffer + transport_buffer[3];
        v21 = (*transport_buffer + transport_buffer[4] + v13);
        v22 = v18 - v17;
        v27 = v20 < v21 || *transport_buffer > v21 || tx_buffer_size > v20 - v21 || v19 > *v9 + v18 || *v9 > v19 || tx_buffer_size > v22;
        if (v27 || (memcpy(v19, v21, tx_buffer_size), v19 > &v19[tx_buffer_size]))
        {
          __break(0x5519u);
LABEL_44:
          tb_message_splitter_send_cold_1();
        }

        if (v14 < v7)
        {
          v28 = 1;
        }

        else
        {
          v28 = 3;
        }

        *(v9 + 21) = v28;
        tb_message_set_transport_buffer(a3, v9);
        _tb_connection_observe_send_message(a1);
        v29 = tb_transport_send_message(a2);
        if (v29)
        {
          v11 = v29;
          tb_transport_destruct_message_buffer(a2, v9);
          free(v9);
          tb_message_set_transport_buffer(a3, transport_buffer);
          return v11;
        }

        tb_message_set_transport_buffer(a3, transport_buffer);
        v13 += tx_buffer_size;
        tx_buffer_size = v30;
        if (v13 >= v7)
        {
          goto LABEL_38;
        }
      }

      v11 = 2;
LABEL_41:
      tb_transport_destruct_message_buffer(a2, v9);
      goto LABEL_5;
    }

LABEL_38:
    tb_transport_destruct_message_buffer(a2, v9);
    free(v9);
    tb_message_set_transport_buffer(a3, transport_buffer);
    return 0;
  }

  return v11;
}

uint64_t tb_reply_splitter_add_reply(pthread_mutex_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  transport = tb_connection_get_transport(a4);
  if (!tb_transport_supports_multipart_messages(transport))
  {
    return 5;
  }

  transport_buffer = tb_message_get_transport_buffer(a2);
  if ((*(transport_buffer + 40) & 1) == 0)
  {
    goto LABEL_19;
  }

  v10 = transport_buffer;
  v11 = *(a2 + 24);
  v12 = malloc_type_calloc(1uLL, 0x20uLL, 0x1010040BA4D407CuLL);
  if (!v12)
  {
    _tb_delegated_c_service_transport_create_cold_1();
  }

  v13 = v12;
  v14 = *(v10 + 24);
  v15 = malloc_type_calloc(v14, 1uLL, 0x100004077774924uLL);
  if (v15 > &v15[v14])
  {
    goto LABEL_18;
  }

  v16 = v15;
  if (!v15)
  {
    _tb_afk_common_transport_construct_message_buffer_cold_1();
  }

  if (v14 > *(v10 + 24) || (memcpy(v15, *v10, v14), v16 > &v16[v14]) || (*(v13 + 16) = v14, *(v13 + 24) = 0, *v13 = v11, *(v13 + 8) = v16, v13 >= v13 + 32))
  {
LABEL_18:
    __break(0x5519u);
LABEL_19:
    tb_reply_splitter_add_reply_cold_1();
  }

  tb_list_add(a1, v11, v13, &__block_literal_global_17);
  tx_buffer_size = tb_transport_get_tx_buffer_size(transport);
  result = _tb_message_reset(a4, a2, 1, tx_buffer_size, 0);
  if (!result)
  {
    v19 = tb_message_get_transport_buffer(a2);
    if (tx_buffer_size <= *(v13 + 16))
    {
      v20 = v19;
      v22 = v19[3];
      v21 = v19[4];
      v23 = (*v19 + v21);
      if (v23 <= *v19 + v22 && *v19 <= v23 && tx_buffer_size <= v22 - v21)
      {
        memcpy(v23, *(v13 + 8), tx_buffer_size);
        if (v23 <= &v23[tx_buffer_size])
        {
          v20[2] += tx_buffer_size;
          *(v13 + 24) += tx_buffer_size;
          *(v20 + 21) |= 1u;
          *a3 = a2;
          tb_message_complete(a2);
          return 0;
        }
      }
    }

    goto LABEL_18;
  }

  return result;
}

uint64_t tb_reply_splitter_next_message(pthread_mutex_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(tb_message_get_transport_buffer(a3) + 40))
  {
    return 2;
  }

  v10 = tb_list_find(a1, *(a3 + 24));
  if (!v10)
  {
    return 14;
  }

  v11 = v10;
  tx_buffer_size = tb_transport_get_tx_buffer_size(a5);
  v13 = v11[3];
  v14 = v13 + tx_buffer_size;
  if (__CFADD__(v13, tx_buffer_size))
  {
    tb_reply_splitter_next_message_cold_1();
  }

  v15 = v11[2];
  v16 = v15 - v13;
  if (v14 >= v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = tx_buffer_size;
  }

  result = _tb_message_reset(a2, a3, 1, v17, 0);
  if (!result)
  {
    result = tb_message_get_transport_buffer(a3);
    if (v14 < v15)
    {
      v18 = 1;
    }

    else
    {
      v18 = 3;
    }

    *(result + 42) = v18;
    v19 = (v11[1] + v11[3]);
    v20 = v19 > &v19[v17] || v17 > *(result + 24);
    if (v20 || (v21 = *result, result = memcpy(*result, v19, v17), v21 > &v21[v17]))
    {
      __break(0x5519u);
    }

    else
    {
      v11[3] += v17;
      tb_message_complete(a3);
      if (v14 >= v15)
      {
        tb_list_remove(a1, *(a3 + 24));
      }

      return 0;
    }
  }

  return result;
}

void ___reply_list_add_block_invoke(uint64_t a1, void **a2)
{
  free(a2[1]);

  free(a2);
}

void *tb_transport_set_message_handler(uint64_t a1, void *aBlock)
{
  result = _Block_copy(aBlock);
  *(a1 + 80) = result;
  return result;
}

uint64_t tb_transport_set_message_handler_f(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 88) = a2;
  *(result + 96) = a3;
  return result;
}

uint64_t tb_transport_call_message_handler(void *a1, uint64_t a2, uint64_t *a3)
{
  v4 = a1[11];
  if (v4)
  {
    v5 = v4(a2, a1[12]);
LABEL_5:
    v7 = v5;
    result = 0;
    *a3 = v7;
    return result;
  }

  v6 = a1[10];
  if (v6)
  {
    v5 = (*(v6 + 16))();
    goto LABEL_5;
  }

  return 4;
}

void tb_transport_destruct(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = a1[9];
  if (v3 && (v4 = *(v3 + 64)) != 0 || (v4 = a1[8]) != 0)
  {

    v4(a1);
  }
}

uint64_t tb_transport_message_buffer_wrap_buffer(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  *(result + 8) = 1;
  *(result + 16) = 0;
  *(result + 24) = a3;
  *(result + 32) = 0;
  *(result + 48) = 0;
  return result;
}

uint64_t tb_transport_send_message(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (!v1)
  {
    v1 = a1;
  }

  return (*v1)();
}

BOOL tb_transport_client_activate(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (!v1)
  {
    v1 = a1;
  }

  return (*(v1 + 8))() != 0;
}

BOOL tb_transport_service_activate(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (!v1)
  {
    v1 = a1;
  }

  return (*(v1 + 16))() != 0;
}

uint64_t tb_transport_construct_message_buffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 72);
  if (!v4)
  {
    v4 = a1;
  }

  return (*(v4 + 24))(a2, a3, a4);
}

uint64_t tb_transport_destruct_message_buffer(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  if (!v2)
  {
    v2 = a1;
  }

  return (*(v2 + 32))(a2);
}

uint64_t tb_transport_reset_message(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 72);
  if (!v4)
  {
    v4 = a1;
  }

  return (*(v4 + 40))(a2, a3, a4);
}

uint64_t tb_transport_supports_multipart_messages(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1)
  {
    v2 = *(v1 + 48);
    if (v2)
    {
      return v2();
    }
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    return v2();
  }

  else
  {
    return 0;
  }
}

uint64_t tb_transport_get_tx_buffer_size(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1)
  {
    v2 = *(v1 + 56);
    if (v2)
    {
      return v2();
    }
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    return v2();
  }

  else
  {
    return 0;
  }
}

uint64_t tb_transport_initialize_message_buffer(uint64_t result)
{
  *(result + 56) = 0u;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 32) = 0;
  *(result + 42) = 0;
  *(result + 40) = 0;
  *(result + 72) = 0u;
  *(result + 88) = 0u;
  if (result + 56 > (result + 104))
  {
    __break(0x5519u);
  }

  else
  {
    *(result + 48) = 0;
    *result = 0;
    *(result + 24) = 0;
    *(result + 41) = 0;
  }

  return result;
}

uint64_t tb_transport_reset_message_buffer(uint64_t result)
{
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 32) = 0;
  *(result + 42) = 0;
  *(result + 40) = 0;
  return result;
}

void *tb_transport_message_buffer_deep_copy(void *result, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2 > result[3] || (v4 = result, v5 = *result, result = memcpy(*result, *a2, v2), v5 > &v5[v2]) || (v6 = *(a2 + 24), v6 > v4[3]))
  {
    __break(0x5519u);
  }

  else
  {
    *(v4 + 8) = *(a2 + 8);
    v4[2] = *(a2 + 16);
    v4[3] = v6;
    v4[4] = *(a2 + 32);
    *(v4 + 10) = *(a2 + 40);
  }

  return result;
}

uint64_t tb_component_capability(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a3 >= a2 || a1 == 0)
  {
    return 0;
  }

  else
  {
    return a1 + a3;
  }
}

BOOL tb_component_admission_search_multiple(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  result = 1;
  if (a1 && a2)
  {
    v6 = a2 - 1;
    do
    {
      v7 = v6;
      v8 = *a1++;
      result = tb_component_admission_search(v8, a3);
      if (result)
      {
        break;
      }

      v6 = v7 - 1;
    }

    while (v7);
  }

  return result;
}

_BYTE *tb_forwarding_connection_create_with_endpoint_options(unsigned int *a1, unsigned int *a2, char a3, const void *a4)
{
  transport_for_endpoint = _tb_connection_create_transport_for_endpoint(a1, 1);
  v9 = _tb_connection_create_transport_for_endpoint(a2, 0);
  v10 = _tb_forwarding_connection_create(transport_for_endpoint, v9, a3, a4);
  tb_endpoint_destruct(a1);
  tb_endpoint_destruct(a2);
  return v10;
}

_BYTE *_tb_forwarding_connection_create(uint64_t a1, uint64_t a2, char a3, const void *a4)
{
  v8 = malloc_type_calloc(1uLL, 0x18uLL, 0x1020040984C81BBuLL);
  if (!v8)
  {
LABEL_8:
    _tb_delegated_c_service_transport_create_cold_1();
  }

  v9 = v8;
  if (a3)
  {
    *v8 = 1;
  }

  if (v8 > v8 + 24)
  {
    goto LABEL_7;
  }

  v10 = _tb_connection_create(a1);
  v11 = _Block_copy(a4);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 0x40000000;
  v13[2] = ___tb_service_connection_create_forward_block_invoke;
  v13[3] = &unk_279DBCF58;
  v13[4] = v11;
  v13[5] = v9;
  tb_transport_set_message_handler(a1, v13);
  if (v10 >= v10 + 6)
  {
LABEL_7:
    __break(0x5519u);
    goto LABEL_8;
  }

  *(v9 + 1) = v10;
  *(v9 + 2) = tb_client_connection_create(a2);
  return v9;
}

BOOL tb_forwarding_connection_activate(uint64_t a1)
{
  result = tb_client_connection_activate(*(a1 + 16));
  if (!result)
  {
    v3 = *(a1 + 8);

    return tb_service_connection_activate(v3);
  }

  return result;
}

void tb_forwarding_connection_destruct(uint64_t a1)
{
  _tb_connection_destruct(*(a1 + 8));
  v2 = *(a1 + 16);

  _tb_connection_destruct(v2);
}

int *___tb_service_connection_create_forward_block_invoke(uint64_t a1, int *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (!(*(v4 + 16))(v4, v3, a2, 1))
  {
    tb_message_complete(a2);
    return 0;
  }

  transport_buffer = tb_message_get_transport_buffer(a2);
  *(transport_buffer + 16) = *(transport_buffer + 24);
  transport = tb_connection_get_transport(*(v3 + 16));
  if (transport == tb_connection_get_transport(*(v3 + 8)))
  {
    v7 = 0;
    v9 = 0;
  }

  else
  {
    v7 = tb_message_get_transport_buffer(a2);
    v8 = malloc_type_calloc(1uLL, 0x68uLL, 0x1090040B6685729uLL);
    if (!v8)
    {
      _tb_delegated_c_service_transport_create_cold_1();
    }

    v9 = v8;
    v10 = 0;
    if (tb_transport_construct_message_buffer(transport, v7[2] - v7[4], 0, v8))
    {
      goto LABEL_18;
    }
  }

  if (_tb_forwarding_connection_message_forward(v3, a2, v9, 1))
  {
    goto LABEL_15;
  }

  if ((*v3 & 1) != 0 || !(*(v4 + 16))(v4, v3, a2, 0))
  {
    tb_message_set_transport_buffer(a2, v7);
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  v11 = tb_message_get_transport_buffer(a2);
  *(v11 + 16) = *(v11 + 24);
  if (_tb_forwarding_connection_message_forward(v3, a2, v7, 0))
  {
    v10 = 0;
  }

  else
  {
    v10 = a2;
  }

LABEL_16:
  if (v9)
  {
    tb_transport_destruct_message_buffer(transport, v9);
LABEL_18:
    free(v9);
  }

  return v10;
}

uint64_t _tb_forwarding_connection_message_forward(uint64_t a1, int *a2, void *a3, int a4)
{
  v28 = a2;
  v8 = 16;
  if (a4)
  {
    v8 = 8;
  }

  transport = tb_connection_get_transport(*(a1 + v8));
  if (*a2 != 4)
  {
    _tb_forwarding_connection_message_forward_cold_1(*a2);
  }

  transport_buffer = tb_message_get_transport_buffer(a2);
  if (a3)
  {
    v11 = a3[2];
    v12 = a3[4];
    if (v11 < v12)
    {
      goto LABEL_34;
    }
  }

  v13 = (a1 + 16);
  v14 = transport_buffer[2];
  v15 = transport_buffer[4];
  if (!a4)
  {
    v13 = (a1 + 8);
  }

  v16 = tb_connection_get_transport(*v13);
  v17 = 9;
  if (a3)
  {
    if (transport != v16)
    {
      v18 = v14 - v15;
      if ((a4 & 1) != 0 || (v19 = tb_connection_get_transport(*(a1 + 8)), tb_transport_reset_message_buffer(a3), v17 = tb_transport_reset_message(v19, a3, 0, v14 - v15), !v17))
      {
        v20 = a3[2];
        v11 = (v20 + v18);
        if (__CFADD__(v20, v18))
        {
          _tb_forwarding_connection_message_forward_cold_4();
        }

        v12 = a3[3];
        if (v11 > v12)
        {
          _tb_forwarding_connection_message_forward_cold_3(v11, v12);
        }

        v22 = transport_buffer[3];
        v21 = transport_buffer[4];
        v23 = (*transport_buffer + v21);
        if (v23 <= *transport_buffer + v22 && *transport_buffer <= v23 && v18 <= v22 - v21)
        {
          v24 = (*a3 + v20);
          if (v24 <= *a3 + v12 && *a3 <= v24 && v18 <= v12 - v20)
          {
            v11 = memcpy(v24, v23, v14 - v15);
            if (v24 <= &v24[v18])
            {
              a3[2] += v18;
              tb_message_set_transport_buffer(a2, a3);
              tb_message_complete(a2);
              tb_message_set_state(a2, 2);
              if (a4)
              {
                v25 = 1;
              }

              else
              {
                v25 = 2;
              }

              tb_message_set_disposition(a2, v25);
              tb_message_set_connection_identifier(a2, *(a1 + 16));
              if (!a4)
              {
                return 0;
              }

              if (*a1)
              {
                v26 = 0;
              }

              else
              {
                v26 = 2;
              }

              v17 = tb_connection_send_query(*(a1 + 16), a2, &v28, v26);
              if (v17)
              {
                tb_message_set_transport_buffer(v28, transport_buffer);
              }

              return v17;
            }
          }
        }

        __break(0x5519u);
LABEL_34:
        _tb_forwarding_connection_message_forward_cold_2(v11, v12);
      }
    }
  }

  return v17;
}

void *tb_alloc_message()
{
  result = malloc_type_calloc(1uLL, 0x58uLL, 0x102004071D150F8uLL);
  if (!result)
  {
    _tb_delegated_c_service_transport_create_cold_1();
  }

  return result;
}

void *tb_alloc_transport_message_buffer()
{
  result = malloc_type_calloc(1uLL, 0x68uLL, 0x1090040B6685729uLL);
  if (!result)
  {
    _tb_delegated_c_service_transport_create_cold_1();
  }

  return result;
}

uint64_t tb_unix_transport_construct_message_buffer(size_t a1, uint64_t a2, uint64_t a3)
{
  v5 = malloc_type_calloc(a1, 1uLL, 0x100004077774924uLL);
  if (v5 > &v5[a1])
  {
    __break(0x5519u);
LABEL_5:
    _tb_afk_common_transport_construct_message_buffer_cold_1();
  }

  if (!v5)
  {
    goto LABEL_5;
  }

  *a3 = v5;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = a1;
  *(a3 + 32) = 0;
  *(a3 + 48) = 0;
  *(a3 + 41) = 0;
  return 0;
}

void tb_unix_transport_destruct_message_buffer(uint64_t a1)
{
  free(*a1);
  *a1 = 0;
  *(a1 + 48) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 41) = 1;
}

uint64_t tb_unix_transport_message_buffer_reset(uint64_t a1, uint64_t a2, size_t a3)
{
  free(*a1);
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;

  return tb_unix_transport_construct_message_buffer(a3, v5, a1);
}

void *tb_unix_client_transport_create_with_endpoint(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0xF0uLL, 0x1082040885B605DuLL);
  if (!v2)
  {
    _tb_delegated_c_service_transport_create_cold_1();
  }

  v3 = v2;
  v2[9] = _tb_unix_client_transport_vtable;
  v2[13] = _tb_unix_client_transport_create_with_endpoint(a1);
  return v3;
}

void *tb_unix_service_transport_create_with_endpoint(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0xF0uLL, 0x1082040885B605DuLL);
  if (!v2)
  {
    _tb_delegated_c_service_transport_create_cold_1();
  }

  v3 = v2;
  v2[9] = &_tb_unix_service_transport_vtable;
  v2[13] = _tb_unix_service_transport_create_with_endpoint(a1);
  return v3;
}

char *_make_node(uint64_t a1, uint64_t a2, const void *a3)
{
  v6 = malloc_type_calloc(1uLL, 0x20uLL, 0x10A004062D90B2CuLL);
  if (!v6)
  {
    _tb_delegated_c_service_transport_create_cold_1();
  }

  v7 = v6;
  v8 = v6 + 32;
  *(v6 + 1) = a1;
  *(v6 + 2) = a2;
  result = _Block_copy(a3);
  *(v7 + 3) = result;
  if (v7 <= v8)
  {
    return v7;
  }

  __break(0x5519u);
  return result;
}

uint64_t _iterate_list(pthread_mutex_t *a1, uint64_t a2)
{
  result = pthread_mutex_lock(a1);
  sig = a1[1].__sig;
  if (!sig)
  {
    return pthread_mutex_unlock(a1);
  }

  v6 = 0;
  while (sig < sig + 4)
  {
    result = (*(a2 + 16))(a2, sig, &v6);
    if ((v6 & 1) == 0)
    {
      sig = *sig;
      if (sig)
      {
        continue;
      }
    }

    return pthread_mutex_unlock(a1);
  }

  __break(0x5519u);
  return result;
}

uint64_t tb_list_clear(pthread_mutex_t *a1)
{
  pthread_mutex_lock(a1);
  sig = a1[1].__sig;
  if (sig)
  {
    do
    {
      v3 = *sig;
      v4 = sig[2];
      (*(sig[3] + 16))();
      free(sig);
      sig = v3;
    }

    while (v3);
    a1[1].__sig = 0;
  }

  return pthread_mutex_unlock(a1);
}

pthread_mutex_t *tb_list_create()
{
  v0 = malloc_type_calloc(1uLL, 0x48uLL, 0x1020040C6685353uLL);
  if (!v0)
  {
    _tb_delegated_c_service_transport_create_cold_1();
  }

  v1 = v0;
  opaque = v0[1].__opaque;
  result = pthread_mutex_init(v0, 0);
  if (v1 <= opaque)
  {
    return v1;
  }

  __break(0x5519u);
  return result;
}

void tb_list_free(pthread_mutex_t *a1)
{
  pthread_mutex_destroy(a1);

  free(a1);
}

uint64_t tb_list_add(pthread_mutex_t *a1, uint64_t a2, uint64_t a3, const void *a4)
{
  node = _make_node(a2, a3, a4);
  v7 = node + 32;
  result = pthread_mutex_lock(a1);
  sig = a1[1].__sig;
  if (sig)
  {
    do
    {
      v10 = sig;
      if (*(sig + 1) == a2)
      {
        free(node);
        v11 = 0;
        goto LABEL_10;
      }

      sig = *sig;
    }

    while (*v10);
    if (node > v7)
    {
      goto LABEL_11;
    }

    *v10 = node;
  }

  else
  {
    if (node > v7)
    {
LABEL_11:
      __break(0x5519u);
      return result;
    }

    a1[1].__sig = node;
  }

  v11 = 1;
LABEL_10:
  pthread_mutex_unlock(a1);
  return v11;
}

uint64_t tb_list_remove(pthread_mutex_t *a1, uint64_t a2)
{
  pthread_mutex_lock(a1);
  v4 = a1 + 1;
  sig = a1[1].__sig;
  while (*sig->__opaque != a2)
  {
    v4 = sig;
    sig = sig->__sig;
    if (!sig)
    {
      goto LABEL_6;
    }
  }

  v4->__sig = sig->__sig;
  v6 = *&sig->__opaque[8];
  (*(*&sig->__opaque[16] + 16))();
  free(sig);
LABEL_6:

  return pthread_mutex_unlock(a1);
}

uint64_t tb_list_find(pthread_mutex_t *a1, uint64_t a2)
{
  pthread_mutex_lock(a1);
  sig = a1[1].__sig;
  if (!sig)
  {
    pthread_mutex_unlock(a1);
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  do
  {
    if (sig[1] == a2)
    {
      v7 = sig;
      v6 = (sig + 4);
      v5 = sig;
    }

    sig = *sig;
  }

  while (sig);
  result = pthread_mutex_unlock(a1);
  if (!v5)
  {
    return 0;
  }

  if ((v5 + 4) <= v6 && v7 <= v5)
  {
    return v5[2];
  }

  __break(0x5519u);
  return result;
}

uint64_t tb_list_count(pthread_mutex_t *a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 0x40000000;
  v3[2] = __tb_list_count_block_invoke;
  v3[3] = &unk_279DBCF80;
  v3[4] = &v4;
  _iterate_list(a1, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

uint64_t _s9Tightbeam8ConclaveV7service3for2asxSS_xmtSo10tb_error_taYKAA0A19ServiceInitProtocolRzlFZ(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v9 = type metadata accessor for TightbeamEndpoint();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18[0] = 0;
  v13 = sub_26F073CF0();
  v14 = tb_conclave_identifier_for_service(v13 + 32, v18);

  if (v14)
  {
    v17[3] = v14;
    type metadata accessor for TransportError(0);
    sub_26F05335C(&qword_2806D11B0, type metadata accessor for TransportError);
    result = swift_willThrowTypedImpl();
    *a6 = v14;
  }

  else
  {
    if ((v18[0] & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    *v12 = v18[0];
    swift_storeEnumTagMultiPayload();
    result = (*(a5 + 8))(v12, a4, a5);
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t getEnumTagSinglePayload for Conclave(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for Conclave(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
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

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_26F052D68(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 88))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26F052D88(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 88) = v3;
  return result;
}

__n128 __swift_memcpy240_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_26F052E48(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_26F052E9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_26F052F00(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26F052F20(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

_DWORD *sub_26F052F7C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_26F052F94(uint64_t a1, id *a2)
{
  result = sub_26F073CB0();
  *a2 = 0;
  return result;
}

uint64_t sub_26F05300C(uint64_t a1, id *a2)
{
  v3 = sub_26F073CC0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_26F05308C@<X0>(uint64_t *a1@<X8>)
{
  sub_26F073CD0();
  v2 = sub_26F073CA0();

  *a1 = v2;
  return result;
}

uint64_t sub_26F0530D0()
{
  v1 = *v0;
  v2 = sub_26F073CD0();
  v3 = MEMORY[0x274386CE0](v2);

  return v3;
}

uint64_t sub_26F05310C()
{
  v1 = *v0;
  sub_26F073CD0();
  sub_26F073D20();
}

uint64_t sub_26F053160()
{
  v1 = *v0;
  sub_26F073CD0();
  sub_26F074050();
  sub_26F073D20();
  v2 = sub_26F074080();

  return v2;
}

uint64_t sub_26F0531D4()
{
  v2 = *v0;
  sub_26F074050();
  sub_26F073C80();
  return sub_26F074080();
}

uint64_t sub_26F053238(uint64_t a1, uint64_t a2)
{
  v4 = sub_26F05335C(&qword_2806D11F8, type metadata accessor for TransportError);

  return MEMORY[0x28211C010](a1, a2, v4);
}

uint64_t sub_26F0532B4()
{
  v2 = *v0;
  sub_26F074050();
  sub_26F073C80();
  return sub_26F074080();
}

uint64_t sub_26F05335C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26F0533A4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_26F073CD0();
  v6 = v5;
  if (v4 == sub_26F073CD0() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26F073FC0();
  }

  return v9 & 1;
}

uint64_t sub_26F05342C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_26F073CA0();

  *a2 = v5;
  return result;
}

uint64_t sub_26F053474@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_26F073CD0();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_26F0534A0(uint64_t a1)
{
  v2 = sub_26F05335C(&qword_2806D1250, type metadata accessor for FileAttributeKey);
  v3 = sub_26F05335C(&qword_2806D1258, type metadata accessor for FileAttributeKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_26F0535EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 104))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_26F053640(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26F0536C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_26F05370C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26F053768(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 24))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_26F0537AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_26F053800(uint64_t a1, int a2)
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

uint64_t sub_26F053848(uint64_t result, int a2, int a3)
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

uint64_t sub_26F0539A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*(a1 + 8))
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_26F0539EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
    }
  }

  return result;
}

void sub_26F053A3C(uint64_t a1, unint64_t *a2)
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

size_t sub_26F053AB8@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, const char ***a3@<X8>)
{
  size[1] = *MEMORY[0x277D85DE8];
  result = _dyld_image_count();
  if (result)
  {
    v6 = result;
    v7 = 0;
    while (1)
    {
      result = _dyld_get_image_header(v7);
      if (result)
      {
        size[0] = 0;
        result = getsectiondata(result, "__DATA", "__TIGHTBEAM", size);
        if (result)
        {
          if (size[0] >= 8)
          {
            break;
          }
        }
      }

LABEL_3:
      if (++v7 == v6)
      {
        goto LABEL_15;
      }
    }

    v8 = result;
    v9 = (result + (size[0] & 0xFFFFFFFFFFFFFFF8));
    while (1)
    {
      v10 = **v8;
      result = strlen(v10);
      if (result == a2)
      {
        break;
      }

LABEL_8:
      if (++v8 == v9)
      {
        goto LABEL_3;
      }
    }

    v11 = a2;
    v12 = a1;
    while (v11)
    {
      v14 = *v10++;
      v13 = v14;
      v15 = *v12++;
      --v11;
      if (v13 != v15)
      {
        goto LABEL_8;
      }
    }

    *a3 = *v8;
  }

  else
  {
LABEL_15:
    *a3 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26F053C10(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v3 = result;
  if (a2)
  {
    v4 = a3 - a2;
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_26F05C278(0, v4, a2, a3);
  if (!v3 || (v6 = v5, result = v4, v6 >= v3))
  {
    result = v3;
    if (v4 < v3)
    {
      goto LABEL_10;
    }
  }

  return result;
}

unint64_t sub_26F053C98(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (*(a2 + 16) < result)
    {
      v2 = *(a2 + 16);
    }

    return a2;
  }

  return result;
}

Tightbeam::ComponentRuntime::Configuration __swiftcall ComponentRuntime.Configuration.init(numEndpoints:numComponents:numClients:numTypes:)(Swift::Int numEndpoints, Swift::Int numComponents, Swift::Int numClients, Swift::Int numTypes)
{
  *v4 = numEndpoints;
  v4[1] = numComponents;
  v4[2] = numClients;
  v4[3] = numTypes;
  result.numTypes = numTypes;
  result.numClients = numClients;
  result.numComponents = numComponents;
  result.numEndpoints = numEndpoints;
  return result;
}

unsigned __int8 **sub_26F053CF8(unsigned __int8 **result)
{
  v2 = *(*(v1 + 32) + 40);
  if (!v2)
  {
    return 0;
  }

  v3 = *v2;
  if ((*v2 & 0x8000000000000000) == 0)
  {
    if (v3)
    {
      v4 = 0;
      v5 = *result;
      v6 = result[1];
      v7 = v2[1];
      while (1)
      {
        v8 = **(v7 + 8 * v4);
        if (strlen(v8) == v6)
        {
          break;
        }

LABEL_5:
        if (++v4 == v3)
        {
          return 0;
        }
      }

      v9 = v6;
      v10 = v5;
      while (v9)
      {
        v12 = *v8++;
        v11 = v12;
        v13 = *v10++;
        --v9;
        if (v11 != v13)
        {
          goto LABEL_5;
        }
      }

      return v4;
    }

    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_26F053DAC(__int128 *a1)
{
  v2 = v1[1];
  v11 = *v1;
  v12 = v2;
  v3 = *(v1 + 2);
  v13 = *(v1 + 1);
  v14 = v3;
  v9 = v3;
  v10 = *a1;
  v4 = sub_26F053CF8(&v10);
  if (v5)
  {
    return 0;
  }

  v7 = *(v9 + 40);
  if (v7)
  {
    if ((v4 & 0x8000000000000000) == 0 && v4 < *v7)
    {
      return *(v7[1] + 8 * v4);
    }
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
    sub_26F073F00();
    MEMORY[0x274386C80](0xD000000000000020, 0x800000026F078540);
    v8 = sub_26F073D00();
    MEMORY[0x274386C80](v8);

    MEMORY[0x274386C80](0xD000000000000019, 0x800000026F078570);
  }

  result = sub_26F073F50();
  __break(1u);
  return result;
}

uint64_t sub_26F053F60(unsigned __int8 **a1)
{
  v2 = *(v1 + 32);
  v3 = *(v2 + 24);
  if (v3 < 1)
  {
LABEL_14:
    result = sub_26F073F50();
    __break(1u);
  }

  else
  {
    v4 = *(v2 + 32);
    if (*(a1 + 16) == 1)
    {
      return *v4;
    }

    v7 = 0;
    v8 = *a1;
    v9 = a1[1];
    while (1)
    {
      v5 = *(v4 + 8 * v7);
      v10 = *v5;
      if (strlen(*v5) == v9)
      {
        break;
      }

LABEL_6:
      if (++v7 == v3)
      {
        sub_26F073F00();

        v16 = sub_26F073D00();
        MEMORY[0x274386C80](v16);

        goto LABEL_14;
      }
    }

    v11 = v9;
    v12 = v8;
    while (v11)
    {
      v14 = *v10++;
      v13 = v14;
      v15 = *v12++;
      --v11;
      if (v13 != v15)
      {
        goto LABEL_6;
      }
    }

    return v5;
  }

  return result;
}

__n128 ComponentRuntime.init(allocatingFor:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  *&v14 = *a1;
  v3 = v14;
  *(&v14 + 1) = v4;
  v15.n128_u64[0] = v5;
  v15.n128_u64[1] = v6;
  v7 = _s9Tightbeam16ComponentRuntimeV4size3forSiAC13ConfigurationV_tFZ_0(&v14);
  v8 = swift_slowAlloc();
  v13[0] = v3;
  v13[1] = v4;
  v13[2] = v5;
  v13[3] = v6;
  ComponentRuntime.init(for:into:)(v13, v8, v7 + v8, &v14);
  v9 = v21;
  *(a2 + 96) = v20;
  *(a2 + 112) = v9;
  *(a2 + 128) = v22;
  v10 = v17;
  *(a2 + 32) = v16;
  *(a2 + 48) = v10;
  v11 = v19;
  *(a2 + 64) = v18;
  *(a2 + 80) = v11;
  result = v15;
  *a2 = v14;
  *(a2 + 16) = result;
  return result;
}

uint64_t ComponentRuntime.init(for:into:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v4 = a3 - a2;
  if (a2)
  {
    v5 = a3 - a2;
  }

  else
  {
    v5 = 0;
  }

  if (v5 < 0)
  {
    goto LABEL_85;
  }

  if (v5 < 4)
  {
LABEL_112:
    sub_26F073F00();
    MEMORY[0x274386C80](0xD000000000000019, 0x800000026F0782C0);
    v51 = sub_26F073F10();
    MEMORY[0x274386C80](v51);

    MEMORY[0x274386C80](10272, 0xE200000000000000);
    v52 = sub_26F073F10();
    MEMORY[0x274386C80](v52);

    MEMORY[0x274386C80](58, 0xE100000000000000);
    sub_26F057088();
    v53 = sub_26F073EC0();
    MEMORY[0x274386C80](v53);

    MEMORY[0x274386C80](0x656465656E202C29, 0xEA00000000002064);
    v54 = sub_26F073EC0();
    MEMORY[0x274386C80](v54);

    MEMORY[0x274386C80](0x202C736574796220, 0xED00002065766168);
    v55 = sub_26F073EC0();
    MEMORY[0x274386C80](v55);

    MEMORY[0x274386C80](0x62616C6961766120, 0xEA0000000000656CLL);
    goto LABEL_113;
  }

  if (!a2)
  {
    goto LABEL_113;
  }

  v8 = a1[2];
  if ((v8 - 0x2000000000000000) >> 62 != 3)
  {
    goto LABEL_86;
  }

  if (((4 * v8) & 0x8000000000000000) != 0)
  {
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v10 = *a1;
  v57 = a1[1];
  v11 = sub_26F056EA4(0, 4 * v8, v4, 0, v4, a2, a3);
  if (v12)
  {
    v13 = v4;
  }

  else
  {
    v13 = v11;
  }

  if (v4 < v13)
  {
    goto LABEL_88;
  }

  if (v13 < 0)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    if (v8)
    {
      if (v8 > 8)
      {
        v15 = v8 - 1;
        if (v8 - 1 >= 0x2000000000000000)
        {
          v15 = 0x2000000000000000;
        }

        v16 = v15 + 1;
        v17 = v16 & 7;
        if ((v16 & 7) == 0)
        {
          v17 = 8;
        }

        v14 = v16 - v17;
        v18 = (a2 + 16);
        v19 = v14;
        do
        {
          *(v18 - 1) = 0uLL;
          *v18 = 0uLL;
          v18 += 2;
          v19 -= 8;
        }

        while (v19);
      }

      else
      {
        v14 = 0;
      }

      v20 = v14 - 0x2000000000000000;
      v21 = v8 - v14;
      v22 = (a2 + 4 * v14);
      while (v20)
      {
        *v22++ = 0;
        ++v20;
        if (!--v21)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
      goto LABEL_82;
    }

LABEL_27:
    if (v4 < v5)
    {
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    if (v5 - v13 < 1)
    {
      goto LABEL_112;
    }

    v23 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    if (v4 < v23)
    {
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    if (v5 < v23)
    {
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    if (v23 < v13)
    {
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    if (v4 < v23)
    {
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    if (v5 - v23 < 24)
    {
      goto LABEL_112;
    }

    v24 = 24 * v10;
    if ((v10 * 24) >> 64 != (24 * v10) >> 63)
    {
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    if (v24 < 0)
    {
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    v25 = sub_26F056EA4(v13 + 1, v24, v5, v13 + 1, v5, a2, a3);
    if (v26)
    {
      v27 = v5;
    }

    else
    {
      v27 = v25;
    }

    if (v5 < v27)
    {
      goto LABEL_98;
    }

    if (v27 < v23)
    {
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      v28 = (a2 + v23);
      if (v10)
      {
        v29 = 0x555555555555556;
        v30 = v10;
        v31 = v28;
        while (v29)
        {
          *v31 = 0;
          v31[1] = 0;
          v31[2] = 0;
          v31 += 3;
          --v29;
          if (!--v30)
          {
            goto LABEL_47;
          }
        }

LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

LABEL_47:
      if (v5 - v27 < 48)
      {
        goto LABEL_112;
      }

      v32 = 48 * v57;
      if ((v57 * 48) >> 64 != (48 * v57) >> 63)
      {
LABEL_100:
        __break(1u);
        goto LABEL_101;
      }

      if (v32 < 0)
      {
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
        goto LABEL_103;
      }

      v33 = sub_26F056EA4(v27, v32, v5, v27, v5, a2, a3);
      if (v34)
      {
        v35 = v5;
      }

      else
      {
        v35 = v33;
      }

      if (v5 < v35)
      {
        goto LABEL_102;
      }

      if (v35 < v27)
      {
LABEL_103:
        __break(1u);
        goto LABEL_104;
      }

      v56 = v28;
      v36 = v57;
      if ((v57 & 0x8000000000000000) == 0)
      {
        v37 = a2 + v27;
        if (v57)
        {
          v38 = 0x2AAAAAAAAAAAAABLL;
          v39 = (a2 + v27);
          while (v38)
          {
            v39[1] = 0uLL;
            v39[2] = 0uLL;
            *v39 = 0uLL;
            v39 += 3;
            --v38;
            if (!--v36)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_83;
        }

LABEL_60:
        if (v5 - v35 >= 64)
        {
          if (v8 >> 57)
          {
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
            goto LABEL_106;
          }

          v40 = sub_26F056EA4(v35, v8 << 6, v5, v35, v5, a2, a3);
          if (v41)
          {
            v42 = v5;
          }

          else
          {
            v42 = v40;
          }

          if (v5 < v42)
          {
            goto LABEL_105;
          }

          if (v42 < v35)
          {
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
            goto LABEL_108;
          }

          if (v8)
          {
            v43 = v35 + a2 + 8;
            v44 = v8;
            do
            {
              *(v43 - 8) = 0x200000000;
              *v43 = 0uLL;
              *(v43 + 16) = 0uLL;
              *(v43 + 32) = 0uLL;
              *(v43 + 48) = 0;
              v43 += 64;
              --v44;
            }

            while (v44);
          }

          if (v5 - v42 >= 16)
          {
            result = sub_26F056EA4(v42, 16 * v8, v5, v42, v5, a2, a3);
            if (v46)
            {
              v47 = v5;
            }

            else
            {
              v47 = result;
            }

            if (v5 < v47)
            {
              goto LABEL_107;
            }

            if (v47 < v42)
            {
LABEL_108:
              __break(1u);
              goto LABEL_113;
            }

            if (!v8)
            {
LABEL_80:
              *a4 = a2;
              a4[1] = a3;
              a4[2] = v47;
              a4[3] = v5;
              a4[4] = a2;
              a4[5] = a3;
              a4[6] = a2 + v13;
              a4[7] = v56;
              a4[8] = v10;
              a4[9] = v37;
              a4[10] = v57;
              a4[11] = a2 + v42;
              a4[12] = v8;
              a4[13] = a2;
              a4[14] = v8;
              a4[15] = a2 + v35;
              a4[16] = v8;
              return result;
            }

            v48 = 0x800000000000000;
            v49 = (a2 + v42);
            v50 = v8;
            while (v48)
            {
              *v49 = 0;
              v49[1] = 0;
              v49 += 2;
              --v48;
              if (!--v50)
              {
                goto LABEL_80;
              }
            }

            goto LABEL_84;
          }
        }

        goto LABEL_112;
      }
    }
  }

LABEL_113:
  result = sub_26F073F50();
  __break(1u);
  return result;
}

uint64_t ComponentRuntime.initializeComponent(at:from:cnode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44[12] = *MEMORY[0x277D85DE8];
  v5 = v4[2];
  v6 = v4[4];
  v7 = v4[5] - v6;
  if (v6)
  {
    v8 = v4[5] - v6;
  }

  else
  {
    v8 = 0;
  }

  if (v5 < 0 || v8 < v5)
  {
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v9 = v4[3];
  if ((v9 & 0x8000000000000000) != 0 || v8 < v9)
  {
    goto LABEL_30;
  }

  v10 = v9 - v5;
  if ((v9 - v5) < 240)
  {
    v44[0] = 0;
    v44[1] = 0xE000000000000000;
    sub_26F073F00();
    MEMORY[0x274386C80](0xD000000000000019, 0x800000026F0782C0);
    v31 = sub_26F073F10();
    MEMORY[0x274386C80](v31);

    MEMORY[0x274386C80](10272, 0xE200000000000000);
    v32 = sub_26F073F10();
    MEMORY[0x274386C80](v32);

    MEMORY[0x274386C80](58, 0xE100000000000000);
    v42 = 496;
    sub_26F057088();
    v33 = sub_26F073EC0();
    MEMORY[0x274386C80](v33);

    MEMORY[0x274386C80](0x656465656E202C29, 0xEA00000000002064);
LABEL_46:
    v37 = sub_26F073EC0();
    MEMORY[0x274386C80](v37);

    MEMORY[0x274386C80](0x202C736574796220, 0xED00002065766168);
    v42 = v10;
    v38 = sub_26F073EC0();
    MEMORY[0x274386C80](v38);

    MEMORY[0x274386C80](0x62616C6961766120, 0xEA0000000000656CLL);
    goto LABEL_49;
  }

  if (!v6)
  {
    goto LABEL_49;
  }

  if (v7 < v5)
  {
    goto LABEL_31;
  }

  if (v7 < v9)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v11 = v5 + 240;
  if (__OFADD__(v5, 240))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v7 < v11)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v10 = v9 - v11;
  if (v9 < v11)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v11 < v5)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v10 < 48)
  {
    v44[0] = 0;
    v44[1] = 0xE000000000000000;
    sub_26F073F00();
    MEMORY[0x274386C80](0xD000000000000019, 0x800000026F0782C0);
    v34 = sub_26F073F10();
    MEMORY[0x274386C80](v34);

    MEMORY[0x274386C80](10272, 0xE200000000000000);
    v35 = sub_26F073F10();
    MEMORY[0x274386C80](v35);

    MEMORY[0x274386C80](58, 0xE100000000000000);
    v42 = 497;
    sub_26F057088();
    v36 = sub_26F073EC0();
    MEMORY[0x274386C80](v36);

    MEMORY[0x274386C80](0x656465656E202C29, 0xEA00000000002064);
    goto LABEL_46;
  }

  v12 = v5 + 288;
  if (__OFADD__(v11, 48))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v7 < v12)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v9 < v12)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v12 < v11)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }

  v15 = *a2;
  v16 = *(a2 + 8);
  v17 = (v6 + v5);
  v18 = (v6 + v11);
  v4[2] = v12;
  inited = ComponentInitDataReader.Component.dataBuffer()();
  v21 = v20;
  LODWORD(v44[0]) = 1;
  *(v44 + 4) = 0u;
  memset(&v44[2] + 4, 0, 21);
  memset(&v44[6], 0, 48);
  v40 = v17;
  if (!tb_client_connection_create_with_endpoint_static(v18, v17, v44))
  {
    v42 = v15;
    v43 = v16;
    v22 = ComponentInitDataReader.Component.identifier()();
    sub_26F053AB8(v22, v23, &v42);
    v24 = v42;
    if (v42)
    {
      if (inited)
      {
        if (!a3)
        {
          goto LABEL_42;
        }

        v25 = (*(v42 + 8))(a3, a4 - a3, inited, v21 - inited);
        if ((a1 & 0x8000000000000000) == 0 && v4[10] > a1)
        {
          if ((a1 * 48) >> 64 == (48 * a1) >> 63)
          {
            v26 = v25;
            v27 = (v4[9] + 48 * a1);
            v42 = v15;
            v43 = v16;
            result = ComponentInitDataReader.Component.identifier()();
            *v27 = result;
            v27[1] = v29;
            v27[2] = v40;
            v27[3] = v18;
            v27[4] = v24;
            v27[5] = v26;
            v30 = *MEMORY[0x277D85DE8];
            return result;
          }

          goto LABEL_41;
        }
      }
    }

    else
    {
      v42 = 0;
      v43 = 0xE000000000000000;
      sub_26F073F00();

      v42 = 0xD000000000000025;
      v43 = 0x800000026F078370;
      ComponentInitDataReader.Component.identifier()();
      v39 = sub_26F073D00();
      MEMORY[0x274386C80](v39);

      MEMORY[0x274386C80](34, 0xE100000000000000);
    }
  }

LABEL_49:
  result = sub_26F073F50();
  __break(1u);
  return result;
}

uint64_t ComponentRuntime.initializeClient(componentIndex:handlerIndex:client:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a1 < 0 || v3[10] <= a1)
  {
    goto LABEL_75;
  }

  if ((a1 * 48) >> 64 != (48 * a1) >> 63)
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v5 = (v3[9] + 48 * a1);
  v77 = v5[2];
  if (!v77)
  {
    sub_26F073F00();

    v81 = 0xD000000000000023;
    v82 = 0x800000026F0783D0;
    *&v79 = a1;
    sub_26F057088();
    v58 = sub_26F073EC0();
    MEMORY[0x274386C80](v58);

    goto LABEL_75;
  }

  v6 = *a3;
  if (!*a3 || (v7 = a3[1], v7 - v6 <= 36))
  {
    while (1)
    {
LABEL_75:
      sub_26F073F50();
      __break(1u);
    }
  }

  v8 = *(v6 + 29);
  if ((v8 & 0x8000000000000000) != 0)
  {
    goto LABEL_63;
  }

  v70 = v3;
  v75 = v5[1];
  v76 = *v5;
  v78 = v5[5];
  v73 = v5[3];
  v74 = v5[4];
  v9 = *(v6 + 17);
  v10 = *(v6 + 19);
  v11 = sub_26F053C10(37, v6, v7);
  v15 = v14;
  v16 = *(v6 + 21);
  if (v16 < 0)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v17 = v11;
  v18 = v12;
  v19 = v13;
  v20 = sub_26F056F2C(v11, v16, v15, v11, v15, v12, v13);
  if (v21)
  {
    v22 = v15;
  }

  else
  {
    v22 = v20;
  }

  if (v15 < v22)
  {
    goto LABEL_65;
  }

  if (v22 < v17)
  {
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    v81 = 0;
    v82 = 0xE000000000000000;
    sub_26F073F00();

    v81 = 0x6E656E6F706D6F63;
    v82 = 0xEA00000000002074;
    v56 = sub_26F073D00();
    MEMORY[0x274386C80](v56);

    MEMORY[0x274386C80](0xD000000000000020, 0x800000026F078460);
    v57 = sub_26F073D00();
    MEMORY[0x274386C80](v57);

    goto LABEL_75;
  }

  v67 = a1;
  v68 = v7;
  v72 = v8;
  v65 = v10;
  v66 = v9;
  if (v8)
  {
    v23 = v70[2];
    v24 = v70[4];
    v64 = v70[5];
    v25 = v64 - v24;
    if (!v24)
    {
      v25 = 0;
    }

    if (v23 < 0 || v25 < v23)
    {
      goto LABEL_69;
    }

    v26 = v70[3];
    if (v26 < 0 || v25 < v26)
    {
      goto LABEL_70;
    }

    if (v26 - v23 < 8)
    {
      v81 = 0;
      v82 = 0xE000000000000000;
      sub_26F073F00();
      MEMORY[0x274386C80](0xD000000000000019, 0x800000026F0782C0);
      v59 = sub_26F073F10();
      MEMORY[0x274386C80](v59);

      MEMORY[0x274386C80](10272, 0xE200000000000000);
      v60 = sub_26F073F10();
      MEMORY[0x274386C80](v60);

      MEMORY[0x274386C80](58, 0xE100000000000000);
      sub_26F057088();
      v61 = sub_26F073EC0();
      MEMORY[0x274386C80](v61);

      MEMORY[0x274386C80](0x656465656E202C29, 0xEA00000000002064);
      v62 = sub_26F073EC0();
      MEMORY[0x274386C80](v62);

      MEMORY[0x274386C80](0x202C736574796220, 0xED00002065766168);
      *&v79 = v26 - v23;
      v63 = sub_26F073EC0();
      MEMORY[0x274386C80](v63);

      MEMORY[0x274386C80](0x62616C6961766120, 0xEA0000000000656CLL);
      goto LABEL_75;
    }

    if (!v24)
    {
      goto LABEL_75;
    }

    if (v8 >> 60)
    {
      goto LABEL_71;
    }

    v27 = sub_26F056EA4(v23, 8 * v8, v70[3], v23, v70[3], v24, v64);
    if (v28)
    {
      v29 = v26;
    }

    else
    {
      v29 = v27;
    }

    if (v26 < v29)
    {
      goto LABEL_72;
    }

    if (v29 < v23)
    {
      goto LABEL_73;
    }

    v30 = 0;
    v71 = v24 + v23;
    v70[2] = v29;
    v70[3] = v26;
    v70[4] = v24;
    v70[5] = v64;
    if (v18)
    {
      v31 = v18 + v15;
    }

    else
    {
      v31 = 0;
    }

    while (1)
    {
      v32 = *(v6 + 29);
      if ((v32 & 0x8000000000000000) != 0)
      {
        break;
      }

      v33 = *(v6 + 21);
      if (v33 < 0)
      {
        goto LABEL_59;
      }

      v34 = sub_26F056F2C(v17, v33, v15, v17, v15, v18, v19);
      if (v35)
      {
        v36 = v15;
      }

      else
      {
        v36 = v34;
      }

      if (v15 < v36)
      {
        goto LABEL_60;
      }

      if (v36 < v17)
      {
        goto LABEL_61;
      }

      v37 = v18 + v36;
      if (!v18)
      {
        v37 = 0;
      }

      v81 = v37;
      v82 = v31;
      v83 = v32;
      ComponentInitDataReader.TypeBuffer.subscript.getter(v30, &v79);
      inited = ComponentInitDataReader.TypeData.type()();
      v81 = v76;
      v82 = v75;
      v83 = v77;
      v84 = v73;
      v85 = v74;
      v86 = v78;
      *&v79 = inited;
      *(&v79 + 1) = v39;
      v40 = sub_26F053DAC(&v79);
      if (!v40)
      {
        goto LABEL_74;
      }

      *(v71 + 8 * v30++) = v40;
      if (v72 == v30)
      {
        v41 = a2;
        v42 = v70;
        if ((a2 & 0x8000000000000000) == 0)
        {
          goto LABEL_44;
        }

        goto LABEL_75;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v71 = 0;
  v41 = a2;
  v42 = v70;
  if (a2 < 0)
  {
    goto LABEL_75;
  }

LABEL_44:
  if (v42[14] <= v41)
  {
    goto LABEL_75;
  }

  if (v41 >> 61)
  {
    goto LABEL_67;
  }

  v43 = v42[13];
  v81 = v76;
  v82 = v75;
  v83 = v77;
  v84 = v73;
  v85 = v74;
  v86 = v78;
  *&v79 = v6;
  *(&v79 + 1) = v68;
  v44 = ComponentInitDataReader.Client.propertyName()();
  if (v46)
  {
    v47 = 0;
  }

  else
  {
    v47 = v44;
  }

  if (v46)
  {
    v48 = 0;
  }

  else
  {
    v48 = v45;
  }

  *&v79 = v47;
  *(&v79 + 1) = v48;
  v80 = v46 & 1;
  v49 = sub_26F053F60(&v79);
  if (v42[16] <= v41)
  {
    goto LABEL_75;
  }

  if (v41 >> 57)
  {
    goto LABEL_68;
  }

  v50 = v49;
  v51 = v42[15] + (v41 << 6);
  result = (*(v49 + 8))(v78);
  *v51 = v66;
  *(v51 + 2) = v65;
  *(v51 + 4) = 0;
  *(v51 + 8) = 0;
  *(v51 + 16) = v67;
  *(v51 + 24) = v41;
  *(v51 + 32) = result;
  *(v51 + 40) = v71;
  *(v51 + 48) = v72;
  *(v51 + 56) = v50;
  if (v42[12] <= v41)
  {
    goto LABEL_75;
  }

  v53 = v42[11];
  v54 = (v43 + 4 * v41);
  *v54 = 0;
  v55 = (v53 + 16 * v41);
  *v55 = v54;
  v55[1] = v51;
  return result;
}

uint64_t ComponentRuntime.handleMessage(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = HIBYTE(a3);
  v4[1] = 0;
  v4[2] = BYTE6(a3);
  v5 = WORD2(a3);
  v6 = WORD1(a3);
  v7 = a3;
  return ComponentRuntime.handleMessage(_:_:_:)(a1, a2, v4);
}

{
  if (*(a3 + 1) == 1)
  {
    v4 = *(a3 + 2);
    v5 = *(a3 + 4);
    v6 = *(a3 + 6);
    v7 = *(a3 + 8);
    if (*a3)
    {
      if (*a3 == 1)
      {
        v12 = 257;
        v13 = v4;
        v14 = v5;
        v15 = v6;
        LOWORD(v16) = v7;
        sub_26F055FAC(&v12, v3);
      }

      else
      {
        v12 = 258;
        v13 = v4;
        v14 = v5;
        v15 = v6;
        LOWORD(v16) = v7;
        sub_26F05659C(&v12, v3, sub_26F056890);
      }

      return 0;
    }

    else
    {
      v12 = 256;
      v13 = v4;
      v14 = v5;
      v15 = v6;
      LOWORD(v16) = v7;
      sub_26F0562B4(&v12, v3);
      v12 = 256;
      v13 = v4;
      v14 = v5;
      v15 = v6;
      LOWORD(v16) = v7;
      v10 = sub_26F05694C(&v12, v3, a1, a2);
      v12 = 256;
      v13 = v4;
      v14 = v5;
      v15 = v6;
      LOWORD(v16) = v7;
      sub_26F05659C(&v12, v3, sub_26F056C48);
      return v10;
    }
  }

  else
  {
    sub_26F073F00();
    MEMORY[0x274386C80](0xD00000000000001ELL, 0x800000026F0784D0);
    sub_26F073F40();
    result = sub_26F073F50();
    __break(1u);
  }

  return result;
}

void sub_26F055FAC(char *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 2);
  v6 = *(a1 + 3);
  v7 = *(a1 + 4);
  v8 = a2[3];
  v30 = a2[2];
  v31 = v8;
  v9 = a2[1];
  v28 = *a2;
  v29 = v9;
  v10 = *(a2 + 8);
  v11 = *(a2 + 9);
  v12 = *(a2 + 10);
  v13 = *(a2 + 11);
  v37 = *(a2 + 104);
  v14 = *(a2 + 12);
  v38 = *(a2 + 120);
  v32 = v10;
  v33 = v11;
  v34 = v12;
  v35 = v13;
  v36 = v14;
  v25 = v2;
  LOBYTE(v26) = v2;
  BYTE1(v26) = v3;
  BYTE2(v26) = v4;
  WORD2(v26) = v5;
  HIWORD(v26) = v6;
  v27 = v7;
  v15 = sub_26F056D10(&v26);
  if (v16 < 0 || v16 >= v12)
  {
    goto LABEL_24;
  }

  if ((v16 * 48) >> 64 != (48 * v16) >> 63)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v17 = v11 + 48 * v16;
  if (!*(v17 + 16))
  {
    *&v28 = 0;
    *(&v28 + 1) = 0xE000000000000000;
    v23 = v16;
    sub_26F073F00();
    MEMORY[0x274386C80](0xD00000000000001CLL, 0x800000026F0784F0);
    v26 = v23;
    sub_26F057088();
    v24 = sub_26F073EC0();
    MEMORY[0x274386C80](v24);

    MEMORY[0x274386C80](0x64616220726F6620, 0xEB00000000206567);
    LOBYTE(v26) = v25;
    BYTE1(v26) = v3;
    BYTE2(v26) = v4;
    WORD2(v26) = v5;
    HIWORD(v26) = v6;
    v27 = v7;
    sub_26F073F40();
LABEL_24:
    sub_26F073F50();
    __break(1u);
    return;
  }

  if (v15 < 0 || v15 >= v14)
  {
    goto LABEL_24;
  }

  if (v15 >> 59)
  {
    goto LABEL_17;
  }

  v18 = v13 + 16 * v15;
  if (!*v18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v19 = *(v17 + 40);
  os_unfair_lock_lock(*v18);
  v20 = *(v18 + 8);
  if (*(v20 + 4) << 32 == 0x200000000)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_24;
  }

  if (!*(v20 + 32))
  {
    v21 = (*(*(v20 + 56) + 8))(v19);
    if (*(v20 + 4) << 32 != 0x200000000)
    {
      *(v20 + 32) = v21;
      goto LABEL_13;
    }

    goto LABEL_20;
  }

LABEL_13:
  v22 = *v18;

  os_unfair_lock_unlock(v22);
}

void sub_26F0562B4(char *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 2);
  v6 = *(a1 + 3);
  v7 = *(a1 + 4);
  v8 = a2[3];
  v30 = a2[2];
  v31 = v8;
  v9 = a2[1];
  v28 = *a2;
  v29 = v9;
  v10 = *(a2 + 8);
  v11 = *(a2 + 9);
  v12 = *(a2 + 10);
  v13 = *(a2 + 11);
  v37 = *(a2 + 104);
  v14 = *(a2 + 12);
  v38 = *(a2 + 120);
  v32 = v10;
  v33 = v11;
  v34 = v12;
  v35 = v13;
  v36 = v14;
  v25 = v2;
  LOBYTE(v26) = v2;
  BYTE1(v26) = v3;
  BYTE2(v26) = v4;
  WORD2(v26) = v5;
  HIWORD(v26) = v6;
  v27 = v7;
  v15 = sub_26F056D10(&v26);
  if (v16 < 0 || v16 >= v12)
  {
    goto LABEL_22;
  }

  if ((v16 * 48) >> 64 != (48 * v16) >> 63)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!*(v11 + 48 * v16 + 16))
  {
    *&v28 = 0;
    *(&v28 + 1) = 0xE000000000000000;
    v23 = v16;
    sub_26F073F00();
    MEMORY[0x274386C80](0xD00000000000001CLL, 0x800000026F0784F0);
    v26 = v23;
    sub_26F057088();
    v24 = sub_26F073EC0();
    MEMORY[0x274386C80](v24);

    MEMORY[0x274386C80](0x64616220726F6620, 0xEB00000000206567);
    LOBYTE(v26) = v25;
    BYTE1(v26) = v3;
    BYTE2(v26) = v4;
    WORD2(v26) = v5;
    HIWORD(v26) = v6;
    v27 = v7;
    sub_26F073F40();
LABEL_22:
    sub_26F073F50();
    __break(1u);
    return;
  }

  if (v15 < 0 || v15 >= v14)
  {
    goto LABEL_22;
  }

  if (v15 >> 59)
  {
    goto LABEL_15;
  }

  v17 = v13 + 16 * v15;
  if (!*v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  os_unfair_lock_lock(*v17);
  v18 = *(v17 + 8);
  if (*(v18 + 4) << 32 == 0x200000000)
  {
LABEL_18:
    __break(1u);
    goto LABEL_22;
  }

  v19 = *(v18 + 8);
  v20 = __CFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(v18 + 8) = v21;
  v22 = *v17;

  os_unfair_lock_unlock(v22);
}

void sub_26F05659C(char *a1, __int128 *a2, void (*a3)(__int128 *, void))
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *(a1 + 2);
  v8 = *(a1 + 3);
  v9 = *(a1 + 4);
  v10 = a2[3];
  *&v34[16] = a2[2];
  v35 = v10;
  v11 = a2[1];
  v33 = *a2;
  *v34 = v11;
  v12 = *(a2 + 8);
  v13 = *(a2 + 9);
  v14 = *(a2 + 10);
  v15 = *(a2 + 11);
  v41 = *(a2 + 104);
  v16 = *(a2 + 12);
  v42 = *(a2 + 120);
  v36 = v12;
  v37 = v13;
  v38 = v14;
  v39 = v15;
  v40 = v16;
  v28 = v5;
  v29 = v4;
  LOBYTE(v31) = v4;
  BYTE1(v31) = v5;
  BYTE2(v31) = v6;
  WORD2(v31) = v7;
  HIWORD(v31) = v8;
  v32 = v9;
  v17 = sub_26F056D10(&v31);
  if (v18 < 0 || v18 >= v14)
  {
    goto LABEL_18;
  }

  if ((v18 * 48) >> 64 != (48 * v18) >> 63)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v19 = (v13 + 48 * v18);
  v20 = v19[2];
  if (!v20)
  {
    *&v33 = 0;
    *(&v33 + 1) = 0xE000000000000000;
    v26 = v18;
    sub_26F073F00();
    MEMORY[0x274386C80](0xD00000000000001CLL, 0x800000026F0784F0);
    v31 = v26;
    sub_26F057088();
    v27 = sub_26F073EC0();
    MEMORY[0x274386C80](v27);

    MEMORY[0x274386C80](0x64616220726F6620, 0xEB00000000206567);
    LOBYTE(v31) = v29;
    BYTE1(v31) = v28;
    BYTE2(v31) = v6;
    WORD2(v31) = v7;
    HIWORD(v31) = v8;
    v32 = v9;
    sub_26F073F40();
LABEL_18:
    sub_26F073F50();
    __break(1u);
    return;
  }

  if (v17 < 0 || v17 >= v16)
  {
    goto LABEL_18;
  }

  if (v17 >> 59)
  {
    goto LABEL_13;
  }

  v21 = v15 + 16 * v17;
  if (!*v21)
  {
LABEL_14:
    __break(1u);
    goto LABEL_18;
  }

  v22 = *v19;
  v23 = v19[1];
  v24 = v19[5];
  v30 = *(v19 + 3);
  os_unfair_lock_lock(*v21);
  *&v33 = v22;
  *(&v33 + 1) = v23;
  *v34 = v20;
  *&v34[8] = v30;
  *&v34[24] = v24;
  a3(&v33, *(v21 + 8));
  v25 = *v21;

  os_unfair_lock_unlock(v25);
}

uint64_t sub_26F056890(uint64_t result, uint64_t a2)
{
  if (*(a2 + 4) << 32 == 0x200000000)
  {
    __break(1u);
    __break(1u);
    goto LABEL_10;
  }

  if (*(a2 + 8))
  {
    *(a2 + 4) = 1;
    return result;
  }

  v3 = *(result + 40);
  *(a2 + 4) = 0;
  v4 = *(a2 + 32);
  if (v4)
  {
    result = (*(*(a2 + 56) + 24))(v3, *(a2 + 32));
    if (*(a2 + 4) << 32 != 0x200000000)
    {
      result = (*(*(a2 + 56) + 16))(v3, v4);
      if (*(a2 + 4) << 32 != 0x200000000)
      {
        *(a2 + 32) = 0;
        return result;
      }

LABEL_11:
      __break(1u);
      return result;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_26F05694C(char *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = *(a1 + 2);
  v10 = *(a1 + 3);
  v11 = *(a1 + 4);
  v12 = a2[3];
  v38 = a2[2];
  v39 = v12;
  v13 = a2[1];
  v36 = *a2;
  v37 = v13;
  v14 = *(a2 + 8);
  v15 = *(a2 + 9);
  v16 = *(a2 + 10);
  v17 = *(a2 + 11);
  v45 = *(a2 + 104);
  v18 = *(a2 + 12);
  v46 = *(a2 + 120);
  v40 = v14;
  v41 = v15;
  v42 = v16;
  v43 = v17;
  v44 = v18;
  v32 = v7;
  v33 = v6;
  LOBYTE(v34) = v6;
  BYTE1(v34) = v7;
  v31 = v8;
  BYTE2(v34) = v8;
  WORD2(v34) = v9;
  HIWORD(v34) = v10;
  v35 = v11;
  v19 = sub_26F056D10(&v34);
  if (v20 < 0 || v20 >= v16)
  {
    goto LABEL_22;
  }

  if ((v20 * 48) >> 64 != (48 * v20) >> 63)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v21 = v15 + 48 * v20;
  if (!*(v21 + 16))
  {
    *&v36 = 0;
    *(&v36 + 1) = 0xE000000000000000;
    v29 = v20;
    sub_26F073F00();
    MEMORY[0x274386C80](0xD00000000000001CLL, 0x800000026F0784F0);
    v34 = v29;
    sub_26F057088();
    v30 = sub_26F073EC0();
    MEMORY[0x274386C80](v30);

    MEMORY[0x274386C80](0x64616220726F6620, 0xEB00000000206567);
    LOBYTE(v34) = v33;
    BYTE1(v34) = v32;
    BYTE2(v34) = v31;
    WORD2(v34) = v9;
    HIWORD(v34) = v10;
    v35 = v11;
    sub_26F073F40();
LABEL_22:
    result = sub_26F073F50();
    __break(1u);
    return result;
  }

  if (v19 < 0 || v19 >= v18)
  {
    goto LABEL_22;
  }

  if (v19 >> 59)
  {
    goto LABEL_16;
  }

  v22 = (v17 + 16 * v19);
  if (!*v22)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23 = v22[1];
  if (*(v23 + 4) << 32 == 0x200000000)
  {
LABEL_18:
    __break(1u);
    goto LABEL_22;
  }

  v24 = *(v21 + 40);
  v25 = *(v23 + 32);
  v26 = *(*(v23 + 56) + 32);
  if (*(v23 + 40))
  {
    v27 = *(v23 + 48);
  }

  return v26(a3, a4, v24, v25);
}

uint64_t sub_26F056C48(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if ((*a2 & 0xFF00000000) == 0x200000000)
  {
    goto LABEL_11;
  }

  v4 = a2[1];
  v5 = v4 != 0;
  v6 = v4 - 1;
  if (!v5)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    __break(1u);
    goto LABEL_12;
  }

  v7 = *(result + 40);
  a2[1] = v6;
  if ((v2 & 0x100000000) != 0 && !v6)
  {
    *(a2 + 4) = 0;
    v8 = a2[4];
    if (v8)
    {
      result = (*(a2[7] + 24))(v7, a2[4]);
      if (*(a2 + 4) << 32 == 0x200000000)
      {
LABEL_12:
        __break(1u);
        goto LABEL_13;
      }

      result = (*(a2[7] + 16))(v7, v8);
      if (*(a2 + 4) << 32 == 0x200000000)
      {
LABEL_13:
        __break(1u);
        return result;
      }

      a2[4] = 0;
    }
  }

  return result;
}

uint64_t sub_26F056D10(char *a1)
{
  v2 = *(v1 + 96);
  if (v2 < 0)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 2);
  v7 = *(a1 + 3);
  v8 = *(a1 + 4);
  if (v2)
  {
    result = 0;
    v10 = (*(v1 + 88) + 8);
    while (result != 0x800000000000000)
    {
      if (*(v10 - 1))
      {
        v11 = **v10;
        if ((v11 & 0xFF00000000) == 0x200000000)
        {
          goto LABEL_16;
        }

        if (v6 == v11 && v7 == WORD1(v11))
        {
          v13 = (*v10)[2];
          return result;
        }
      }

      ++result;
      v10 += 2;
      if (v2 == result)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_17:
  sub_26F073F00();
  MEMORY[0x274386C80](0xD000000000000028, 0x800000026F078510);
  sub_26F073F40();
  result = sub_26F073F50();
  __break(1u);
  return result;
}

uint64_t sub_26F056EA4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a7 - a6;
  if (!a6)
  {
    v7 = 0;
  }

  if (result < 0 || v7 < result)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (a3 < 0 || v7 < a3)
  {
    goto LABEL_19;
  }

  v8 = a3 - result;
  if (a2 >= 1)
  {
    if (v8 < 0 || v8 >= a2)
    {
      goto LABEL_14;
    }

    return 0;
  }

  if (v8 <= 0 && v8 > a2)
  {
    return 0;
  }

LABEL_14:
  v9 = __OFADD__(result, a2);
  result += a2;
  if (v9)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  if (result < 0 || v7 < result)
  {
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_26F056F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_26F05C278(a1, a3, a6, a7);
  if (a2 >= 1)
  {
    if (v11 < 0 || v11 >= a2)
    {
      goto LABEL_8;
    }

    return 0;
  }

  if (v11 <= 0 && v11 > a2)
  {
    return 0;
  }

LABEL_8:
  result = a1 + a2;
  if (__OFADD__(a1, a2))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  v13 = a7 - a6;
  if (!a6)
  {
    v13 = 0;
  }

  if (result < 0 || v13 < result)
  {
    goto LABEL_15;
  }

  return result;
}

uint64_t *_s9Tightbeam16ComponentRuntimeV4size3forSiAC13ConfigurationV_tFZ_0(uint64_t *result)
{
  v1 = 312 * *result;
  if ((*result * 312) >> 64 != v1 >> 63)
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = result[1];
  v3 = 336 * v2;
  if ((v2 * 336) >> 64 != (336 * v2) >> 63)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v4 = v1 | 5;
  v5 = __OFADD__(v4, v3);
  v6 = v4 + v3;
  if (v5)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result[2];
  v5 = __OFADD__(v6, 16 * v7);
  v8 = v6 + 16 * v7;
  if (v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = __OFADD__(v8, 4 * v7);
  v9 = v8 + 4 * v7;
  if (v5)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v7 - 0x200000000000000) >> 58 != 63)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v5 = __OFADD__(v9, v7 << 6);
  v10 = v9 + (v7 << 6);
  if (v5)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = result[3];
  if ((v11 - 0x1000000000000000) >> 61 != 7)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = (v10 + 8 * v11);
  if (__OFADD__(v10, 8 * v11))
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_26F057088()
{
  result = qword_2806D1278;
  if (!qword_2806D1278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D1278);
  }

  return result;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_26F057110(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 136))
  {
    return (*a1 + 2);
  }

  if (*(a1 + 48))
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_26F057154(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      *(result + 48) = 0;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_26F0571D0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26F0571F0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_26F05722C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 48))
  {
    return (*a1 + 2);
  }

  if (*(a1 + 16))
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_26F057270(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ComponentRuntime.EndpointRegistration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 24))
  {
    return (*a1 + 2);
  }

  if (*(a1 + 8))
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for ComponentRuntime.EndpointRegistration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
    }
  }

  return result;
}

uint64_t sub_26F057394(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D1288, &qword_26F075188);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26F075120;
  sub_26F073F00();

  MEMORY[0x274386C80](a1, a2);
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 32) = 0xD00000000000001ALL;
  *(v4 + 40) = 0x800000026F0786C0;
  sub_26F074030();
}

uint64_t sub_26F0574A4(uint64_t a1)
{
  v29 = sub_26F073C20();
  v2 = *(v29 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v29);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26F073AA0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - v12;
  v14 = *(v7 + 16);
  v14(&v29 - v12, a1, v6);
  result = (*(v7 + 88))(v13, v6);
  if (result == *MEMORY[0x277CD8DE0])
  {
    (*(v7 + 96))(v13, v6);
    v16 = v29;
    (*(v2 + 32))(v5, v13, v29);
    v17 = v30[5];
    v18 = v30[6];
    __swift_project_boxed_opaque_existential_1(v30 + 2, v17);
    (*(v18 + 16))(v5, v17, v18);
    return (*(v2 + 8))(v5, v16);
  }

  else if (result != *MEMORY[0x277CD8DF8])
  {
    if (result == *MEMORY[0x277CD8DD0])
    {
      v19 = v30;
      v20 = v30[7];

      sub_26F073A50();

      v21 = v19[5];
      v22 = v19[6];
      __swift_project_boxed_opaque_existential_1(v19 + 2, v21);
      return (*(v22 + 8))(v19, v21, v22);
    }

    else
    {
      v14(v11, a1, v6);
      v23 = sub_26F073CE0();
      v25 = v24;
      v31 = 0;
      v32 = 0xE000000000000000;
      v26 = v30;
      sub_26F073F00();
      v28 = v26[8];
      v27 = v26[9];

      v31 = v28;
      v32 = v27;
      MEMORY[0x274386C80](0xD00000000000001ALL, 0x800000026F078720);
      MEMORY[0x274386C80](v23, v25);

      sub_26F057394(v31, v32);

      return (*(v7 + 8))(v13, v6);
    }
  }

  return result;
}

uint64_t sub_26F057838(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a2 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    v9 = a1;
  }

  if (a2 >> 60 == 15)
  {
    v10 = 0xC000000000000000;
  }

  else
  {
    v10 = a2;
  }

  v11 = a6[5];
  v12 = a6[6];
  __swift_project_boxed_opaque_existential_1(a6 + 2, v11);
  v13 = *(v12 + 24);
  sub_26F058850(a1, a2);
  v13(a6, v9, v10, v11, v12);
  v14 = a6[7];

  sub_26F073A50();

  return sub_26F0588B8(v9, v10);
}

uint64_t sub_26F057928(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D1290, &unk_26F075190);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = sub_26F073C20();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F057BE4(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_26F057C54(v7);
  }

  (*(v9 + 32))(v12, v7, v8);
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_26F073F00();
  MEMORY[0x274386C80](0xD00000000000001ALL, 0x800000026F0786E0);
  MEMORY[0x274386C80](*(a2 + 64), *(a2 + 72));
  MEMORY[0x274386C80](0xD00000000000001ALL, 0x800000026F078700);
  sub_26F073F40();
  sub_26F057394(v14, v15);

  return (*(v9 + 8))(v12, v8);
}