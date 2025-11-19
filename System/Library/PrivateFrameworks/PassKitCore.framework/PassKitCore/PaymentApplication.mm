@interface PaymentApplication
+ (id)_propertySettersForPaymentApplication;
@end

@implementation PaymentApplication

+ (id)_propertySettersForPaymentApplication
{
  v4[0] = @"aid";
  v4[1] = @"transaction_source.identifier";
  v5[0] = &stru_100856A58;
  v5[1] = &stru_100856A78;
  v4[2] = @"seid";
  v4[3] = @"dpan_id";
  v5[2] = &stru_100856A98;
  v5[3] = &stru_100856AB8;
  v4[4] = @"dpan_suffix";
  v4[5] = @"sanitized_dpan";
  v5[4] = &stru_100856AD8;
  v5[5] = &stru_100856AF8;
  v4[6] = @"state";
  v4[7] = @"suspended_reason";
  v5[6] = &stru_100856B18;
  v5[7] = &stru_100856B38;
  v4[8] = @"supports_contactless_payment";
  v4[9] = @"supports_in_app_payment";
  v5[8] = &stru_100856B58;
  v5[9] = &stru_100856B78;
  v4[10] = @"c";
  v4[11] = @"f";
  v5[10] = &stru_100856B98;
  v5[11] = &stru_100856BB8;
  v4[12] = @"m";
  v4[13] = @"d";
  v5[12] = &stru_100856BD8;
  v5[13] = &stru_100856BF8;
  v4[14] = @"e";
  v4[15] = @"h";
  v5[14] = &stru_100856C18;
  v5[15] = &stru_100856C38;
  v4[16] = @"i";
  v4[17] = @"l";
  v5[16] = &stru_100856C58;
  v5[17] = &stru_100856C78;
  v4[18] = @"j";
  v4[19] = @"n";
  v5[18] = &stru_100856C98;
  v5[19] = &stru_100856CB8;
  v4[20] = @"b";
  v4[21] = @"supports_optional_authentication";
  v5[20] = &stru_100856CD8;
  v5[21] = &stru_100856CF8;
  v4[22] = @"applet_data_format";
  v4[23] = @"applet_currency_code";
  v5[22] = &stru_100856D18;
  v5[23] = &stru_100856D38;
  v4[24] = @"requires_deferred_authorization";
  v4[25] = @"payment_network_identifier";
  v5[24] = &stru_100856D58;
  v5[25] = &stru_100856D78;
  v4[26] = @"in_app_pin_required_amount";
  v4[27] = @"in_app_pin_required_currency";
  v5[26] = &stru_100856D98;
  v5[27] = &stru_100856DB8;
  v4[28] = @"auxiliary_application";
  v4[29] = @"payment_type";
  v5[28] = &stru_100856DD8;
  v5[29] = &stru_100856DF8;
  v4[30] = @"auxiliary_payment_type";
  v4[31] = @"contactless_priority";
  v5[30] = &stru_100856E18;
  v5[31] = &stru_100856E38;
  v4[32] = @"in_app_priority";
  v4[33] = @"supports_instant_funds_in";
  v5[32] = &stru_100856E58;
  v5[33] = &stru_100856E78;
  v4[34] = @"funding_source_payment_type";
  v4[35] = @"g";
  v5[34] = &stru_100856E98;
  v5[35] = &stru_100856EB8;
  v4[36] = @"display_name";
  v4[37] = @"supports_service_mode";
  v5[36] = &stru_100856ED8;
  v5[37] = &stru_100856EF8;
  v4[38] = @"k";
  v4[39] = @"o";
  v5[38] = &stru_100856F18;
  v5[39] = &stru_100856F38;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:40];

  return v2;
}

@end